using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace OnlineShoping
{
    public partial class ShopingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["conf"] = "0";
            if (Session["username"] != null)
            {
                user.Text = Session["username"].ToString();
                Menu1.Items[0].ChildItems[1].Text = "Logout";
                Menu1.Items[0].ChildItems[0].Text = "Order History";
                Menu1.Items[0].ChildItems[0].NavigateUrl = "OrderHistory.aspx";
               
            }
            try
            {
                int j=0;
                SqlConnection sqlConnection1 = new
                    SqlConnection("Data Source=(local);Initial Catalog=OnlineShoping;Integrated Security=True");
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                cmd.Connection = sqlConnection1;
                sqlConnection1.Open();
                String q = " Select TotalPrice from ItemOrder where Username='" + user.Text + "' and isConformed="+j+"";
                cmd = new SqlCommand(q, sqlConnection1);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                int totalprice = 0;
                while (dr.Read())
                {
                    totalprice =totalprice + int.Parse(dr["TotalPrice"].ToString());
                }
                
            TextBox1.Text = totalprice.ToString();
            }
            catch (SqlException ex)
            {

            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            SqlConnection sqlConnection1 = new
SqlConnection("Data Source=(local);Initial Catalog=OnlineShoping;Integrated Security=True");
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.Connection = sqlConnection1;
            sqlConnection1.Open();
            String name = Session["ProductName"].ToString();
            int i = 1;
            String q = " Update ItemOrder set isConformed="+i+" where Name='"+name+"'";
            cmd = new SqlCommand(q, sqlConnection1);
            cmd.ExecuteNonQuery();
            Response.Redirect("Checkout.aspx");
        }

        protected void OnDelete(object sender, GridViewDeletedEventArgs e)
        {
            try
            {
                SqlConnection sqlConnection1 = new
                    SqlConnection("Data Source=(local);Initial Catalog=OnlineShoping;Integrated Security=True");
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                cmd.Connection = sqlConnection1;
                sqlConnection1.Open();
                String q = " Select TotalPrice from ItemOrder where Username='" + user.Text + "'";
                cmd = new SqlCommand(q, sqlConnection1);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                int totalprice = 0;
                while (dr.Read())
                {
                    totalprice = totalprice + int.Parse(dr["TotalPrice"].ToString());
                }

                TextBox1.Text = totalprice.ToString();
            }
            catch (SqlException ex)
            {

            }
        }

       

        

        
    }
}