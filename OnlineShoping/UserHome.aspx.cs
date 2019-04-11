using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShoping
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            Session["ImageUrl"] = "";
            Session["ImageName"] = "";
            Session["ImageDis"] = "";
            Session["ImageQuantity"] = "";


            if (Session["username"] != null)
            {
                user.Text = Session["username"].ToString();
                Menu1.Items[0].ChildItems[1].Text = "Logout";
                Menu1.Items[0].ChildItems[0].Text = "Order History";
                Menu1.Items[0].ChildItems[0].NavigateUrl = "OrderHistory.aspx";
            }
            else
            {

            }

        }

        
        protected void Button5_Click(object sender, EventArgs e)
        {
           // Session["ImageUrl"] = Image5.ImageUrl;

            Session["ImageName"] = "PAKISTAN BLACK";
            Response.Redirect("Product.aspx");

        }
        protected void Button6_Click(object sender, EventArgs e)
        {
           // Session["ImageUrl"] = Image6.ImageUrl;

            Session["ImageName"] = "MTV";
            Response.Redirect("Product.aspx");

        }
        protected void Button7_Click(object sender, EventArgs e)
        {
           // Session["ImageUrl"] = Image7.ImageUrl;

            Session["ImageName"] = "MONSTER ENERGY";
            Response.Redirect("Product.aspx");

        }
        protected void Button8_Click(object sender, EventArgs e)
        {
          //  Session["ImageUrl"] = Image8.ImageUrl;

            Session["ImageName"] = "HUGZ";
            Response.Redirect("Product.aspx");

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
          // String i = GridView1.SelectedIndex.ToString();
            Session["selectedIndex"] = GridView1.Rows[GridView1.SelectedIndex].Cells[0].Text.ToString();
            Response.Redirect("Product.aspx");
          
        }

       

       
    }
}