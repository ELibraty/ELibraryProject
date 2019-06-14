using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ELibrary
{
    public class RegistrationClass
    {
        private string userName, password, email, confirmPasswords;

        public string UserName { get => userName; set => userName = value; }
        public string Password { get => password; set => password = value; }
        public string Email {
            get => email;
            set
            {
                /*string emailString = value;
                try
                {
                    var addr = new System.Net.Mail.MailAddress(emailString);
                    if()
                }
                catch
                {
                    return false;
                }*/
                email = value;
            }
        }
        public string ConfirmPasswords { get => confirmPasswords; set => confirmPasswords = value; }

        public RegistrationClass(string userName, string password, string confirmPasswords, string email)
        {
            this.UserName = userName;
            this.Password = password;
            this.Email = email;
            this.ConfirmPasswords = ConfirmPasswords;
        }

        public string RegistrationPerson()
        {
            string userName = this.UserName;
            string password = this.Password;
            string email = this.Email;
            string confirmPasswords = this.ConfirmPasswords;

            DBClass db = new DBClass();
            int id = db.GetMaxID("dbo.Users");

            string query = $"INSERT INTO dbo.Users (id,email, user_name, password, type) " +
                    $"VALUES ('{id}','{email}', '{userName}', '{password}','user' )";
            db.InsertQueryAtDB(query);


            return "Успошно регистриран!";
        }


    }
}