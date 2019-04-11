using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace OnlineShoping
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection sqlConnection1;
        System.Data.SqlClient.SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String un=Request.Form["username"];
            String pas = Request.Form["password"];
            String conpas = Request.Form["confpassword"];
            String email = Request.Form["email"];
            String mobileno = Request.Form["mobileno"];
            String add1 = Request.Form["address1"];
            String add2 = Request.Form["address2"];
            String city = Request.Form["city"];
            String postcode = Request.Form["postcode"];
           
            try
            {
                sqlConnection1 = new
               SqlConnection("Data Source=(local);Initial Catalog=OnlineShoping;Integrated Security=True");
                cmd = new System.Data.SqlClient.SqlCommand();
                cmd.CommandType = System.Data.CommandType.Text;
  cmd.CommandText = "insert into Register values('" + un + "','" +pas + "','" + email + "', '"+mobileno+"','"+add1+"','"+add2+"',"+postcode+",'"+city+"')";
                cmd.Connection = sqlConnection1;
                sqlConnection1.Open();
                cmd.ExecuteNonQuery();
                sqlConnection1.Close();
                Response.Redirect("SuceesRegisteration.aspx");

            }
            catch (SqlException ex)
            {
                Invalid.Text = "User Name not Available";

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