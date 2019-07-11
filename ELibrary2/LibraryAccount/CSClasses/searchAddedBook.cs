﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace ELibrary2.LibraryAccount
{
    public class SearchAddedBook
    {

        private string bookName, authorName;
        private string genre, bookCode, sortMethod;
        private List<string> errors;
        private int userId, genreId, countBookAtPage;
        public SearchAddedBook(int userId, string bookName,
            string authorName, string genre, string bookCode, string sortMethod,
            int currentPage, int countBookAtPage)
        {
            this.BookName = bookName;
            this.Errors = new List<string>();
            this.CountBookAtPage = countBookAtPage;
            this.AuthorName = authorName;
            this.Genre = genre;
            this.UserId = userId;
            this.BookCode = bookCode;
            this.SortMethod = sortMethod;
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
        public string SortMethod { get => sortMethod; set => sortMethod = value; }
        public int CountBookAtPage { get => countBookAtPage; set => countBookAtPage = value; }

        public DataTable GetAddedBook()
        {
            DBClass db = new DBClass();
            int userId = this.UserId;
            //, ROW_NUMBER() OVER (ORDER BY Name DESC) AS ID
            string ordeyBy = $"ORDER BY book_name DESC";
            string sortMethod=this.SortMethod;
            switch (sortMethod)
            {
                case "Име на книгата А-Я":ordeyBy = $"ORDER BY book_name ASC";break;
                case "Име на книгата Я-А": ordeyBy = $"ORDER BY book_name DESC"; break;

                case "Име на автора А-Я": ordeyBy = $"ORDER BY author ASC"; break;
                case "Име на автора Я-А": ordeyBy = $"ORDER BY author DESC"; break;

                case "Код на книгата А-Я": ordeyBy = $"ORDER BY book_code ASC"; break;
                case "Код на книгата Я-А": ordeyBy = $"ORDER BY book_code DESC"; break;

                case "Жанр А-Я": ordeyBy = $"ORDER BY genre ASC"; break;
                case "Жанр Я-А": ordeyBy = $"ORDER BY genre DESC"; break;

                default: ordeyBy = $"ORDER BY book_name ASC"; break;
            }
            string query = $"Select ROW_NUMBER() OVER ({ordeyBy}) AS id, book_code, book_name, author, Genres.genre as genre";
            query += $" from Books Inner join Genres On Genres.id=Books.genre_id ";
            query += $" where library_id='{userId}'";
            if (this.BookName != "") query+=$" and book_name LIKE '%{this.BookName}%'";
            if (this.AuthorName != "") query += $" and author LIKE '%{this.AuthorName}%'";
            if (this.BookCode != "") query += $" and book_code LIKE '%{this.BookCode}%'";

            if (this.GenreId != -1) query += $" and genre_id='{this.GenreId}'";

            query += $" {ordeyBy};";
            DataTable dtbl = db.SelectQueryFromDB(query);
            return dtbl;
        }

        public int GetPagesOfAddedBook()
        {
            DBClass db = new DBClass();
            int userId = this.UserId;
            //, ROW_NUMBER() OVER (ORDER BY Name DESC) AS ID
           
            string query = $"Select COUNT(*) from Books";
            query += $" where library_id='{userId}'";
            if (this.BookName != "") query += $" and book_name LIKE '%{this.BookName}%'";
            if (this.AuthorName != "") query += $" and author LIKE '%{this.AuthorName}%'";
            if (this.BookCode != "") query += $" and book_code LIKE '%{this.BookCode}%'";

            if (this.GenreId != -1) query += $" and genre_id='{this.GenreId}'";
            
            query += $";";
            DataTable dtbl = db.SelectQueryFromDB(query);

            int rowsCount = 1;
            if(dtbl.Rows.Count>0) rowsCount=int.Parse(dtbl.Rows[0][0].ToString());
            int countBookAtPage = this.countBookAtPage;
            int pages =  rowsCount/ countBookAtPage;
            if (rowsCount % countBookAtPage > 0) pages++;
            return pages;
        }
    }
}