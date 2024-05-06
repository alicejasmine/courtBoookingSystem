using lib;

namespace api.ServerEvents;


public class ServerAuthenticatesUser : BaseDto
{
    public string? jwt { get; set; }
    public int userId { get; set; }
}