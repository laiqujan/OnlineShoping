using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShoping
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["ImageUrl"] = "";
            Session["ImageName"] = "";
            Session["ImageDis"] = "";
            Session["ImageQuantity"] = "";


            if (Session["username"]!=null)
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["ImageUrl"] = Image1.ImageUrl;
            Session["ImageName"] = "ANDROID CREED";
            if (Session["username"] != null)
            {
                Response.Redirect("UserHome.aspx");
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
            
          
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["ImageUrl"] = Image2.ImageUrl;
            Session["ImageName"] = "ASSASSIN'S CREED";
            if (Session["username"] != null)
            {
                Response.Redirect("UserHome.aspx");
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
            

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["ImageUrl"] = Image3.ImageUrl;
            Session["ImageName"] = "ATTITUDE CREDD";
            if (Session["username"] != null)
            {
                Response.Redirect("UserHome.aspx");
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
            

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["ImageUrl"] = Image4.ImageUrl;
            Session["ImageName"] = "BEARD BLACK";
            if (Session["username"] != null)
            {
                Response.Redirect("UserHome.aspx");
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
            

        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["ImageUrl"] = Image5.ImageUrl;
          
            Session["ImageName"] = "PAKISTAN BLACK";
            if (Session["username"] != null)
            {
                Response.Redirect("UserHome.aspx");
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
            

        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Session["ImageUrl"] = Image6.ImageUrl;
           
            Session["ImageName"] = "MTV";
            if (Session["username"] != null)
            {
                Response.Redirect("UserHome.aspx");
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
            
           
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            Session["ImageUrl"] = Image7.ImageUrl;
            
            Session["ImageName"] = "MONSTER ENERGY";
            if (Session["username"] != null)
            {
                Response.Redirect("UserHome.aspx");
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
            

        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            Session["ImageUrl"] = Image8.ImageUrl;
          
            Session["ImageName"] = "HUGZ";
            if (Session["username"] != null)
            {
                Response.Redirect("UserHome.aspx");
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
            

        }
        protected void Shop_Click(object sender, EventArgs e)
        {
           

           
            if (Session["username"] != null)
            {
                Response.Redirect("ShopingCart.aspx");
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }


        }
        protected void Check_Click(object sender, EventArgs e)
        {
          
            if (Session["username"] != null)
            {
                Response.Redirect("CheckOut.aspx");
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }


        }
    }
}