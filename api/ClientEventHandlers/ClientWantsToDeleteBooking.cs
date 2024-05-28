using api.ClientEventFilters;
using api.Helpers;
using api.Repositories;
using api.ServerEvents;
using Fleck;
using lib;
using Serilog;

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
        try
        {
            bookingRepository.DeleteCourtBooking(dto.BookingId);
            socket.SendDto(new ServerSendsConfirmationMessageToClient
                { confirmationMessage = "Booking successfully deleted" });
        }

        catch (Exception e)
        {
            Log.Error(e, "An error occurred while attempting to delete the booking.");
            socket.SendDto(new ServerSendsErrorMessageToClient
            {
                errorMessage = "An error occurred while deleting the booking. Please try again later."
            });
        }

        return Task.CompletedTask;
    }
}