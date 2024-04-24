using api.Models;
using Fleck;

namespace api.State;

public  class WsWithMetadata(IWebSocketConnection connection)
{
    public IWebSocketConnection Connection { get; set; } = connection;
    public bool IsAuthenticated { get; set; } = false;
    public EndUser? User { get; set; }
}

public static class WebSocketStateService
{
    private static readonly Dictionary<Guid, WsWithMetadata> _clients = new();
    

    public static WsWithMetadata GetClient(Guid clientId)
    {
        return _clients[clientId];
    }

   
    public static void AddClient(Guid clientId, IWebSocketConnection connection)
    {
        _clients.TryAdd(clientId, new WsWithMetadata(connection));
    }

    public static void RemoveClient(Guid connectionInfoId)
    {
        throw new NotImplementedException();
    }
}