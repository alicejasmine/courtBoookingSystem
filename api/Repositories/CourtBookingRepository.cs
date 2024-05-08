using api.Models;
using api.Models.ParameterModels;
using Dapper;
using Npgsql;

namespace api.Repositories;

public class CourtBookingRepository
{
    private NpgsqlDataSource _dataSource;

    public CourtBookingRepository(NpgsqlDataSource dataSource)
    {
        _dataSource = dataSource;
    }

    //Create booking and updates availability in a single transaction
    
    public CourtBooking CreateCourtBooking(CourtBooking booking)
    {
        using var conn = _dataSource.OpenConnection();
        using var transaction = conn.BeginTransaction();
        try
        {
            var result =  conn.QueryFirst<CourtBooking>($@"
        INSERT INTO booking_system.court_bookings (court_id, user_id, date, start_time, end_time, creation_time) 
        VALUES (@{nameof(booking.courtId)}, @{nameof(booking.userId)}, @{nameof(booking.selectedDate)}, @{nameof(booking.startTime)}, @{nameof(booking.endTime)}, @{nameof(booking.creationTime)})
        RETURNING court_id AS {nameof(CourtBooking.courtId)}, user_id AS {nameof(CourtBooking.userId)}, date AS {nameof(CourtBooking.selectedDate)}, start_time AS {nameof(CourtBooking.startTime)}, end_time AS {nameof(CourtBooking.endTime)}, creation_time AS {nameof(CourtBooking.creationTime)}",
                booking);
            
            UpdateCourtAvailability(booking.courtId, booking.selectedDate, booking.startTime, booking.endTime);

            transaction.Commit();
            return result;

        }
        catch(Exception e)
        {transaction.Rollback(); 
            throw new Exception("Failed to create court booking.", e);
        }
    }
    
    
    
    public void UpdateCourtAvailability(int courtId, DateTime selectedDate, TimeSpan startTime, TimeSpan endTime)
    {
        using var conn = _dataSource.OpenConnection();

        conn.Execute(@"
        UPDATE booking_system.court_availability
        SET is_available = false
        WHERE court_id = @CourtId
        AND date = @SelectedDate
        AND start_time = @StartTime
        AND end_time = @EndTime",
            new { CourtId = courtId, SelectedDate = selectedDate, StartTime = startTime, EndTime = endTime });
    }

    public IEnumerable<CourtBookingWithCourtNumber> GetBookingsByUserId(int userId)
    {
        using var conn = _dataSource.OpenConnection();
        
        string sql = $@"
        SELECT 
            booking_id AS {nameof(CourtBookingWithCourtNumber.bookingId)},
           court_bookings.court_id AS {nameof(CourtBookingWithCourtNumber.courtId)},
            user_id AS {nameof(CourtBookingWithCourtNumber.userId)},
            date AS {nameof(CourtBookingWithCourtNumber.selectedDate)},
            start_time AS {nameof(CourtBookingWithCourtNumber.startTime)},
            end_time AS {nameof(CourtBookingWithCourtNumber.endTime)},
            creation_time AS {nameof(CourtBookingWithCourtNumber.creationTime)}, 
            court_number AS {nameof(CourtBookingWithCourtNumber.courtNumber)}
        FROM 
            booking_system.court_bookings 
    
JOIN booking_system.courts c on c.court_id = court_bookings.court_id
        WHERE user_id = @userId";
        
return conn.Query<CourtBookingWithCourtNumber>(sql, new { userId }).AsList();

       
    }
}