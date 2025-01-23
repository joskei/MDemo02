namespace CorrectionsApi;

public class SupervisedIndividual
{
    public string Id { get; set; }
    public string Name { get; set; }
    public string Email { get; set; }
    public DateOnly DateOfJoining { get; set; }
    public DateOnly DateOfBirth { get; set; }
}