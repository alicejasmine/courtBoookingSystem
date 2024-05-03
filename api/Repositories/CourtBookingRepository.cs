using api.Models;
using Npgsql;

namespace api.Repositories;

public class CourtBookingRepository
{
    private NpgsqlDataSource _dataSource;

    public CourtBookingRepository(NpgsqlDataSource dataSource)
    {
        _dataSource = dataSource;
    }
    public void CreateCourtBooking(CourtBooking booking)
    {
        using var conn = _dataSource.OpenConnection();
    }
}