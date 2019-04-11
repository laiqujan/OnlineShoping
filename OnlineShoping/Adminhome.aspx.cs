using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Caching;
using System.Data.SqlClient;



namespace OnlineShoping
{
    public partial class Adminhome : System.Web.UI.Page
    {
        //int id = 0;
         SqlConnection sqlConnection1;

         System.Data.SqlClient.SqlCommand cmd;
         protected void Page_Load(object sender, EventArgs e)
         {
             user.Text = Session["username"].ToString();
     //        sqlConnection1 = new
     //SqlConnection("Data Source=(local);Initial Catalog=OnlineShoping;Integrated Security=True");
     //        cmd = new System.Data.SqlClient.SqlCommand();
     //        sqlConnection1.Open();
     //        String q1 = "Select Max(ID) as max from Item";
     //        cmd = new SqlCommand(q1, sqlConnection1);
     //        SqlDataReader dr;
     //        dr = cmd.ExecuteReader();
     //        try
     //        {
                 
     //                while (dr.Read())
     //                {
     //                    id = int.Parse(dr["max"].ToString());
     //                    id = id + 1;
     //                }
                 
     //        }
     //        catch (SqlException ex)
     //        {
     //            Response.Write(ex.Message);
     //        }
     //        if (id == 0)
     //        {
     //            id = 1;
     //        } 
            
             
         }
         protected void Button1_Click(object sender, EventArgs e)
         {
             String filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
             FileUpload1.SaveAs(Server.MapPath("~/image/" + filename));
             Image1.ImageUrl = "~/image/" + filename;
         }

        protected void save_Click(object sender, EventArgs e)
        {
            String n = Request.Form["Pname"];
            String p = Request.Form["Price"];
            String q = Request.Form["PQuantity"];
            String color = DropDownList1.SelectedItem.Text;
            String size = DropDownList2.SelectedItem.Text;
            String des = Request.Form["des"];
            String picad = Image1.ImageUrl;
       
           
            try
            {
               sqlConnection1 = new
               SqlConnection("Data Source=(local);Initial Catalog=OnlineShoping;Integrated Security=True");
                cmd = new System.Data.SqlClient.SqlCommand();
                sqlConnection1.Open();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "insert into Item values('" + n + "','" + q + "','" + des + "', '" + color + "','" + size + "','" + p + "','" + picad + "')";
                cmd.Connection = sqlConnection1;
                cmd.ExecuteNonQuery();
                sqlConnection1.Close();
                PName.Text = "";
                Price.Text = "";
                PQuantity.Text = "";
               
                Label1.Text = "Record Added SuccessFully";
            }
            catch (SqlException ex)
            {
                String dd = ex.Message;
                Label1.Text =dd;
            }   

                 sqlConnection1.Close();

        }

       
    }
}