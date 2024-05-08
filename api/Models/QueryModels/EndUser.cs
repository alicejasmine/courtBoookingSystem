namespace api.Models;

public class EndUser
{
    public int id { get; set; }
    public string? email { get; set; }
    public string? hash { get; set; }
    public string? salt { get; set; }
}