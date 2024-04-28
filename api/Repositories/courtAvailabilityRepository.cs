using api.Models;
using api.Security;
using Dapper;
using Npgsql;

namespace api.Repositories;

public class courtAvailabilityRepository (NpgsqlDataSource source, CredentialService credentialService)
{
    public static string ProperlyFormattedConnectionString(Uri uri) => string.Format(
        "Server={0};Database={1};User Id={2};Password={3};Port={4};Pooling=false;",
        uri.Host,
        uri.AbsolutePath.Trim('/'),
        uri.UserInfo.Split(':')[0],
        uri.UserInfo.Split(':')[1],
        uri.Port > 0 ? uri.Port : 5432);
    
    public IEnumerable<CourtAvailability> GetAvailableCourts(DateTime selectedDate)
    {
        using var conn = source.OpenConnection();
        return conn.Query<CourtAvailability>(@$"
SELECT 
     court_availability.court_id as {nameof(CourtAvailability.court_id)},
     court_number as {nameof(CourtAvailability.court_number)},
     start_time as {nameof(CourtAvailability.startTime)}, 
    end_time as {nameof(CourtAvailability.endTime)}
   
FROM booking_system.court_availability
JOIN booking_system.courts c on c.court_id = court_availability.court_id
WHERE booking_system.court_availability.date =  @selectedDate", new { selectedDate });

    }
}