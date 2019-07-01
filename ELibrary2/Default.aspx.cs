using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibrary2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSingUpPerson_Click(object sender, EventArgs e)
        {
            string email = txtEmailRegistartion.Text.Trim();
            string userName = txtUserNameRegistartion.Text.Trim();
            string password = txtPasswordRegistartion.Text.Trim();
            string confirmPassword = txtConfirmPasswordRegistartion.Text.Trim();
            string typeUser = "user";
            if (chbRegistrationAs.Checked == true) typeUser = "library";

            SingUp registrationPerson = new SingUp(userName, password, confirmPassword, email, typeUser);
            registrationPerson.SingUpPerson();
            if (registrationPerson.Errors.Count == 0)
            {
                lblSuccessfulRegistrationMessage.Text = "Успешно регистриран потребител!";
                lblSuccessfulRegistrationMessage.Visible = true;
                lblFailedRegistrationMessage.Visible = false;
            }
            else
            {
                lblFailedRegistrationMessage.Text = string.Join("<br/>", registrationPerson.Errors);
                lblSuccessfulRegistrationMessage.Visible = false;
                lblFailedRegistrationMessage.Visible = true;
            }
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            string email = txtEmailLogIn.Text.Trim();
            string password = txtPasswordLogIn.Text.Trim();
            LogIn loginUser = new LogIn(password, email);
            string request = loginUser.LogInUser();
            if (request == "")
            {
                lblFailedLogInMessage.Text = string.Join("<br/>", loginUser.Errors);
                lblFailedLogInMessage.Visible = true;
            }
            else
            {
                Session["email"] = email;
                Response.Redirect(request);
            }

        }

      
    }
}