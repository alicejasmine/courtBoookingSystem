using api.ClientEventFilters;
using api.Helpers;
using api.Repositories;
using api.ServerEvents;
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

        socket.SendDto(new ServerSendsConfirmationMessageToClient { confirmationMessage = "Booking successfully deleted" });

        return Task.CompletedTask;
    }
}