using System.ComponentModel.DataAnnotations;
using api.ClientEventFilters;
using api.Helpers;
using api.Models;
using api.Repositories;
using api.ServerEvents;
using Fleck;
using lib;

namespace api.ClientEventHandlers;

public class ClientWantsToBookCourtDto : BaseDto
{
    [Required] public int CourtId { get; set; }
    [Required] public int UserId { get; set; }
    [Required] public DateTime SelectedDate { get; set; }
    [Required] public TimeSpan StartTime { get; set; }
    [Required] public TimeSpan EndTime { get; set; }
}

/*

[RequireAuthentication]
[ValidateDataAnnotations]
public class ClientWantsToBookCourt(CourtAvailabilityRepository courtAvailabilityRepository,
    CourtBookingRepository bookingRepository) : BaseEventHandler<ClientWantsToBookCourtDto>
{
    

    public override async Task Handle(ClientWantsToBookCourtDto dto, IWebSocketConnection socket)
    {
     
        bool isCourtAvailable = courtAvailabilityRepository.IsCourtAvailable(dto.CourtId, dto.SelectedDate, dto.StartTime, dto.EndTime);
        
        if (!isCourtAvailable)
        {
            
        }
        CourtBooking booking = new CourtBooking
        {
            CourtId = dto.CourtId,
            UserId = dto.UserId,
            Date = dto.SelectedDate,
            StartTime = dto.StartTime,
            EndTime = dto.EndTime,
        };

       
        bookingRepository.CreateCourtBooking(booking);
        courtAvailabilityRepository.UpdateCourtAvailability(dto.CourtId, dto.SelectedDate, dto.StartTime, dto.EndTime, false);
        socket.SendDto(new ServerSendsBookingConfirmation { BookingId = booking.Id });

       
    }
}*/