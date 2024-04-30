namespace api.Models;

public class CourtAvailability
{ //courtAvailability table + court_id and without date
    public int courtId  { get; set; }
    public int courtNumber { get; set; }
    public TimeSpan startTime { get; set; }
    public TimeSpan endTime { get; set; }
    
}