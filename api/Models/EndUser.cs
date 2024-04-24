namespace api.Models;

public class EndUser
{
    public int Id { get; set; }
    public string? FullName { get; set; }
    public string? Email { get; set; }
    public string? Hash { get; set; }
    public string? Salt { get; set; }
    public bool FirstLogin { get; set; }
}