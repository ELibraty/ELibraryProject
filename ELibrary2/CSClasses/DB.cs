using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
namespace ELibrary2
{
    public class DBClass
    {
        private SqlConnection sqlCon;

        public SqlConnection SqlCon { get => sqlCon; private set => sqlCon = value; }

        public DBClass()
        {
            string connectionString = "Server=.\\SQLEXPRESS; Database=LibraryDB; Integrated Security=true ";
            this.SqlCon = new SqlConnection(connectionString);
        }

        //To Do: Insert query at DB
        public void InsertQueryAtDB(string query)
        {
            SqlConnection sqlCon = this.SqlCon;
            sqlCon.Open();
            SqlCommand command = new SqlCommand(query, sqlCon);
            command.ExecuteNonQuery();
            sqlCon.Close();

        }

        public int GetMaxID(string dataTable)
        {
            string query = $"Select Max(id) from {dataTable};";
            DataTable dtbl = SelectQueryFromDB(query);
            string lastId = dtbl.Rows[0][0].ToString();
            if (lastId == "") return 1;
            return int.Parse(lastId) + 1;
        }

        public DataTable SelectQueryFromDB(string query)
        {
            DataTable dtbl = new DataTable();
            SqlConnection sqlCon = this.SqlCon;
            sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter(query, sqlCon);
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            return dtbl;
        }

        public void DeleteRow(string query)
        {
            SqlConnection sqlCon = this.SqlCon;
            SqlCommand command = new SqlCommand(query, sqlCon);
            sqlCon.Open();
            command.ExecuteNonQuery();
            sqlCon.Close();

        }
    }
}