using api.ClientEventFilters;
using api.Repositories;
using Fleck;
using lib;
using Newtonsoft.Json;

namespace api.ClientEventHandlers;

public class ClientWantsToFetchBookingsDto : BaseDto
{
    public int UserId { get; set; }
}

[RequireAuthentication]
[ValidateDataAnnotations]
public class ClientsWantsToFetchBookings(  CourtBookingRepository bookingRepository): BaseEventHandler<ClientWantsToFetchBookingsDto>
{
    public override async Task Handle(ClientWantsToFetchBookingsDto dto, IWebSocketConnection socket)
    {
        var bookings = bookingRepository.getBookingsByUserId(dto.UserId);
        var bookingsJson = JsonConvert.SerializeObject(bookings);
        socket.Send(bookingsJson);
    }
}