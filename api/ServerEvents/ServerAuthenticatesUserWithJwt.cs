using lib;

namespace api.ServerEvents;

public class ServerAuthenticatesUserWithJwt : BaseDto
{
  public string? jwt { get; set; }
  public int userId { get; set; }
}