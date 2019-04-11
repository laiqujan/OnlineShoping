using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace OnlineShoping
{
    public partial class LogIn : System.Web.UI.Page
    {
        SqlConnection sqlConnection1;
        protected void Page_Load(object sender, EventArgs e)
        {
        Session["username"]=null;
        }

        protected void signIn_Click(object sender, EventArgs e)
        {
            try
            {   String un = Request.Form["username"];
                String pas = Request.Form["password"];
                sqlConnection1 = new
       SqlConnection("Data Source=(local);Initial Catalog=OnlineShoping;Integrated Security=True");
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();

                cmd.Connection = sqlConnection1;
                sqlConnection1.Open();
                String q = "Select * from Register where Username='" + un + "'and pass='" + pas + "'";
                cmd = new SqlCommand(q, sqlConnection1);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                int i = 0;
                while (dr.Read())
                {
                    i++;
                }
                if (i == 1)
                {
                    Session["username"] =un;
                  
                    Response.Redirect("UserHome.aspx");
                }
                else
                {
                    if (un == "Admin" && pas == "123")
                    {
                        Session["username"] = un;
                     
                        Response.Redirect("Admin.aspx");
                    }
                    else
                    {
                        Session["username"] = null;
                        Label1.Text = "                  Invalid UserName/Password";
                       
                    }
                }

                sqlConnection1.Close();

           }
            catch (SqlException ex)
            {
                String a = ex.Message.ToString();
                Label1.Text = "                  Invalid UserName/Password";
              
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

        protected void forgot_Click(object sender, EventArgs e)
        {
           
            RequiredFieldValidator2.EnableClientScript = false;
            RequiredFieldValidator3.EnableClientScript = false;
            RequiredFieldValidator2.Enabled = false;
            RequiredFieldValidator3.Enabled = false;
        }
    }
}