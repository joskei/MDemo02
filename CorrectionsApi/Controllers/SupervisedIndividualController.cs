using Microsoft.AspNetCore.Mvc;

namespace CorrectionsApi.Controllers;

[ApiController]
[Route("/v1/[controller]")]
public class SupervisedIndividualController : ControllerBase
{
    private readonly ILogger<SupervisedIndividualController> _logger;

    public SupervisedIndividualController(ILogger<SupervisedIndividualController> logger)
    {
        _logger = logger;
    }

    [HttpGet("{id}")]
    public SupervisedIndividual SupervisedIndividualAPI_getSupervisedIndividualById(string id)
    {
        return new SupervisedIndividual
        {
            Id = Guid.NewGuid().ToString(),
            Name = $"Name {id}",
            Email = $"Email {id}",
            DateOfJoining = DateOnly.FromDateTime(DateTime.Now.AddDays(-100)),
            DateOfBirth = DateOnly.FromDateTime(DateTime.Now.AddYears(-25))
        };
    }
}