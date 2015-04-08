using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(IdentityProviderAdminConsole.Startup))]
namespace IdentityProviderAdminConsole
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
