using System.ComponentModel.DataAnnotations;
using System.Security.Authentication;
using api.ClientEventFilters;
using api.Helpers;
using api.Models.ParameterModels;
using api.Repositories;
using api.Security;
using api.ServerEvents;
using api.State;
using Fleck;
using lib;

namespace api.ClientEventHandlers;


public class ClientWantsToAuthenticateWithJwtDto : BaseDto
{
    [Required] public string? jwt { get; set; }
}

[ValidateDataAnnotations]
public class ClientWantsToAuthenticateWithJwt(
        UserRepository userRepository,
        TokenService tokenService)
    : BaseEventHandler<ClientWantsToAuthenticateWithJwtDto>
{
    public override async Task Handle(ClientWantsToAuthenticateWithJwtDto dto, IWebSocketConnection socket)
    {
        var claims = tokenService.ValidateJwtAndReturnClaims(dto.jwt!);
        var user = userRepository.GetUser(new FindByEmailParams(claims["email"]));

        WebSocketStateService.GetClient(socket.ConnectionInfo.Id).User = user;
        WebSocketStateService.GetClient(socket.ConnectionInfo.Id).IsAuthenticated = true;
        socket.SendDto(new ServerAuthenticatesUserFromJwt());
    }
}