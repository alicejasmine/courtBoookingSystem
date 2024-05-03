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

    public CourtBooking CreateCourtBooking(CourtBooking booking)
    {
        using var conn = _dataSource.OpenConnection();

        return conn.QueryFirst<CourtBooking>($@"
        INSERT INTO booking_system.bookings (court_id, user_id, date, start_time, end_time, creation_time) 
        VALUES (@{nameof(booking.CourtId)}, @{nameof(booking.UserId)}, @{nameof(booking.SelectedDate)}, @{nameof(booking.StartTime)}, @{nameof(booking.EndTime)}, @{nameof(booking.CreationTime)})
        RETURNING court_id AS {nameof(CourtBooking.CourtId)}, user_id AS {nameof(CourtBooking.UserId)}, date AS {nameof(CourtBooking.SelectedDate)}, start_time AS {nameof(CourtBooking.StartTime)}, end_time AS {nameof(CourtBooking.EndTime)}, creation_time AS {nameof(CourtBooking.CreationTime)}",
            booking);
    }
}