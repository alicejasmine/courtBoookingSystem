using System.ComponentModel.DataAnnotations;
using api.Models;
using lib;

namespace api.ServerEvents;

public class ServerSendsUserBookingsToClient:BaseDto
{
    [Required] public IEnumerable<CourtBooking> userBookings { get; set; }
}