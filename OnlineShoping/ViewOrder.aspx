<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewOrder.aspx.cs" Inherits="OnlineShoping.ViewOrder" %>

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
         <h1 style="margin-left:130px;color:aliceblue;font-style:italic;
text-decoration:underline">  SEE GIVEN PRODUCT ORDERS::</h1>
           <div> <div style="margin-left:130px; width: 1198px;">
            <asp:GridView ID="GridView1" 
               GridLines="None" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ONumber" DataSourceID="SqlDataSource1" Width="1069px" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:ImageField DataImageUrlField="Picadd" HeaderText="Image">
                    </asp:ImageField>
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="ONumber" HeaderText="ONumber" InsertVisible="False" ReadOnly="True" SortExpression="ONumber" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" />
                    <asp:BoundField DataField="isConformed" HeaderText="IsConformed" />
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
            
                     
             
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ 
                ConnectionStrings:OnlineShopingConnectionString8 %>"
                 SelectCommand="SELECT DISTINCT [Username], [ONumber], [Name], [Quantity], [Price], [TotalPrice], [Picadd],[isConformed] FROM [ItemOrder]"
                DeleteCommand="delete FROM [ItemOrder] where ONumber=@ONumber"
                ></asp:SqlDataSource>
            </div> </div>
         
         
   

    </form>
</body>
</html>

