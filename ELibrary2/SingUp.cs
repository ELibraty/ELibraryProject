using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text.RegularExpressions;
using System.Text;
using System.Security.Cryptography;

namespace ELibrary2
{
    public class SingUp
    {
        private string userName, password, email, confirmPasswords, type;
        private List<string> errors;
        public string UserName { get => userName; set => userName = value; }
        public string Password
        {
            get => password;
            set
            {
                string pattern = "^.*(?=.{8,})(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$";
                //checked lenght and letter at password
                if (Regex.IsMatch(value, pattern))
                {
                    using (MD5 md5Hash = MD5.Create())
                    {
                        password = GetMd5Hash(md5Hash, value);
                    }
                }
                else this.Errors.Add("Паролата трябва да е с минимум 8 знака и да съдържа поне 1 малка, 1 главна буква и 1 знак!");
            }
        }

        public string Email
        {
            get => email;
            set
            {
                string pattern = "^([0-9a-zA-Z]([-\\.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})$";
                //validation email
                if (Regex.IsMatch(value, pattern)) email = value;
                else this.Errors.Add("Грешно въведен email адрес!");
            }
        }

        public string ConfirmPasswords { get => confirmPasswords; set => confirmPasswords = value; }
        public string Type { get => type; set => type = value; }
        public List<string> Errors { get => errors; set => errors = value; }

        //class contructor
        public SingUp(string userName, string password, string confirmPasswords, string email, string type)
        {
            this.Errors = new List<string>();
            this.UserName = userName;
            this.Password = password;
            this.Email = email;
            this.ConfirmPasswords = confirmPasswords;
            this.Type = type;
        }

        //SingUp new user
        public void SingUpPerson()
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
                using (MD5 md5Hash = MD5.Create())
                {
                    confirmPasswords = GetMd5Hash(md5Hash, confirmPasswords);
                }

                //check pass equals confirmPass
                if (password != confirmPasswords) this.Errors.Add("Паролите не съвпадат!");
                if (this.CheckDublicatePersonData() == false)
                {
                   
                    if (this.Errors.Count == 0)
                    {
                        //add user at db
                        string query = $"INSERT INTO Users (id,email, user_name, password, type, avatar) " +
                        $"VALUES ('{id}','{email}', '{userName}', '{password}','{type}', ' ' )";
                      
                        db.InsertQueryAtDB(query);
                    }
                }
                else
                {
                    this.Errors.Add("Добликиране на email/потребителско име!");
                }

            }
            catch (Exception)
            {
                this.Errors.Add("Нещо се обърка!");
            }

        }
        //check for dublication data on db
        private bool CheckDublicatePersonData()
        {
            string userName = this.UserName;
            string email = this.Email;

            DBClass db = new DBClass();
            string query = $"Select* from Users where email='{email}' or user_name='{userName}';";
            db.SelectQueryFromDB(query);
            DataTable dtbl = db.SelectQueryFromDB(query);
            if(dtbl.Rows.Count==0)return false;
            return true;

        }

        //do pass to MD5
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