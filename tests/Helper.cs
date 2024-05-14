using Dapper;
using Npgsql;

namespace tests;

public class Helper
{
    public static readonly NpgsqlDataSource DataSource;


    static Helper()
    {
        var envVarKeyName = "PG_CONN";

        var rawConnectionString = Environment.GetEnvironmentVariable(envVarKeyName)!;
        if (rawConnectionString == null)
        {
            throw new Exception($@"The PG_CONN is empty.");
        }

        try
        {
            var uri = new Uri(rawConnectionString);
            var properlyFormattedConnectionString = string.Format(
                "Server={0};Database={1};User Id={2};Password={3};Port={4};Pooling=false;",
                uri.Host,
                uri.AbsolutePath.Trim('/'),
                uri.UserInfo.Split(':')[0],
                uri.UserInfo.Split(':')[1],
                uri.Port > 0 ? uri.Port : 5432);
            DataSource =
                new NpgsqlDataSourceBuilder(properlyFormattedConnectionString).Build();
            DataSource.OpenConnection().Close();
        }
        catch (Exception e)
        {
            throw new Exception($@"The connection string is found, but could not be used.", e);
        }
    }

    public static void RebuildDatabase(string? alternativeConnectionString = null)
    {
        using (var conn = DataSource.OpenConnection())
        {
            //drop tables 
            conn.Execute("DROP TABLE IF EXISTS booking_system.court_availability;");
            conn.Execute("DROP TABLE IF EXISTS booking_system.court_bookings;");
            conn.Execute("DROP TABLE IF EXISTS booking_system.courts;");


            conn.Execute(@"
            CREATE TABLE booking_system.courts (
                court_id SERIAL PRIMARY KEY,
                court_number INTEGER NOT NULL UNIQUE
            );");

            //recreate tables that were dropped
            conn.Execute(@"
                    CREATE TABLE booking_system.court_availability (
                        court_id INTEGER NOT NULL,
                        date DATE NOT NULL,
                        start_time TIME NOT NULL,
                        end_time TIME NOT NULL,
                        is_available BOOLEAN NOT NULL,
                        PRIMARY KEY (court_id, date, start_time, end_time)
                    );");
            conn.Execute(@"
                    CREATE TABLE booking_system.court_bookings (
                        booking_id SERIAL PRIMARY KEY,
                        court_id INTEGER NOT NULL REFERENCES booking_system.courts(court_id),
                        user_id INTEGER NOT NULL REFERENCES booking_system.users(user_id),
                        date DATE NOT NULL,
                        start_time TIME NOT NULL,
                        end_time TIME NOT NULL,
                        creation_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                        FOREIGN KEY (court_id) REFERENCES booking_system.courts(court_id)
                    );");
        }

        //insert initial data about courts available
        InsertInitialData();
    }

    private static void InsertInitialData()
    {
        using (var conn = DataSource.OpenConnection())
        {
            conn.Execute(@"
            INSERT INTO booking_system.court_availability (court_id, date, start_time, end_time, is_available)
            VALUES
                (4, '2024-05-15', '09:00:00', '10:00:00', true),
                (4, '2024-05-15', '12:00:00', '13:00:00', true),
                (2, '2024-05-08', '12:00:00', '13:00:00', true),
                (3, '2024-05-16', '09:00:00', '10:00:00', true),
                (1, '2024-05-08', '16:00:00', '17:00:00', true),
                (1, '2024-05-08', '15:00:00', '16:00:00', true),
                (2, '2024-05-11', '15:00:00', '16:00:00', true),
                (2, '2024-05-10', '13:00:00', '14:00:00', true),
                (4, '2024-05-19', '10:00:00', '11:00:00', true),
                (3, '2024-05-16', '12:00:00', '13:00:00', true);
        ");

            conn.Execute(@"
            INSERT INTO booking_system.courts (court_id, court_number)
            VALUES
                (1,1),(2,2),(3,3),(4,4)");
        }
    }
}