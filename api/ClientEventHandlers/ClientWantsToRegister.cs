
using System.ComponentModel.DataAnnotations;
using api.ClientEventFilters;
using api.Helpers;
using api.Models.ParameterModels;
using api.Repositories;
using api.Security;
using api.ServerEvents;
using api.State;
using Fleck;
using lib;
using Serilog;

public class ClientWantsToRegisterDto : BaseDto
{
    [EmailAddress] public string email { get; set; }

    [MinLength(6)] public string password { get; set; }
}

[ValidateDataAnnotations]
public class ClientWantsToRegister(
    UserRepository userRepository,
    CredentialService credentialService,
    TokenService tokenService
) : BaseEventHandler<ClientWantsToRegisterDto>
{
    public override Task Handle(ClientWantsToRegisterDto dto, IWebSocketConnection socket)
    {
        try
        {
            if (userRepository.DoesUserAlreadyExist(new FindByEmailParams(dto.email)))
                throw new ValidationException("User with this email already exists");
            var salt = credentialService.GenerateSalt();
            var hash = credentialService.Hash(dto.password, salt);
            var user = userRepository.InsertUser(new InsertUserParams(dto.email, hash, salt));
            WebSocketStateService.GetClient(socket.ConnectionInfo.Id).User = user;
            socket.SendDto(new ServerSendsConfirmationMessageToClient
                { confirmationMessage = "Registration successful" });
        }
        catch (Exception e)
        {
            Log.Error(e, "An error occurred while registering.");
            socket.SendDto(new ServerSendsErrorMessageToClient
            {
                errorMessage = "An error occurred with registration."
            });
        }

        return Task.CompletedTask;
    }
}