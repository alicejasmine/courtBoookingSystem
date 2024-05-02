using lib;

namespace api.ServerEvents;

public class ServerSendsBookingConfirmation:BaseDto
{
    public int BookingId { get; set; }
    public int CourtId { get; set; }
    public int UserId { get; set; }
    public DateTime Date { get; set; }
    public TimeSpan StartTime { get; set; }
    public TimeSpan EndTime { get; set; }
    public string ConfirmationMessage { get; set; }
}