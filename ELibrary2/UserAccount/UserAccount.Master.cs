using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibrary2.UserAccount
{
    public partial class UserAccount : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["UserId"] != null)
            {
                int userId = int.Parse((string)Session["UserId"]);
                User user = new User(userId);
                lblUserName.Text =user.UserName;
            }
            else
            {
                try
                {
                    Session.Clear();
                }
                catch (Exception)
                {
                    throw;
                }
                Response.Redirect("../Default.aspx");
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("../Default.aspx");

        }
    }
}