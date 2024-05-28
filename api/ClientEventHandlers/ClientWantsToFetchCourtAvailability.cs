using System.ComponentModel.DataAnnotations;
using api.ClientEventFilters;
using api.Helpers;
using api.Repositories;
using api.ServerEvents;
using api.State;
using Fleck;
using lib;
using Serilog;


namespace api.ClientEventHandlers;

public class ClientWantsToFetchCourtAvailabilityDto : BaseDto
{
    [Required] public DateTime selectedDate { get; set; }
}

[RequireAuthentication]
[ValidateDataAnnotations]
public class ClientWantsToFetchCourtAvailability(
    CourtAvailabilityRepository courtAvailabilityRepository) : BaseEventHandler<ClientWantsToFetchCourtAvailabilityDto>
{
    public override Task Handle(ClientWantsToFetchCourtAvailabilityDto dto, IWebSocketConnection socket)
    {
        try
        {
            socket.SendDto(new ServerSendsCourtAvailabilityToClient
            {
                courtAvailability = courtAvailabilityRepository.GetAvailableCourts(dto.selectedDate),
            });
        }   catch (Exception e)
        {
            Log.Error(e, "Error fetching available courts.");
            socket.SendDto(new ServerSendsErrorMessageToClient
            {
                errorMessage = "An error occurred while fetching available courts. Please try again later."
            });
        }

        return Task.CompletedTask;
    }
}