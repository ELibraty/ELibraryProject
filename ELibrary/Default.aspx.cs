using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibrary
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string opr = Request.QueryString["opr"].ToString();

            if(opr=="newRegistartion")
            {
                newRegistartion();
            }
        }

        protected void newRegistartion()
        {
            string userName = Request.QueryString["userName"].ToString();
            string password = Request.QueryString["password"].ToString();
            string email = Request.QueryString["email"].ToString();
            string confirmPassword = Request.QueryString["confirmPassword"].ToString();



            /*string password = txtPassword.Text.Trim();
            string email = txtEmail.Text.Trim();
            string confirmPassword = txtConfirmPassword.Text.Trim();
      
            RegistrationClass registrationPerson = new RegistrationClass(userName, password, confirmPassword,email);
            registrationPerson.RegistrationPerson();*/
        }
    }
}