using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Data;
using System.Text.RegularExpressions;
using System.Text;
namespace ELibrary2
{
    public class User
    {
        private int id;
        private string userName, email, avatar;

        public User(int id)
        {
            this.Id = id;
            DBClass db = new DBClass();
            string query = $"Select* from Users where id='{id}';";
            DataTable dtbl = db.SelectQueryFromDB(query);
            this.Email = dtbl.Rows[0][1].ToString();
            this.Avatar = dtbl.Rows[0][5].ToString();
            this.UserName = dtbl.Rows[0][2].ToString();
        }

        public int Id { get => id; private set => id = value; }
        public string UserName { get => userName; private set => userName = value; }
        public string Email { get => email; private set => email = value; }
        public string Avatar { get => avatar; private set => avatar = value; }
    }
}