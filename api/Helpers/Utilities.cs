namespace api.Helpers;

public class Utilities
{
    private static readonly Uri uri = new(Environment.GetEnvironmentVariable("PG_CONN")!);

    public static readonly string
        ProperlyFormattedConnectionString = string.Format(
        "Server={0};Database={1};User Id={2};Password={3};Port={4};Pooling=false;",
        uri.Host,
        uri.AbsolutePath.Trim('/'),
        uri.UserInfo.Split(':')[0],
        uri.UserInfo.Split(':')[1],
        uri.Port > 0 ? uri.Port : 5432);
}