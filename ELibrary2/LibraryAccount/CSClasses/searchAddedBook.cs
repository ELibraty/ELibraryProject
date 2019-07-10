using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace ELibrary2.LibraryAccount
{
    public class SearchAddedBook
    {

        private string bookName, authorName;
        private string genre, bookCode;
        private List<string> errors;
        private int userId, genreId;
        public SearchAddedBook(int userId, string bookName, string authorName, string genre, string bookCode)
        {
            this.BookName = bookName;
            this.Errors = new List<string>();

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
                else this.GenreId = -1;
            }
            else this.GenreId = -1;
        }

        public string BookName { get => bookName; set => bookName = value; }
        public string Genre { get => genre; set => genre = value; }
        public string AuthorName { get => authorName; set => authorName = value; }
        public List<string> Errors { get => errors; private set => errors = value; }
        private int UserId { get => userId; set => userId = value; }
        public string BookCode { get => bookCode; set => bookCode = value; }
        private int GenreId { get => genreId; set => genreId = value; }

        public DataTable GetAddedBook()
        {
            DBClass db = new DBClass();
            int userId = this.UserId;
            string query = $"Select* from Books where library_id='{userId}'";
            if (this.BookName != "") query+=$" and book_name={this.BookName}";
            if (this.authorName != "") query += $" and author={this.authorName}";
            if (this.GenreId != -1) query += $" and genre={this.GenreId}";

            query += $"order by book_name asc;";
            DataTable dtbl = db.SelectQueryFromDB(query);
            return dtbl;
        }
    }
}