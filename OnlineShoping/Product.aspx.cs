using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace OnlineShoping
{
    public partial class Product : System.Web.UI.Page
    {
        SqlConnection sqlConnection1;
        String add;
        String nam;
        String p;
        String q;
        protected void Page_Load(object sender, EventArgs e)
           
        {
            //Response.Write(Session["selectedIndex"].ToString());

            try
            {
                String  un = Session["selectedIndex"].ToString();
                sqlConnection1 = new
       SqlConnection("Data Source=(local);Initial Catalog=OnlineShoping;Integrated Security=True");
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();

                cmd.Connection = sqlConnection1;
                sqlConnection1.Open();
                String q1 = "Select DISTINCT Picadd,Name,Price,Quantity from Item where Name= '" + un + "'";
                cmd = new SqlCommand(q1, sqlConnection1);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                dr.Read();
                add = dr["Picadd"].ToString();
                nam = dr["Name"].ToString();
                 p = dr["Price"].ToString();
                 q = dr["Quantity"].ToString();
                Image1.ImageUrl = add;
                name.Text = nam;
                qu.Text = q;
                price.Text = p;
            }
            catch (SqlException ex)
            {
                string a = ex.Message;
            }




           
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            int totalPrice= 0;
            int quan= 0;
            int pric = 0;
            String color=RadioButtonList1.SelectedItem.ToString();
            String size = RadioButtonList2.SelectedItem.ToString();
            try {
                quan = int.Parse(quantity.Text);
                pric = int.Parse(price.Text);
                totalPrice = quan * pric;
                
            }
            catch (InvalidCastException ex)
            {

            }
            
            String nam = name.Text;
            Session["ProductName"] = nam;
            String picadd = Image1.ImageUrl;
            String username = user.Text;
            int c=0;
            sqlConnection1 = new
 SqlConnection("Data Source=(local);Initial Catalog=OnlineShoping;Integrated Security=True");
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();

            cmd.Connection = sqlConnection1;
            sqlConnection1.Open();
            String q = "Select Distinct *from Item where Name='"+nam+"' and Color='"+color+"' and Size='"+size+"' and Quantity>="+quan+"";
            cmd = new SqlCommand(q, sqlConnection1);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            int i = 0;
            Boolean isAvailable = false;
            while (dr.Read())
            {
                i++;
            }
            if (i == 1)
            {
                isAvailable = true;
            }
            else
            {
                isAvailable = false;
            }
           
            if(isAvailable){
                try
            {
                sqlConnection1 = new
               SqlConnection("Data Source=(local);Initial Catalog=OnlineShoping;Integrated Security=True");
               
                cmd.CommandType = System.Data.CommandType.Text;
      cmd.CommandText = "insert into ItemOrder values('" + user.Text + "','" + nam + "','" + quan + "', '" + pric + "','" +totalPrice + "','" + picadd+ "'," +c+ ")";
                cmd.Connection = sqlConnection1;
                sqlConnection1.Open();
                cmd.ExecuteNonQuery();
                sqlConnection1.Close();
                Response.Redirect("ShopingCart.aspx");
               }
            catch (SqlException ex)
            {
                message.Text = ex.Message;

            }

            }else{
                message.Text = "Selected Quantity not Available";
            }
            
        }
    }
}