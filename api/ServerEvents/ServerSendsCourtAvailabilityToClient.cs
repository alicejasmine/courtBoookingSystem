using api.Models;
using lib;

namespace api.ServerEvents;

public class ServerSendsCourtAvailabilityToClient:BaseDto
{
    public IEnumerable<CourtAvailability> courtAvailability { get; set; }
}