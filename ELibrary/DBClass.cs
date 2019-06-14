using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
namespace ELibrary
{
    public class DBClass
    {
        private SqlConnection sqlCon;

        public SqlConnection SqlCon { get => sqlCon; set => sqlCon = value; }

        public DBClass()
        {
            string connectionString = "Server=.\\SQLEXPRESS; Database=LibraryDB; Integrated Security=true ";
            SqlConnection sqlCon = new SqlConnection(connectionString);
            this.SqlCon = sqlCon;
        }

        //To Do: Insert query at DB
        public void InsertQueryAtDB(string query)
        {
            SqlConnection sqlCon = this.SqlCon;
            SqlCommand command = new SqlCommand(query, sqlCon);
            using (sqlCon)
            {
                sqlCon.Open();
                command.ExecuteNonQuery();
            }

        }

        public int GetMaxID(string dataTable)
        {
            string query = $"Select Max(id) from {dataTable};";
            DataTable dtbl = SelectQueryFromDB(query);
            int id =int.Parse(dtbl.Rows[0].ItemArray[0].ToString())+1;
            
            return id;
        }

        public DataTable SelectQueryFromDB(string query)
        {
            DataTable dtbl = new DataTable();
            SqlConnection sqlCon = this.SqlCon;
            using (sqlCon)
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter(query, sqlCon);
                sqlDa.Fill(dtbl);
            }
            return dtbl;
        }

    }
}