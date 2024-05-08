using api.ClientEventFilters;
using api.Helpers;
using api.Repositories;
using api.ServerEvents;
using Fleck;
 using lib;
 using Newtonsoft.Json;

 namespace api.ClientEventHandlers;

 public class ClientWantsToFetchUserBookingsDto : BaseDto
 {
     public int UserId { get; set; }
 }

 [RequireAuthentication]
 [ValidateDataAnnotations]
 public class ClientWantsToFetchUserBookings(CourtBookingRepository bookingRepository): BaseEventHandler<ClientWantsToFetchUserBookingsDto>
 {
     public override Task Handle(ClientWantsToFetchUserBookingsDto dto, IWebSocketConnection socket)
     {
         socket.SendDto(new ServerSendsUserBookingsToClient
         {
             userBookings = bookingRepository.GetBookingsByUserId(dto.UserId),
         });
         return Task.CompletedTask;
     
     }
 }