using api.ClientEventFilters;
using api.Helpers;
using api.Repositories;
using api.ServerEvents;
using Fleck;
 using lib;
 using Newtonsoft.Json;
using Serilog;

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
         try
         {
             socket.SendDto(new ServerSendsUserBookingsToClient
             {
                 userBookings = bookingRepository.GetBookingsByUserId(dto.UserId),
             });
         }
         catch (Exception e)
         {
             Log.Error(e, "Error fetching user bookings.");
             socket.SendDto(new ServerSendsErrorMessageToClient
             {
                 errorMessage = "An error occurred while fetching your bookings. Please try again later."
             });
         }

         return Task.CompletedTask;
     
     }
 }