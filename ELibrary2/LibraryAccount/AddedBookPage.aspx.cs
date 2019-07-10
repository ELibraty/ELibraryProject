using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibrary2.LibraryAccount
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetGenreDate();
            SetAddedBook();
        }

        protected void SetGenreDate()
        {
            DBClass db = new DBClass();
            string query = $"Select* from Genres order by genre asc;";
            db.SelectQueryFromDB(query);
            DataTable dtbl = db.SelectQueryFromDB(query);
            for (int i = 0; i < dtbl.Rows.Count; i++)
            {
                string genreName = dtbl.Rows[i][1].ToString();
                ListItem item = new ListItem(genreName, genreName);
                ddlGenreSearch.Items.Add(item);
                ddlGenreAddBook.Items.Add(item);
            }
        }

        protected void SetAddedBook()
        {
            DBClass db = new DBClass();
            int userId = 4;//int.Parse(Session["UserId"].ToString());
            string bookName = txtBookNameSearch.Text;
            string aucthorName = txtAutcorNameSearch.Text;
            string genre = ddlGenreSearch.SelectedValue;
            string bookCode = txtBookCodeSearch.Text;

            SearchAddedBook searchAddedBook = new SearchAddedBook(userId,bookName,aucthorName,genre, bookCode);
            DataTable dtbl = searchAddedBook.GetAddedBook();
            gdvAddedBook.DataSource = dtbl;
            gdvAddedBook.DataBind();
        }

        protected void addNewBook_Click(object sender, EventArgs e)
        {
            int userId = int.Parse(Session["UserId"].ToString()) ;
            string bookName = txtBookName.Text;
            string authorName = txtAuthorName.Text;
            string genre = ddlGenreAddBook.SelectedValue;
            string bookCode = txtBookCode.Text;
            AddBook newBook = new AddBook(userId, bookName, authorName, genre, bookCode);
           
            newBook.AddNewBook();
        
            if (newBook.Errors.Count == 0)
            {
                lblFailedAddBookMessage.Text = "Успешно добавена книга!";
                lblSuccessfulAddBookMessage.Visible = true;
                lblFailedAddBookMessage.Visible = false;
            }
            else
            {
                lblFailedAddBookMessage.Text = string.Join("<br/>", newBook.Errors);
                lblSuccessfulAddBookMessage.Visible = false;
                lblFailedAddBookMessage.Visible = true;
            }

           // ClearAddNewBookData();

        }

        protected void newBook_Click(object sender, EventArgs e)
        {
           // ClearAddNewBookData();
        }

        private void ClearAddNewBookData()
        {
            txtBookName.Text="";
            txtAuthorName.Text="";
            //dropdownlist.Items.FindByValue(value).Selected
            //ddlGenreAddBook.Items[0].Selected=true;
            txtBookCode.Text="";               
        }

        protected void lnkButton_Click(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SetAddedBook();
        }
    }
}