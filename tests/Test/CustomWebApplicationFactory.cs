using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Testing;

namespace Test
{
    public class CustomWebApplicationFactory : WebApplicationFactory<CorrectionsApi.Controllers.SupervisedIndividualController>
    {
        protected override void ConfigureWebHost(IWebHostBuilder builder)
        {
            builder.UseEnvironment("Development");
        }
    }
}
