using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Mediscan_Application.Startup))]
namespace Mediscan_Application
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
