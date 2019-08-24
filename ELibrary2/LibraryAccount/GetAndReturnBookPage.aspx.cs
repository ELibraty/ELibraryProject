using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibrary2.LibraryAccount
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void GetBook_Click(object sender, EventArgs e)
        {
            string userName = txtUserReaderName.Text;
            string bookName = txtBookReaderName.Text;
            int userId = int.Parse(Session["UserId"].ToString());
            GetBook getBook = new GetBook(userName, bookName, userId);
            getBook.Getting();
            if (getBook.Errors.Count == 0)
            {
                lblSuccessfulGetBookMessage.Text = "Успешно регистриране на вземане на книга за четене!";
                lblSuccessfulGetBookMessage.Visible = true;
                lblFailedGetBookMessage.Visible = false;
            }
            else
            {
                lblFailedGetBookMessage.Text = string.Join("<br/>", getBook.Errors);
                lblSuccessfulGetBookMessage.Visible = false;
                lblFailedGetBookMessage.Visible = true;
            }

        }
    }
}