﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
namespace ELibrary
{
    public partial class _Default : Page
    {
        [WebMethod]

        protected void Page_Load(object sender, EventArgs e)
        {
            //string opr = Request.QueryString["opr"].ToString();

        }

        public static string GetCurrentTime()
        {

            return "Hello ";
        }

        public static string GetCurrentTime2()
        {

            return "Hello! " + Environment.NewLine + "The Current Time is: "
                   + DateTime.Now.ToString();
       
           
            /*
            string userName = Request.QueryString["userName"].ToString();
            string password = Request.QueryString["password"].ToString();
            string email = Request.QueryString["email"].ToString();
            string confirmPassword = Request.QueryString["confirmPassword"].ToString();



            /*string password = txtPassword.Text.Trim();
            string confirmPassword = txtConfirmPassword.Text.Trim();
      
            registrationPerson.RegistrationPerson();*/
        }

        protected void btnRegestrationPerson_Click(object sender, EventArgs e)
        {            
            string email = txtEmailRegistartion.Text.Trim();
            string userName = txtUserNameRegistartion.Text.Trim();
            string password = txtPasswordRegistartion.Text.Trim();
            string confirmPassword = txtConfirmPasswordRegistartion.Text.Trim();
            string typeUser = "user";
            if (chbRegistrationAs.Checked == true) typeUser = "library";


            RegistrationClass registrationPerson = new RegistrationClass(userName, password, confirmPassword, email, typeUser);
            registrationPerson.RegistrationPerson();
            if (registrationPerson.Errors.Count == 0)
            {
                lblSuccessfulRegistrationMessage.Text = "Успешно регистриран потребител!";
                lblSuccessfulRegistrationMessage.Text = registrationPerson.Errors.Count.ToString();

                lblSuccessfulRegistrationMessage.Visible = true;
                lblFailedRegistrationMessage.Visible = false;

            }
            else
            {
                lblFailedRegistrationMessage.Text = string.Join("\n", registrationPerson.Errors);
                lblSuccessfulRegistrationMessage.Visible = false;
                lblFailedRegistrationMessage.Visible = true;
            }
            


        }
    }
}