﻿using lib;

namespace api.ServerEvents;

public class ServerSendsBookingConfirmation:BaseDto
{
    public string ConfirmationMessage { get; set; }
}