
using System.ComponentModel.DataAnnotations;
using System.Reflection;
using System.Security.Authentication;
using System.Text.Json;
using api.Helpers;
using api.Repositories;
using api.Security;
using api.ServerEvents;
using api.State;
using Fleck;
using lib;
using Serilog;

public static class Startup
{
    public static void Main(string[] args)
    {
        var webApp = Start(args);
        
        var credentialService = new CredentialService();

        // Generate salt
        string salt = credentialService.GenerateSalt();
        Console.WriteLine("Salt: " + salt);

        // Hash the password "12345678" with the generated salt
        string hashedPassword = credentialService.Hash("12345678", salt);
        Console.WriteLine("Hashed Password: " + hashedPassword);  
        webApp.Run();
    }

    public static WebApplication Start(string[] args)
    {
        Log.Logger = new LoggerConfiguration()
            .WriteTo.Console(
                outputTemplate: "\n{Timestamp:yyyy-MM-dd HH:mm:ss} [{Level}] {Message}{NewLine}{Exception}\n")
            .CreateLogger();
        Log.Information(JsonSerializer.Serialize(Environment.GetEnvironmentVariables()));

        var builder = WebApplication.CreateBuilder(args);
        builder.Services.AddSingleton<CredentialService>();
        builder.Services.AddSingleton<TokenService>();

        Uri uri = builder.Configuration.GetValue<Uri>("PG_CONN")!;
        builder.Services.AddNpgsqlDataSource(UserRepository.ProperlyFormattedConnectionString(uri),
           sourceBuilder => { sourceBuilder.EnableParameterLogging(); });
 
        
        builder.Services.AddSingleton<UserRepository>();
        var services = builder.FindAndInjectClientEventHandlers(Assembly.GetExecutingAssembly());

        builder.WebHost.UseUrls("http://*:9999");
        var app = builder.Build();
      //app.Services.GetService<UserRepository>()!.ExecuteRebuildFromSqlScript();
        
        var server = new WebSocketServer("ws://0.0.0.0:8181");
        server.RestartAfterListenError = true;
        server.Start(socket =>
        {
            socket.OnOpen = () => WebSocketStateService.AddClient(socket.ConnectionInfo.Id, socket);
            socket.OnClose = () => WebSocketStateService.RemoveClient(socket.ConnectionInfo.Id);
            socket.OnMessage = async message =>
            {
                try
                {
                    await app.InvokeClientEventHandler(services, socket, message);
                }
                catch (Exception e)
                {
                    Log.Error(e, "Global exception handler");
                    if (app.Environment.IsProduction() && (e is ValidationException || e is AuthenticationException))
                    {
                        socket.SendDto(new ServerSendsErrorMessageToClient()
                        {
                            errorMessage = "Something went wrong",
                            receivedMessage = message
                        });
                    }
                    else
                    {
                        socket.SendDto(new ServerSendsErrorMessageToClient
                        { errorMessage = e.Message, receivedMessage = message });
                    }
                }
            };
        });
        return app;
   
    }
}