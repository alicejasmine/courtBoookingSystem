using api.ClientEventHandlers;
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
            conn.Execute("DROP TABLE IF EXISTS booking_system.users;");

            //recreate tables that were dropped
            conn.Execute(@"
            CREATE TABLE booking_system.courts (
                court_id SERIAL PRIMARY KEY,
                court_number INTEGER NOT NULL UNIQUE
            );");

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
                    CREATE TABLE booking_system.users (
                        user_id SERIAL PRIMARY KEY,
                        email TEXT NOT NULL,
                        hash TEXT NOT NULL,
                        salt TEXT NOT NULL
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

           


            //insert initial data about courts available
            InsertInitialData();
        }
    }

    private static void InsertInitialData()
    {
        using (var conn = DataSource.OpenConnection())
        {
            conn.Execute(@"
            INSERT INTO booking_system.court_availability (court_id, date, start_time, end_time, is_available)
            VALUES
                (4, '2024-06-01', '09:00:00', '10:00:00', true),
                (4, '2024-06-01', '12:00:00', '13:00:00', true),
                (4, '2024-06-02', '12:00:00', '13:00:00', true),
                (4, '2024-05-02', '09:00:00', '10:00:00', true),
                (4, '2024-06-03', '12:00:00', '13:00:00', true),
                (4, '2024-06-03', '09:00:00', '10:00:00', true),
                (4, '2024-06-04', '12:00:00', '13:00:00', true),
                (4, '2024-06-04', '09:00:00', '10:00:00', true),
               (4, '2024-06-05', '09:00:00', '10:00:00', true),
                (4, '2024-06-06', '09:00:00', '10:00:00', true),
                (4, '2024-06-06', '11:00:00', '12:00:00', true),
                (4, '2024-06-07', '09:00:00', '10:00:00', true),
                (4, '2024-06-07', '11:00:00', '12:00:00', true),
                (3, '2024-06-01', '09:00:00', '10:00:00', true),
                (3, '2024-06-01', '12:00:00', '13:00:00', true),
                (3, '2024-06-02', '12:00:00', '13:00:00', true),
                (3, '2024-05-02', '09:00:00', '10:00:00', true),
                (3, '2024-06-03', '12:00:00', '13:00:00', true),
                (3, '2024-06-03', '09:00:00', '10:00:00', true),
                (3, '2024-06-04', '12:00:00', '13:00:00', true),
                (3, '2024-06-04', '09:00:00', '10:00:00', true),
               (3, '2024-06-05', '09:00:00', '10:00:00', true),
                (3, '2024-06-06', '09:00:00', '10:00:00', true),
                (3, '2024-06-06', '11:00:00', '12:00:00', true),
                (3, '2024-06-07', '09:00:00', '10:00:00', true),
                (3, '2024-06-07', '11:00:00', '12:00:00', true),
               (2, '2024-06-01', '09:00:00', '10:00:00', true),
                (2, '2024-06-01', '12:00:00', '13:00:00', true),
                (2, '2024-06-02', '12:00:00', '13:00:00', true),
                (2, '2024-05-02', '09:00:00', '10:00:00', true),
                (2, '2024-06-03', '12:00:00', '13:00:00', true),
                (2, '2024-06-03', '09:00:00', '10:00:00', true),
                (2, '2024-06-04', '12:00:00', '13:00:00', true),
                (2, '2024-06-04', '09:00:00', '10:00:00', true),
               (2, '2024-06-05', '09:00:00', '10:00:00', true),
                (2, '2024-06-06', '09:00:00', '10:00:00', true),
               (1, '2024-06-01', '09:00:00', '10:00:00', true),
                (1, '2024-06-01', '12:00:00', '13:00:00', true),
                (1, '2024-06-02', '12:00:00', '13:00:00', true),
                (1, '2024-05-02', '09:00:00', '10:00:00', true),
                (1, '2024-06-03', '12:00:00', '13:00:00', true),
                (1, '2024-06-03', '09:00:00', '10:00:00', true),
                (1, '2024-06-04', '12:00:00', '13:00:00', true),
                (1, '2024-06-04', '09:00:00', '10:00:00', true),
                  (1, '2024-06-05', '09:00:00', '10:00:00', true),
                (1, '2024-06-06', '09:00:00', '10:00:00', true),                              
                (1, CURRENT_DATE, '16:00:00', '17:00:00', true),
                (1, CURRENT_DATE, '18:00:00', '19:00:00', true);
        ");

            conn.Execute(@"
            INSERT INTO booking_system.courts (court_id, court_number)
            VALUES
                (1,1),(2,2),(3,3),(4,4)");

            conn.Execute(@"
           INSERT INTO booking_system.users (user_id, email, hash, salt)
VALUES
    (1, 'alice@gmail.com', '47dqlmlgT46QfjQPyAVb2RfzLRtn8lznzeNS1hXixms=', 'deW59qV/HrFfRM3ui8U2Tw=='),
    (16, 'bla@gmail.com', 'ux0ou2lf9CkfK1OZ4UUiRe+bJ1W/tJRinKKFcUKuUwc=', 'JmEtKjnCHFvO1P1jGmFbCw=='),
    (17, 'test@gmail.com', 'U7sIL4rBZgjkRrWBWcc0QkOiFM89716rw9U9eIcq3Cc=', 'K/9g+E9oc2rEFI2MjS1LhQ==');");
        }
    }

    public static int GetBookingIdFromDatabase(ClientWantsToBookCourtDto courtBookingDto)
    {
        using (var conn = DataSource.OpenConnection())
        {
            var sql = @"
            SELECT booking_id
            FROM booking_system.court_bookings
            WHERE court_id = @CourtId
            AND user_id = @UserId
            AND date = @SelectedDate
            AND start_time = @StartTime
            AND end_time = @EndTime";

            return conn.Query<int>(sql, courtBookingDto).FirstOrDefault();
        }
    }
}