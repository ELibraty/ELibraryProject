using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ELibrary2.LibraryAccount
{
    public class AddBook
    {
        private string bookName, authorName;
        private string genre, bookCode;
        private List<string> errors;
        private int userId, genreId;
        public AddBook(int userId, string bookName, string authorName, string genre, string bookCode)
        {
            this.BookName = bookName;
            this.AuthorName = authorName;
            this.Genre = genre;
            this.Errors = new List<string>();
            this.UserId = userId;
            this.BookCode = bookCode;

            DBClass db = new DBClass();
            string query = $"Select* from Genres where genre='{this.Genre}';";
            DataTable dtbl = db.SelectQueryFromDB(query);
            int idGenre = int.Parse(dtbl.Rows[0][0].ToString());
            this.GenreId = idGenre;
        }
        
        public string BookName { get => bookName; set => bookName = value; }
        public string Genre { get => genre; set => genre = value;}
        public string AuthorName { get => authorName; set => authorName = value; }
        public List<string> Errors { get => errors; private set => errors = value; }
        private int UserId { get => userId; set => userId = value; }
        public string BookCode { get => bookCode; set => bookCode = value; }
        private int GenreId { get => genreId; set => genreId = value; }

        //Add new book
        public void AddNewBook()
        {
            try
            {
                CheckDublicateBook();
                if (this.Errors.Count == 0) AddNewBookAtDB();
                else this.Errors.Add("Има грешка");
            }
            catch (Exception)
            {
                this.Errors.Add("Нещо се обърка!");
            }

        }

        private void CheckDublicateBook()
        {
            try
            {
                string bookName = this.BookName;
                string authorName = this.AuthorName;
                string genre = this.Genre;
                DBClass db = new DBClass();
                int idGenre = this.GenreId;
                int id = db.GetMaxID("Books");
                string bookCode = this.bookCode;
                //add book at db
                string query = $"Select* from Books  Where library_id='{this.UserId}' and " +
                    $"book_name='{this.BookName}' and  author='{authorName}';";
                DataTable dtbl = db.SelectQueryFromDB(query);
                if (dtbl.Rows.Count == 0)
                {
                    query = $"Select* from Books Where book_code='{this.BookCode}';";
                    dtbl = db.SelectQueryFromDB(query);
                    if (dtbl.Rows.Count> 0) this.Errors.Add("Номера на книгата се доблира с друг номер!");
                }
                else this.Errors.Add("Тази книга с този автор е била добавена!");
            }
            catch (Exception)
            {
                this.Errors.Add("Нещо се обърка!");
            }

        }

        private void AddNewBookAtDB()
        {
            try
            {
                string bookName = this.BookName;
                string authorName = this.AuthorName;
                string genre = this.Genre;
                DBClass db = new DBClass();
                int idGenre = this.GenreId;
                int id = db.GetMaxID("Books");
                string bookCode = this.bookCode;
                //add book at db
                string query = $"INSERT INTO Books (id,library_id, book_name, author, genre_id,book_code) " +
                $"VALUES ('{id}','{this.UserId}', '{bookName}', '{authorName}','{idGenre}',{bookCode});";
                db.InsertQueryAtDB(query);
            }
            catch (Exception)
            {
                this.Errors.Add("Нещо се обърка!");
            }

        }
    }
}