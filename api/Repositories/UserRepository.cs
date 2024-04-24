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
                            full_name as {nameof(EndUser.FullName)},
                            email as {nameof(EndUser.Email)},
                            hash as {nameof(EndUser.Hash)},
                            salt as {nameof(EndUser.Salt)},
                             first_login as {nameof(EndUser.FirstLogin)}
                        from booking_system.users where email = @{nameof(FindByEmailParams.email)};", findByEmailParams) ??
                   
               throw new KeyNotFoundException("Could not find user with email " + findByEmailParams.email);
    }

    public EndUser GetUserById(int userId)
    {
        using var conn = source.OpenConnection();
        return conn.QueryFirstOrDefault<EndUser>($@"
        SELECT 
            user_id as {nameof(EndUser.Id)},
            full_name as {nameof(EndUser.FullName)},
            email as {nameof(EndUser.Email)},
            hash as {nameof(EndUser.Hash)},
            salt as {nameof(EndUser.Salt)},
            first_login as {nameof(EndUser.FirstLogin)}
        FROM 
            booking_system.users 
        WHERE 
            user_id = @UserId", new { UserId = userId }) ??
               throw new KeyNotFoundException("Could not find user with ID " + userId);
    }

    public void ChangeUserPassword(int userId, string newPassword)
    {
        EndUser user = GetUserById(userId);
Log.Information("new pass: " + newPassword);
        // Generate new salt and hash for the new password
        string newSalt = credentialService.GenerateSalt();
        string newHash = credentialService.Hash(newPassword, newSalt);

        
        // Update user's password fields in the EndUser object
        user.Salt = newSalt;
        user.Hash = newHash;

        // Update user's password in the database
        using var conn = source.OpenConnection();

        conn.Execute(@"
        UPDATE booking_system.users 
        SET 
            hash = @Hash,
            salt = @Salt
        WHERE 
            user_id = @Id", user);
    }

        
    
    public void UpdateFirstLoginStatus(int userId, bool isFirstLogin)
    {
        using var conn = source.OpenConnection();

        conn.Execute(@"
        UPDATE booking_system.users 
        SET 
            first_login = @IsFirstLogin
        WHERE 
            user_id = @UserId", new { UserId = userId, IsFirstLogin = isFirstLogin });
    }
}
