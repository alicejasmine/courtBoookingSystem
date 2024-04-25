using api.Models;
using api.Models.ParameterModels;
using api.Security;
using Dapper;
using Npgsql;
using Serilog;

namespace api.Repositories;

public class UserRepository(NpgsqlDataSource source, CredentialService credentialService)


{
    public static string ProperlyFormattedConnectionString(Uri uri) => string.Format(
        "Server={0};Database={1};User Id={2};Password={3};Port={4};Pooling=false;",
        uri.Host,
        uri.AbsolutePath.Trim('/'),
        uri.UserInfo.Split(':')[0],
        uri.UserInfo.Split(':')[1],
        uri.Port > 0 ? uri.Port : 5432);


    public EndUser GetUser(FindByEmailParams findByEmailParams)
    {
        using var conn = source.OpenConnection();
        return conn.QueryFirstOrDefault<EndUser>($@"
                        select user_id as {nameof(EndUser.Id)},
                            email as {nameof(EndUser.Email)},
                            hash as {nameof(EndUser.Hash)},
                            salt as {nameof(EndUser.Salt)}
                        from booking_system.users where email = @{nameof(FindByEmailParams.email)};", findByEmailParams) ??
                   
               throw new KeyNotFoundException("Could not find user with email " + findByEmailParams.email);
    }

    public EndUser InsertUser(InsertUserParams insertUserParams)
    {
        using var conn = source.OpenConnection();
        return conn.QueryFirstOrDefault<EndUser>(@$"
insert into booking_system.users (email, hash, salt) 
values (
        @{nameof(InsertUserParams.email)}, 
        @{nameof(InsertUserParams.hash)}, 
        @{nameof(InsertUserParams.salt)}
        ) 
returning 
    email as {nameof(EndUser.Email)}, 
    user_id as {nameof(EndUser.Id)};", insertUserParams)
               ?? throw new InvalidOperationException("Insertion and retrieval failed");
    }
 
    public bool DoesUserAlreadyExist(FindByEmailParams findByEmailParams)
    {
        using var conn = source.OpenConnection();
        return conn.ExecuteScalar<int>(@$"
select count(*) from booking_system.users where email = @{nameof(findByEmailParams.email)};", findByEmailParams) == 1;
    }
    
    
    
    public EndUser GetUserById(int userId)
    {
        using var conn = source.OpenConnection();
        return conn.QueryFirstOrDefault<EndUser>($@"
        SELECT 
            user_id as {nameof(EndUser.Id)},
            email as {nameof(EndUser.Email)},
            hash as {nameof(EndUser.Hash)},
            salt as {nameof(EndUser.Salt)}
        FROM 
            booking_system.users 
        WHERE 
            user_id = @UserId", new { UserId = userId }) ??
               throw new KeyNotFoundException("Could not find user with ID " + userId);
    }


    
}
