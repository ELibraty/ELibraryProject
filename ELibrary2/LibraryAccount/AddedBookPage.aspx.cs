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
            /*String newPageButton = new Button();
            newPageButton.Text = "1";
            
            string newPageButton= "<asp:Button Text="Напред > " runat="server" class="btn btn-primary btn - block" />"
            lblPages.Text += newPageButton;*/
         
        }

        private void Load_Items(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            // Do something with id
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
            string sortMethod = ddlSortAddedBook.SelectedValue;

            int countBookAtPage = int.Parse(ddlCountBookAtPage.SelectedValue);
            int currentPage = 1;
            SearchAddedBook searchAddedBook = new SearchAddedBook(userId,bookName,aucthorName,genre, bookCode, sortMethod, currentPage, countBookAtPage);
            DataTable dtbl = searchAddedBook.GetAddedBook();
            gdvAddedBook.DataSource = dtbl;
            gdvAddedBook.DataBind();

            int pagesOfAddedBook = searchAddedBook.GetPagesOfAddedBook();
            for (int i = 1; i <= pagesOfAddedBook; i++)
            {
                var button = new Button
                {
                    ID = "btnPage" + i,
                    CommandArgument = i.ToString(),
                    Text = i.ToString(),
                    OnClientClick = "btn_Click",
                    CssClass = "btn btn-primary btn-block col-1 col-sm-1 col-md-1"
                };
                button.Command += Load_Items;
                pnhPages.Controls.Add(button);

            }
        }

        void changePage(object sender, EventArgs e)
        {

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
                lblSuccessfulAddBookMessage.Text = "Успешно добавена книга!";
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
            SetAddedBook();
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

        protected void btnEdit_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}