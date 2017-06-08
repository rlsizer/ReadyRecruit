using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ReadyRecruit.Startup))]
namespace ReadyRecruit
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
