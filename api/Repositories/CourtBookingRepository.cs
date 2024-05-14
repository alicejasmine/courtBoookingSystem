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
            var result = conn.QueryFirst<CourtBooking>($@"
        INSERT INTO booking_system.court_bookings (court_id, user_id, date, start_time, end_time, creation_time) 
        VALUES (@{nameof(booking.courtId)}, @{nameof(booking.userId)}, @{nameof(booking.selectedDate)}, @{nameof(booking.startTime)}, @{nameof(booking.endTime)}, @{nameof(booking.creationTime)})
        RETURNING court_id AS {nameof(CourtBooking.courtId)}, user_id AS {nameof(CourtBooking.userId)}, date AS {nameof(CourtBooking.selectedDate)}, start_time AS {nameof(CourtBooking.startTime)}, end_time AS {nameof(CourtBooking.endTime)}, creation_time AS {nameof(CourtBooking.creationTime)}",
                booking);

            UpdateCourtAvailability(booking.courtId, booking.selectedDate, booking.startTime, booking.endTime, false);

            transaction.Commit();
            return result;
        }
        catch (Exception e)
        {
            transaction.Rollback();
            throw new Exception("Failed to create court booking.", e);
        }
    }


    public void UpdateCourtAvailability(int courtId, DateTime selectedDate, TimeSpan startTime, TimeSpan endTime,
        bool isAvailable)
    {
        using var conn = _dataSource.OpenConnection();

        conn.Execute(@"
        UPDATE booking_system.court_availability
        SET is_available = @IsAvailable
        WHERE court_id = @CourtId
        AND date = @SelectedDate
        AND start_time = @StartTime
        AND end_time = @EndTime",
            new
            {
                CourtId = courtId, SelectedDate = selectedDate, StartTime = startTime, EndTime = endTime,
                IsAvailable = isAvailable
            });
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

    //delete booking from court_bookings table + update availability in one transaction
    public void DeleteCourtBooking(int bookingId)
    {
        using var conn = _dataSource.OpenConnection();

        using var transaction = conn.BeginTransaction();
        try
        {
            var booking = conn.QueryFirstOrDefault<CourtBooking>(@"
            SELECT court_id AS CourtId, date AS SelectedDate, start_time AS StartTime, end_time AS EndTime
            FROM booking_system.court_bookings
            WHERE booking_id = @BookingId", new { BookingId = bookingId });

            if (booking != null)
            {
                string sql = "DELETE FROM booking_system.court_bookings WHERE booking_id = @BookingId";
                conn.Execute(sql, new { BookingId = bookingId });

                //Update availability to true (court is available after deletion)
                UpdateCourtAvailability(booking.courtId, booking.selectedDate, booking.startTime, booking.endTime,
                    true);

                transaction.Commit();
            }
        }
        catch (Exception e)
        {
            transaction.Rollback();
            throw new Exception("Failed to delete court booking.", e);
        }
    }
}