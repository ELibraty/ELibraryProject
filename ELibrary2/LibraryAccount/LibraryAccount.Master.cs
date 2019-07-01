using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibrary2.LibraryAccount
{
    public partial class LibraryAccount : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

        }
    }
}