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
WHERE booking_system.court_availability.date =  @selectedDate", new { selectedDate });

    }
    
    public void UpdateCourtAvailability(int dtoCourtId, DateTime dtoSelectedDate, TimeSpan dtoStartTime, TimeSpan dtoEndTime, bool b)
    {
        throw new NotImplementedException();
    }

    public bool IsCourtAvailable(int dtoCourtId, DateTime dtoSelectedDate, TimeSpan dtoStartTime, TimeSpan dtoEndTime)
    {
        throw new NotImplementedException();
    }
}