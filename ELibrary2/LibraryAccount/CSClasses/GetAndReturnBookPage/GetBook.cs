using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace ELibrary2.LibraryAccount
{
    public class GetBook
    {
        private string userReaderName, bookName;
        private int libraryId;
        private List<string> errors;
        public GetBook(string userReaderName, string bookName, int libraryId)
        {
            this.Errors = new List<string>();
            this.UserReaderName = userReaderName;
            this.BookName = bookName;
            this.LibraryId = libraryId;
        }

        public string UserReaderName { get => userReaderName; private set => userReaderName = value; }
        public string BookName { get => bookName; private set => bookName = value; }
        public List<string> Errors { get => errors; private set => errors = value; }
        public int LibraryId { get => libraryId; set => libraryId = value; }

        //Add getting book
        public void Getting()
        {
            try
            {
                long userId = GetUserId();
                long bookId = GetBookId();
                DateTime date = DateTime.Now;
                DBClass db = new DBClass();
                int id = db.GetMaxID("Books");
                //add book at db
                string query = $"INSERT INTO GetBooks (id,user_id, book_id, get_date, return_date) " +
                $"VALUES ('{id}','{userId}', '{bookName}', '{bookId}','{date}','');";
                this.Errors.Add($"query insert= {query}");
                db.InsertQueryAtDB(query);
            }
            catch (Exception)
            {
                this.Errors.Add("Нещо се обърка!1");
            }
        }

        //Get reader user id
        private long GetUserId()
        {
            try
            {
                string userReaderName = this.UserReaderName;
                DBClass db = new DBClass();
                string query = $"Select* from users where userName='{userReaderName}';";
                DataTable dtbl = db.SelectQueryFromDB(query);
                this.Errors.Add($"query= {query}");


                if (dtbl.Rows.Count == 0)
                {
                    this.Errors.Add("Няма потребител с такова потребителско име!");
                    return -1;
                }
                else return int.Parse(dtbl.Rows[0][0].ToString());

            }
            catch (Exception)
            {
                this.Errors.Add("Нещо се обърка!2");
                return -1;
            }
        }

        //Get read book id
        private int GetBookId()
        {
            try
            {
                string bookName = this.BookName;
                DBClass db = new DBClass();
                int libraryId = this.LibraryId;
                string query = $"Select* from Books where book_name='{bookName}' and library_id='{libraryId}';";
                DataTable dtbl = db.SelectQueryFromDB(query);
                if (dtbl.Rows.Count == 0)
                {
                    this.Errors.Add("Няма книга с такова име!");
                    return -1;
                }
                else return int.Parse(dtbl.Rows[0][0].ToString());

            }
            catch (Exception)
            {
                this.Errors.Add("Нещо се обърка!3");
                return -1;
            }
        }
    }
}