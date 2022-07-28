namespace Library.Model.Authentication
{
    public record UserData(int Id, string? FirstName, string? LastName, string UserName);

    //! This is the alternative to creating the userData as a record.
    //public class UserData
    //{
    //    public UserData(int id, string? firstName, string? lastName, string userName)
    //    {
    //        Id = id;
    //        FirstName = firstName;
    //        LastName = lastName;
    //        UserName = userName;
    //    }

    //    public int Id { get; set; }
    //    public string? FirstName { get; set; }
    //    public string? LastName { get; set; }
    //    public string UserName { get; set; }
    //}
}
