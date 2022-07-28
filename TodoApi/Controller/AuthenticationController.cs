using Library.Model.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace TodoApi.Controller;

[Route("api/[controller]")]
[ApiController]
public class AuthenticationController : ControllerBase
{
    private readonly IConfiguration _configuration;

    //public AuthenticationController(IConfiguration configuration, ILogger logger) => (_configuration,_logger) = (configuration, logger);
    

    public AuthenticationController(IConfiguration configuration)
    {
        _configuration = configuration;
    }

    [HttpPost]
    [AllowAnonymous]
    public ActionResult<string> Authenticate([FromBody] AuthenticationData data)
    {
        var user = ValidateCredentials(data);
        throw new NotImplementedException();
        //do work
        return Ok();
    }

    private UserData ValidateCredentials(AuthenticationData data)
    {
        //! THIS IS NOT PRODUCTION CODE - THIS WOULD GO TO THE AUTH SYSTEM
        if (CompareValues(data.UserName?.ToLower(), "nthompson2") && CompareValues(data.Password, "Test123"))
            return new UserData(1, "Nate", "Thompson", data.UserName!);

        if (CompareValues(data.UserName?.ToLower(), "daren") && CompareValues(data.Password, "Pa$$w0rd1"))
            return new UserData(20, "Daren", "Biggers", data.UserName!);

        return null;
    }

    private bool CompareValues(string? actual, string expected) => actual is not null && actual.Equals(expected);

    //private bool CompareValues(string? actual, string expected)
    //{
    //    return actual is not null && actual.Equals(expected);
    //}
}