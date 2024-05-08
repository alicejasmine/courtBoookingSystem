﻿using System.ComponentModel.DataAnnotations;
using api.ClientEventFilters;
using api.Helpers;
using api.Models;
using api.Repositories;
using api.ServerEvents;
using Fleck;
using lib;
using Serilog;

namespace api.ClientEventHandlers;

public class ClientWantsToBookCourtDto : BaseDto
{
    [Required] public int CourtId { get; set; }
    [Required] public int UserId { get; set; }
    [Required] public DateTime SelectedDate { get; set; }
    [Required] public TimeSpan StartTime { get; set; }
    [Required] public TimeSpan EndTime { get; set; }
    [Required] public DateTime CreationTime { get; set; }
}

[RequireAuthentication]
[ValidateDataAnnotations]
public class ClientWantsToBookCourt(CourtAvailabilityRepository courtAvailabilityRepository,
    CourtBookingRepository bookingRepository) : BaseEventHandler<ClientWantsToBookCourtDto>
{
    public override async Task Handle(ClientWantsToBookCourtDto dto, IWebSocketConnection socket)
    {
        bool isCourtAvailable =
            courtAvailabilityRepository.IsCourtAvailable(dto.CourtId, dto.SelectedDate, dto.StartTime, dto.EndTime);

        if (!isCourtAvailable)
        {
            socket.SendDto(new ServerSendsErrorMessageToClient
                { errorMessage = "Court is not available for the selected date and time." });
            return;
        }


        var courtBooking = new CourtBooking
        {
            courtId = dto.CourtId,
            userId = dto.UserId,
            selectedDate = dto.SelectedDate,
            startTime = dto.StartTime,
            endTime = dto.EndTime,
            creationTime = dto.CreationTime
        };
        bookingRepository.CreateCourtBooking(courtBooking);

        socket.SendDto(new ServerSendsBookingConfirmation { confirmationMessage = "Booking successful" });
    }
}