namespace api.Models;

public class CourtBooking
{
    public int BookingId { get; set; }
    public int CourtId { get; set; }
    public int UserId { get; set; }
    public DateTime Date { get; set; }
    public TimeSpan StartTime { get; set; }
    public TimeSpan EndTime { get; set; }
    public DateTime CreationTime { get; set; }
}