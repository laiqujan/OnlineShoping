using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShoping
{
    public partial class FAQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                user.Text = Session["username"].ToString();
                Menu1.Items[0].ChildItems[1].Text = "Logout";
                Menu1.Items[0].ChildItems[0].Text = "Order History";
            }
        }
    }
}