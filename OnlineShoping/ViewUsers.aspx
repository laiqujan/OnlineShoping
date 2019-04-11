<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="OnlineShoping.ViewUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>::ManagementPage</title>
   <style>
#m{
       height:100px;
       position:fixed;
       width:1510px;
       margin-left:-15px;
       margin-top:-10px;

      
        }
        a{
             text-decoration:none;
             text-decoration-color:aqua;
             color:silver;
         }
          
    
   </style>
</head>
<body style="background-color:silver">
    <form  runat="server">
      <div  id="m" style="background-color: #333333">
     <div id="in">
         <table cellpadding="15px">
             <tr>
            <td><a href="Admin.aspx">
<img src="Content/images/logo-sylifyd.png" /></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="Content/images/header-cod.png" /></td>
             <td>
                 <asp:Label ID="user" runat="server" Text="" ForeColor="White"></asp:Label></td>
                 <td>
                     <asp:Menu ID="Menu1" runat="server" BackColor="#333333" DynamicHorizontalOffset="2"
                          Font-Names="Verdana" Font-Size="0.8em" 
                         ForeColor="white" StaticSubMenuIndent="10px" Orientation="Horizontal">
                         <DynamicHoverStyle BackColor="#333333" ForeColor="White" />
                         <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                         <DynamicMenuStyle BackColor="#333333" />
                         <DynamicSelectedStyle BackColor="#333333" />
                         <Items>
                    <asp:MenuItem Text="My Account" Value="My Account">
                        <asp:MenuItem Text="ViewUsers" Value="ViewUsers"  NavigateUrl="ViewUsers.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="SignOut" Value="SignOut"  NavigateUrl="LogIn.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
               </asp:Menu></td>
                       <td ><a href="Adminhome.aspx" style="font-weight:800;color:white" >Add Item</a></td>
                         <td><a href="UpdateItem.aspx" style="font-weight:800;color:white" >Update Item/Delete Item</a></td>
                         <td ><a href="ViewOrder.aspx" style="font-weight:800;color:white">View Orders</a></td>
                        
                       
                   </tr>
                </table>
               
             
              </div></div> <br /><br /><br /><br /><br /><br />
         
          <h1 style="margin-left:100px; font-style:italic;color:aliceblue">
             SEE THE TOTAL REGISTERSED USERS ON YOUR SITE::</h1>
       <div style="margin-left:100PX; width: 960px;">  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Username" DataSourceID="SqlDataSource1" Width="966px">
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                <asp:BoundField DataField="pass" HeaderText="Password" SortExpression="pass" />
                <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                <asp:BoundField DataField="mobileno" HeaderText="MobileNo" SortExpression="mobileno" />
                <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                <asp:BoundField DataField="Address2" HeaderText="Address2(Optional)" SortExpression="Address2" />
                <asp:BoundField DataField="postcode" HeaderText="Postcode" SortExpression="postcode" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineShopingConnectionString8 %>" SelectCommand="SELECT DISTINCT * FROM [Register]"></asp:SqlDataSource>
           </div>
    </form>
</body>
</html>