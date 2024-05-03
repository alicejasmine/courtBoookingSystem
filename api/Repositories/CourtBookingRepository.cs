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
        INSERT INTO booking_system.bookings (court_id, user_id, date, start_time, end_time, creation_time) 
        VALUES (@{nameof(booking.CourtId)}, @{nameof(booking.UserId)}, @{nameof(booking.SelectedDate)}, @{nameof(booking.StartTime)}, @{nameof(booking.EndTime)}, @{nameof(booking.CreationTime)})
        RETURNING court_id AS {nameof(CourtBooking.CourtId)}, user_id AS {nameof(CourtBooking.UserId)}, date AS {nameof(CourtBooking.SelectedDate)}, start_time AS {nameof(CourtBooking.StartTime)}, end_time AS {nameof(CourtBooking.EndTime)}, creation_time AS {nameof(CourtBooking.CreationTime)}",
                booking);
            
            UpdateCourtAvailability(booking.CourtId, booking.SelectedDate, booking.StartTime, booking.EndTime);

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
}