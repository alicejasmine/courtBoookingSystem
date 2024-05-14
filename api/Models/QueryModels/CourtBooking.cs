namespace api.Models;

public class CourtBooking
{
    public int bookingId { get; set; }
    public int courtId { get; set; }
    public int userId { get; set; }
    public DateTime selectedDate { get; set; }
    public TimeSpan startTime { get; set; }
    public TimeSpan endTime { get; set; }
    public DateTime creationTime { get; set; }
}