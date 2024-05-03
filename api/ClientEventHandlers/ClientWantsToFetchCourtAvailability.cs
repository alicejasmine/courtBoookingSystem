
using System.ComponentModel.DataAnnotations;
using api.ClientEventFilters;
using api.Helpers;
using api.Repositories;
using api.ServerEvents;
using api.State;
using Fleck;
using lib;


namespace api.ClientEventHandlers;

public class ClientWantsToFetchCourtAvailabilityDto : BaseDto
{
    [Required]  public DateTime selectedDate  { get; set; }
}

[RequireAuthentication]
[ValidateDataAnnotations]
public class ClientWantsToFetchCourtAvailability(
    CourtAvailabilityRepository courtAvailabilityRepository) : BaseEventHandler<ClientWantsToFetchCourtAvailabilityDto>
{
    public override Task Handle(ClientWantsToFetchCourtAvailabilityDto dto, IWebSocketConnection socket)
    {
        socket.SendDto(new ServerSendsCourtAvailabilityToClient
        {
            courtAvailability = courtAvailabilityRepository.GetAvailableCourts(dto.selectedDate),
        });
        return Task.CompletedTask;
    }
}