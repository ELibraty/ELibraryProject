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
        int countBookAtPage, currentPage = 1, viewBookId=2;

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
            ddlGenreAdd.Items.Clear();
            ddlGenreSearch.Items.Clear();
            ddlGenreEdit.Items.Clear();
            ListItem item = new ListItem("Жанр", "Жанр");
            ddlGenreSearch.Items.Add(item);
            ddlGenreAdd.Items.Add(item);
            ddlGenreEdit.Items.Add(item);

            for (int i = 0; i < dtbl.Rows.Count; i++)
            {
                string genreName = dtbl.Rows[i][1].ToString();
                item = new ListItem(genreName, genreName);
                ddlGenreSearch.Items.Add(item);
                ddlGenreAdd.Items.Add(item);
                ddlGenreEdit.Items.Add(item);
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

            countBookAtPage = int.Parse(ddlCountBookAtPage.SelectedValue);
            SearchAddedBook searchAddedBook = new SearchAddedBook(userId, bookName, aucthorName, genre, bookCode, sortMethod, currentPage, countBookAtPage);
            DataTable dtbl = searchAddedBook.GetAddedBook();
            gdvAddedBook.DataSource = dtbl;
            gdvAddedBook.DataBind();

            int pagesOfAddedBook = searchAddedBook.GetPagesOfAddedBook();
            pnhPages.Controls.Clear();
            bool flag = false;
            for (int i = 1; i <= pagesOfAddedBook; i++)
            {
                if ((i % 10 == 0)&&(i < pagesOfAddedBook))
                {
                    flag = true;
                    break;
                }
                Button button = MakeButton(i);
                pnhPages.Controls.Add(button);


            }
            if (flag == true)
            {
                Label label = new Label();
                label.Text = "...";
                label.CssClass = "col-1 col-sm-1 col-md-1";
                pnhPages.Controls.Add(label);

                Button button = MakeButton(pagesOfAddedBook);
                pnhPages.Controls.Add(button);
            }

        }

        private Button MakeButton(int pageNumber)
        {
            
            Button button = new Button();
            button.Click += new EventHandler(changePage);
            button.Text += pageNumber.ToString();
            button.CssClass = "btn btn-primary btn-block col-1 col-sm-1 col-md-1";
            button.ID = "btnPage" + pageNumber;
            button.CommandArgument = pageNumber.ToString();
            return button;
        }

       

        protected void addNewBook_Click(object sender, EventArgs e)
        {
            int userId = int.Parse(Session["UserId"].ToString()) ;
            string bookName = txtBookNameAdd.Text;
            string authorName = txtAuthorNameAdd.Text;
            string genre = ddlGenreAdd.SelectedValue;
            string bookCode = txtBookCodeAdd.Text;
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
            txtBookNameAdd.Text="";
            txtAuthorNameAdd.Text="";
            //dropdownlist.Items.FindByValue(value).Selected
            //ddlGenreAddBook.Items[0].Selected=true;
            txtBookCodeAdd.Text="";               
        }

        protected void gdvAddedBook_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            string command = e.CommandName;
            viewBookId = int.Parse(e.CommandArgument.ToString());
            //lblDeleteBookId.Visible = false;
            if(command== "DeleteBook")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", "$('#appDeleteBook').modal('show');", true);
            }
            else if (command == "EditBook")
            {
                EditBook book = new EditBook(viewBookId);
                DataTable bookData= book.GetBookData();
                if(book.Errors.Count==0)
                {
                    //book_name, author, book_code, Genres.genre 
                    txtBookNameEdit.Text = bookData.Rows[0][0].ToString();
                    txtAuthorNameEdit.Text = bookData.Rows[0][1].ToString();
                    txtBookCodeEdit.Text = bookData.Rows[0][2].ToString();
                    ddlGenreEdit.Text= bookData.Rows[0][3].ToString();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", "$('#appEditBook').modal('show');", true);
                }
                else
                {
                    lblMyLabel.Text =string.Join("<br/>", book.Errors.ToString());
                }
            }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            viewBookId = int.Parse(lblDeleteBookId.Text);
            DeleteBook deleteBook = new DeleteBook(viewBookId);
            deleteBook.Delete();
            lblDeleteBookId.Text = $"viewBookId={viewBookId}";//string.Join(" ", deleteBook.Errors);

            SetAddedBook();
        }

        protected void btnEditBook_Click(object sender, EventArgs e)
        {
            int userId = 4;//int.Parse(Session["UserId"].ToString());
            string bookName = txtBookNameEdit.Text;
            string authorName = txtAuthorNameEdit.Text;
            string genre = ddlGenreEdit.SelectedValue;
            string bookCode = txtBookCodeEdit.Text;
            int bookId = viewBookId;
            EditBook editBook = new EditBook(userId, bookName, authorName, genre, bookCode,bookId);

            editBook.EditBookAtDB();

            if (editBook.Errors.Count == 0)
            {
                lblSuccessfulEditBookMessage.Text = "Успешно добавена книга!";
                lblSuccessfulEditBookMessage.Visible = true;
                lblFailedEditBookMessage.Visible = false;
            }
            else
            {
                lblFailedEditBookMessage.Text = string.Join("<br/>", editBook.Errors);
                lblSuccessfulEditBookMessage.Visible = false;
                lblFailedEditBookMessage.Visible = true;
            }

            // ClearAddNewBookData();
            SetAddedBook();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SetAddedBook();
        }   

        protected void changePage(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            lblMyLabel.Text = button.ID;
            string id = button.ID;
            string pageString = id.Substring(7, id.Length - 7);
            currentPage = int.Parse(pageString);
            SetAddedBook();
        }
    }
}