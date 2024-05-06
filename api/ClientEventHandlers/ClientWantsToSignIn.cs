using System.Security.Authentication;
using api.Helpers;
using api.Models.ParameterModels;
using api.Repositories;
using api.Security;
using api.ServerEvents;
using api.State;
using Fleck;
using lib;

namespace api.ClientEventHandlers;

public class ClientWantsToSignInDto : BaseDto
{
    public string email { get; set; }

    public string password { get; set; }
}

public class ClientWantsToAuthenticate(
    UserRepository userRepository,
    TokenService tokenService,
    CredentialService credentialService)
    : BaseEventHandler<ClientWantsToSignInDto>
{
    public override Task Handle(ClientWantsToSignInDto request, IWebSocketConnection socket)
    {

        var user = userRepository.GetUser(new FindByEmailParams(request.email!));

        var expectedHash = credentialService.Hash(request.password!, user.Salt!);
        if (!expectedHash.Equals(user.Hash)) throw new AuthenticationException("Wrong credentials!");
        WebSocketStateService.GetClient(socket.ConnectionInfo.Id).IsAuthenticated = true;
        WebSocketStateService.GetClient(socket.ConnectionInfo.Id).User = user;
        socket.SendDto(new ServerAuthenticatesUser { jwt = tokenService.IssueJwt(user),userId = user.Id });
        return Task.CompletedTask;
    }
}