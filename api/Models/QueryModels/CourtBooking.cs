namespace api.Models;

public class CourtBooking
{
    public int BookingId { get; set; }
    public int CourtId { get; set; }
    public int UserId { get; set; }
    public DateTime SelectedDate { get; set; }
    public TimeSpan StartTime { get; set; }
    public TimeSpan EndTime { get; set; }
    public DateTimeOffset CreationTime { get; set; }
}