﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text.RegularExpressions;
using System.Text;
using System.Security.Cryptography;

namespace ELibrary2
{
    public class LogIn
    {
        private string password, email;
        private List<string> errors;

        public LogIn(string password, string email)
        {
            this.Errors = new List<string>();
            this.Email = email;
            this.Password = password;
        }

        public string Password
        {
            get => password;
            private set
            {
                using (MD5 md5Hash = MD5.Create())
                {
                    password = GetMd5Hash(md5Hash, value);
                }
            }
        }

        public List<string> Errors { get => errors; private set => errors = value; }

        public string Email
        {
            get => email;
            private set
            {
                string pattern = "^([0-9a-zA-Z]([-\\.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})$";
                //validation email
                if (Regex.IsMatch(value, pattern)) email = value;
                else this.Errors.Add("Грешно въведен email адрес!");
            }
        }

        public List<string> LogInUser()
        {
            string password = this.Password;
            string email = this.Email;

            DBClass db = new DBClass();
            string query = $"Select* from Users Where email='{email}' and password='{password}';";
            db.SelectQueryFromDB(query);
            DataTable dtbl = db.SelectQueryFromDB(query);
            if (dtbl.Rows.Count > 0)
            {
                StringBuilder userType = new StringBuilder(dtbl.Rows[0][4].ToString());
                char firstLetter = userType[0];
                firstLetter = (char)('A' + (firstLetter - 'a'));
                userType[0] = firstLetter;
                string userId = dtbl.Rows[0][0].ToString();
                string goPage = userType.ToString() + "Account/Index" + userType.ToString() + ".aspx";

                List<string> result = new List<string>();
                result.Add(userId);
                result.Add(goPage);
                return result;
            }
            this.Errors.Add("Невалиден email/парола!");
            return new List<string>();

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