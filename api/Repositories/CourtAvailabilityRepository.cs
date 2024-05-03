using api.Models;
using api.Security;
using Dapper;
using Npgsql;

namespace api.Repositories;

public class CourtAvailabilityRepository
{
    private NpgsqlDataSource _dataSource;

    public CourtAvailabilityRepository(NpgsqlDataSource dataSource)
    {
        _dataSource = dataSource;
    }


    public IEnumerable<CourtAvailability> GetAvailableCourts(DateTime selectedDate)
    {
        using var conn = _dataSource.OpenConnection();
        return conn.Query<CourtAvailability>(@$"
SELECT 
     court_availability.court_id as {nameof(CourtAvailability.courtId)},
     court_number as {nameof(CourtAvailability.courtNumber)},
     start_time as {nameof(CourtAvailability.startTime)}, 
    end_time as {nameof(CourtAvailability.endTime)}
   
FROM booking_system.court_availability
JOIN booking_system.courts c on c.court_id = court_availability.court_id
WHERE booking_system.court_availability.date =  @selectedDate
AND booking_system.court_availability.is_available='true'
", new { selectedDate });
    }

  

    public bool IsCourtAvailable(int courtId, DateTime selectedDate, TimeSpan startTime, TimeSpan endTime)
    {
        using var conn = _dataSource.OpenConnection();
        var isAvailable = conn.QueryFirstOrDefault<bool>(@"
        SELECT is_available
        FROM booking_system.court_availability
        WHERE court_id = @CourtId
          AND date = @SelectedDate
          AND start_time = @StartTime
          AND end_time = @EndTime",
            new { CourtId = courtId, SelectedDate = selectedDate, StartTime = startTime, EndTime = endTime });

        return isAvailable;
    }
}