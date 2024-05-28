using lib;

namespace api.ServerEvents;

public class ServerSendsConfirmationMessageToClient:BaseDto
{
    public string confirmationMessage { get; set; }
     
}