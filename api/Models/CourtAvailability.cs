namespace api.Models;

public class CourtAvailability
{ //courtAvailability table + court_id and without date
    public int court_id  { get; set; }
    public int court_number { get; set; }
    public TimeSpan startTime { get; set; }
    public TimeSpan endTime { get; set; }
    
}