using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ELibrary2.LibraryAccount
{
    public class DeleteBook
    {
        private List<string> errors;
        private int bookId;
        public int BookId { get => bookId; set => bookId = value; }
        public List<string> Errors { get => errors; set => errors = value; }

        //Constructor
        public DeleteBook(int bookId)
        {
            this.Errors = new List<string>();
            this.BookId = bookId;     
        }

        //Delete book from DB
        public void Delete()
        {
            try
            {
                int bookId = this.BookId;                
                //delete book at db
                string query = $"Delete from Books  Where id='{bookId}';";
                DBClass db = new DBClass();
                db.DeleteRow(query);
            }
            catch (Exception)
            {
                this.Errors.Add("Нещо се обърка!");
            }
        }
    }
}