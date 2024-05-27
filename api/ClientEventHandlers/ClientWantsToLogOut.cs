using api.Helpers;
using api.Repositories;
using api.Security;
using api.ServerEvents;
using api.State;
using Fleck;
using lib;

namespace api.ClientEventHandlers;

public class ClientWantsToLogOutDto : BaseDto
{
}

public class ClientWantsToLogOut(
        UserRepository userRepository,
        TokenService tokenService,
        CredentialService credentialService)
    : BaseEventHandler<ClientWantsToLogOutDto>
{
    public override Task Handle(ClientWantsToLogOutDto request, IWebSocketConnection socket)
    {
        var client = WebSocketStateService.GetClient(socket.ConnectionInfo.Id);
        client.IsAuthenticated = false;
        client.User = null;
        
        socket.SendDto(new ServerLogsOutUser());
        return Task.CompletedTask;
    }
}