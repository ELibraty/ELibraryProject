using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text.RegularExpressions;
using System.Text;
using System.Security.Cryptography;

namespace ELibrary
{
    public class RegistrationClass
    {
        private string userName, password, email, confirmPasswords, type;
        private List<string> errors;
        public string UserName { get => userName; set => userName = value; }
        public string Password { get => password;
            set
            {
                string pattern = null;
                pattern = "^.*(?=.{8,})(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$";
                if (Regex.IsMatch(value, pattern))
                {
                    using (MD5 md5Hash = MD5.Create())
                    {
                        password = GetMd5Hash(md5Hash, value);
                    }

                }
                else this.errors.Add("Паролата трябва да е с минимум 8 знака и да съдържа поне 1 малка, 1 главна буква и 1 знак!");
            }
        }

        public string Email {
            get => email;
            set
            {
                string pattern = null;
                pattern = "^([0-9a-zA-Z]([-\\.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})$";
                if (Regex.IsMatch(value, pattern))email = value;
                else this.errors.Add("Грешно въведен email адрес!");
            }
        }

        public string ConfirmPasswords { get => confirmPasswords; set => confirmPasswords = value; }
        public string Type { get => type; set => type = value; }
        public List<string> Errors { get => errors; set => errors = value; }

        public RegistrationClass(string userName, string password, string confirmPasswords, string email,string type)
        {
            this.UserName = userName;
            this.Password = password;
            this.Email = email;
            this.ConfirmPasswords = ConfirmPasswords;
            this.Type = type;
            this.errors = new List<string>();
        }

        public void RegistrationPerson()
        {
            try
            {
                string userName = this.UserName;
                string password = this.Password;
                string email = this.Email;
                string confirmPasswords = this.ConfirmPasswords;
                string type = this.type;
                DBClass db = new DBClass();
                int id = db.GetMaxID("Users");
                if (password != confirmPasswords) this.errors.Add("Паролите не съвпадат!");
                if (this.CheckDublicatePersonData()== false)
                {
                    string query = $"INSERT INTO Users (id,email, user_name, password, type) " +
                    $"VALUES ('{id}','{email}', '{userName}', '{password}','{type}' )";
                    if(this.errors.Count==0) db.InsertQueryAtDB(query);
                }
                else
                {
                    this.errors.Add("Добликиране на email/потребителско име!");
                }

            }
            catch (Exception)
            {
                this.errors.Add("Нещо се обърка!");
            }

        }

        private bool CheckDublicatePersonData()
        {
            string userName = this.UserName;
            string email = this.Email;

            DBClass db = new DBClass();
            string query = $"Select* from Users where email='{email}' or user_name='{userName}';";
            db.SelectQueryFromDB(query);
            DataTable dtbl = db.SelectQueryFromDB(query);
            string lastId = dtbl.Rows[0][0].ToString();
            if (lastId == "") return false;
            return true;

        }

        static string GetMd5Hash(MD5 md5Hash, string input)
        {

            // Convert the input string to a byte array and compute the hash.
            byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));

            // Create a new Stringbuilder to collect the bytes
            // and create a string.
            StringBuilder sBuilder = new StringBuilder();

            // Loop through each byte of the hashed data 
            // and format each one as a hexadecimal string.
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            // Return the hexadecimal string.
            return sBuilder.ToString();
        }

    }
}