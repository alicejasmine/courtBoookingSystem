﻿using api.ClientEventHandlers;
using api.ServerEvents;
using NUnit.Framework;
using Tests;

namespace tests;

[TestFixture]

[NonParallelizable]
public class ApiTests
{
 
    [SetUp]
    public async Task Setup()
    {
        Startup.Start(null);
        Helper.RebuildDatabase();
    }

    [Test]
    public async Task ClientCanBookACourt()
    {
        //arrange
        var ws = await new WebSocketTestClient().ConnectAsync();
        
        var courtBookingDto = new ClientWantsToBookCourtDto
        {
            CourtId = 4,
            UserId = 1,
            SelectedDate = new DateTime(2024, 5, 15),
            StartTime = TimeSpan.Parse("09:00:00"), 
            EndTime = TimeSpan.Parse("10:00:00"),
            CreationTime = DateTime.Now
        };
        
        //sign in is required for accessing booking function
        await ws.DoAndAssert(new ClientWantsToSignInDto() { email = "alice@gmail.com", password = "blabla" },
            receivedMessages =>
            {
                return receivedMessages.Count(e => e.eventType == nameof(ServerAuthenticatesUser)) == 1;
            });

        //act and assert
        await ws.DoAndAssert(courtBookingDto, receivedMessages =>
        {
            return receivedMessages.Count(e => e.eventType == nameof(ServerSendsConfirmationMessageToClient)) == 1;
        });

        
        ws.Client.Dispose();
    
    }
    
    
    [Test]
    public async Task ClientCannotBookAlreadyBookedCourt()
    {
        //arrange
        var ws1 = await new WebSocketTestClient().ConnectAsync();
        var ws2 = await new WebSocketTestClient().ConnectAsync();

        var courtBookingDto = new ClientWantsToBookCourtDto
        {
            CourtId = 4,
            UserId = 1,
            SelectedDate = new DateTime(2024, 5, 15),
            StartTime = TimeSpan.Parse("09:00:00"), 
            EndTime = TimeSpan.Parse("10:00:00"),
            CreationTime = DateTime.Now
        };
        
        //sign in is required for accessing booking function
        await ws1.DoAndAssert(new ClientWantsToSignInDto() { email = "alice@gmail.com", password = "blabla" },
            receivedMessages =>
            {
                return receivedMessages.Count(e => e.eventType == nameof(ServerAuthenticatesUser)) == 1;
            });
        
        await ws2.DoAndAssert(new ClientWantsToSignInDto() { email = "bla@gmail.com", password = "blabla" },
            receivedMessages =>
            {
                return receivedMessages.Count(e => e.eventType == nameof(ServerAuthenticatesUser)) == 1;
            });

        //act and assert
        await ws1.DoAndAssert(courtBookingDto, receivedMessages =>
        {
            return receivedMessages.Count(e => e.eventType == nameof(ServerSendsConfirmationMessageToClient)) == 1;
        });
        await ws2.DoAndAssert(courtBookingDto, receivedMessages =>
        {
            return receivedMessages.Count(e => e.eventType == nameof(ServerSendsErrorMessageToClient)) == 1;
        });

        
        ws1.Client.Dispose();
        ws2.Client.Dispose();
    }

}