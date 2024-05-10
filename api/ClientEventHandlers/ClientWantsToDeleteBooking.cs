using api.ClientEventFilters;
using api.Repositories;
using Fleck;
using lib;

namespace api.ClientEventHandlers;

public class ClientWantsToDeleteBookingDto : BaseDto
{
    public int BookingId { get; set; }
}

[RequireAuthentication]
[ValidateDataAnnotations]
public class ClientWantsToDeleteBooking
    (CourtBookingRepository bookingRepository) : BaseEventHandler<ClientWantsToDeleteBookingDto>
{
    public override Task Handle(ClientWantsToDeleteBookingDto dto, IWebSocketConnection socket)
    {
        bookingRepository.DeleteCourtBooking(dto.BookingId);
       
    return Task.CompletedTask;
}

}