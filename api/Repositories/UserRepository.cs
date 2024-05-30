using api.Models;
using api.Models.ParameterModels;
using api.Security;
using Dapper;
using Npgsql;
using Serilog;

namespace api.Repositories;

public class UserRepository


{
    private NpgsqlDataSource _dataSource;

    public UserRepository(NpgsqlDataSource dataSource)
    {
        _dataSource = dataSource;
    }

    public EndUser GetUser(FindByEmailParams findByEmailParams)
    {
        using var conn = _dataSource.OpenConnection();
        return conn.QueryFirstOrDefault<EndUser>($@"
                        select user_id as {nameof(EndUser.id)},
                            email as {nameof(EndUser.email)},
                            hash as {nameof(EndUser.hash)},
                            salt as {nameof(EndUser.salt)}
                        from booking_system.users where email = @{nameof(FindByEmailParams.email)};", findByEmailParams) ??
                   
               throw new KeyNotFoundException("Could not find user with email " + findByEmailParams.email);
    }

    public EndUser InsertUser(InsertUserParams insertUserParams)
    {
        using var conn = _dataSource.OpenConnection();
        return conn.QueryFirstOrDefault<EndUser>(@$"
insert into booking_system.users (email, hash, salt) 
values (
        @{nameof(InsertUserParams.email)}, 
        @{nameof(InsertUserParams.hash)}, 
        @{nameof(InsertUserParams.salt)}
        ) 
returning 
    email as {nameof(EndUser.email)}, 
    user_id as {nameof(EndUser.id)};", insertUserParams)
               ?? throw new InvalidOperationException("Insertion and retrieval failed");
    }
 
    public bool DoesUserAlreadyExist(FindByEmailParams findByEmailParams)
    {
        using var conn = _dataSource.OpenConnection();
        return conn.ExecuteScalar<int>(@$"
select count(*) from booking_system.users where email = @{nameof(findByEmailParams.email)};", findByEmailParams) == 1;
    }
    
    
    
}
