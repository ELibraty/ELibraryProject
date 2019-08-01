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
        //constructor
        public AddBook(int userId, string bookName, string authorName, string genre, string bookCode)
        {
            this.Errors = new List<string>();

            this.BookName = bookName;

            this.AuthorName = authorName;
            this.Genre = genre;
            this.UserId = userId;
            this.BookCode = bookCode;
            if (this.Genre != "Жанр")
            {
                DBClass db = new DBClass();
                string query = $"Select* from Genres where genre='{this.Genre}';";
                DataTable dtbl = db.SelectQueryFromDB(query);
                if (dtbl.Rows.Count > 0)
                {
                    int idGenre = int.Parse(dtbl.Rows[0][0].ToString());
                    this.GenreId = idGenre;
                }
                else this.Errors.Add("Този жанр не е намерен в базата данни!");
                
            }
            else this.Errors.Add("Изберете жанр!");
        }

        //capsulation
        public string BookName { get => bookName;
            set{
                if (value.Length <= 3) this.Errors.Add("Името на книгата трябва да съдържа минимум 3 символа!");
                bookName = value;
                
            }
        }
        public string Genre { get => genre;
            set{
                //if (value.Length < 1) this.Errors.Add("Моля изберете жанр!");
                genre = value;
            }
        }
        public string AuthorName { get => authorName;
            set{
                if (value.Length <= 3) this.Errors.Add("Името на автора трябва да съдържа минимум 3 символа!");
                authorName = value;
            }
        }
        public List<string> Errors { get => errors; private set => errors = value; }
        private int UserId { get => userId; set => userId = value; }
        public string BookCode { get => bookCode;
            set{
                if (value.Length <= 3) this.Errors.Add("Кода на книгата трябва да съдържа минимум 3 символа!");
                bookCode = value;
            }
        }
        private int GenreId { get => genreId; set => genreId = value; }

        //Add new book
        public void AddNewBook()
        {
            try
            {
                CheckDublicateBook();
                if (this.Errors.Count == 0) AddNewBookAtDB();
               
            }
            catch (Exception)
            {
                this.Errors.Add("Нещо се обърка!");
            }

        }

        //Check Dublicate Book at DB
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
                    $"book_name='{this.BookName}' and  author='{authorName}' and book_code='{this.BookCode}';";
               DataTable dtbl = db.SelectQueryFromDB(query);
               if (dtbl.Rows.Count> 0) this.Errors.Add("Книгата се доблира с друга!");            
            }
            catch (Exception)
            {
                this.Errors.Add("Нещо се обърка!");
            }

        }

        //Add new book at DB
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
                $"VALUES ('{id}','{this.UserId}', '{bookName}', '{authorName}','{idGenre}','{bookCode}');";
                //this.Errors.Add($"query insert= {query}");
                db.InsertQueryAtDB(query);
            }
            catch (Exception)
            {
                this.Errors.Add("Нещо се обърка!");
            }

        }
    }
}