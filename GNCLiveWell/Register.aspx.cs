using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GNCLiveWell
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var user = new IdentityUser() { UserName = txtEmail.Text, Email = txtEmail.Text };
            IdentityResult result = manager.Create(user, txtPassword.Text);

            if (result.Succeeded)
            {
                litRegError.Text = " Success" + result.Errors.FirstOrDefault();
            }
            else
                litRegError.Text = " An error has occurred: " + result.Errors.FirstOrDefault();
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtLoginEmail.Text, txtLoginPassword.Text);

            if (user != null)
            {
                LogUserIn(userManager, user);
                Server.Transfer("Default.aspx", true);
            }
            else
            {
                litLoginError.Text = "Invalid username or password.";
            }

        }
        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
        }
    }
}

   
