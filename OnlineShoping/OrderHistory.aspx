﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="OnlineShoping.OrderHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>::OrderHistory</title>
   <style>
        #inner{
            //margin-left:600px;
        }
        a{
            text-decoration:none;
            color:white;
        }
        #outer{
       height:102px;
       position:fixed;
       width:1510px;
       margin-left:-15px;
       margin-top:-10px;
        }
        #in1{
       height:100px;
       position:fixed;
       width:1510px;
       margin-left:-15px;
      }
        #k{
            margin-left:180px;
        }
          #footer{
            border-top: 5px solid #0099FF;
            z-index: 2;
            margin-left: -8px;
            background-color: #333333;
            color: #CCCCCC;
            width:101%;
            height:377px;
            
            }
a{ 
 color: #CCCCCC;
 list-style:none;
 font-weight:800;
}
#pr{
  margin-left: 340px;
  margin-top: 640px;
  color:blue; }
a{
text-decoration:none;
 }
      
        .auto-style1 {
            height: 79px;
        }
   </style>
</head>
<body style="background-color:silver">
    <form id="form1" runat="server">
    <div  id="outer" style="background-color: #333333">
     <div id="inner">
         <table cellpadding="20px"><tr>
            <td><a href="Home.aspx">
<img src="Content/images/logo-sylifyd.png" /></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="Content/images/header-cod.png" /></td>
             <td>
                 <asp:Label ID="user" runat="server" Text="" ForeColor="White"></asp:Label></td>
                 <td>
                     <asp:Menu ID="Menu1" runat="server" BackColor="#333333" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                         ForeColor="white" StaticSubMenuIndent="10px" Orientation="Horizontal">
                         <DynamicHoverStyle BackColor="#333333" ForeColor="White" />
                         <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                         <DynamicMenuStyle BackColor="#333333" />
                         <DynamicSelectedStyle BackColor="#333333" />
                         <Items>
                             <asp:MenuItem Text="My Account" Value="My Account">
                                 <asp:MenuItem Text="Register" Value="Register" NavigateUrl="Register.aspx"></asp:MenuItem>
                                 <asp:MenuItem Text="SigIn" Value="SigIn" NavigateUrl="LogIn.aspx"></asp:MenuItem>
                             </asp:MenuItem>
                         </Items>
                         <StaticHoverStyle BackColor="#333333" ForeColor="White" />
                         <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                         <StaticSelectedStyle BackColor="#333333" />
                     </asp:Menu>
                 </td>
               

          <td><a href="ShopingCart.aspx" style="font-weight:800;color:white">Shopping cart</a></td>
                     <td><a href="CheckOut.aspx" style="font-weight:800;color:white">Check out</a></td>
              <td style="color:white"><asp:Label ID="Label2" runat="server"  Text="+9237992397479"></asp:Label></td>
                </tr></table>
     </div>
   </div> <br /><br /><br /><br /><br /><br />
            <h1 style="margin-left:140px;color:steelblue;font-style:italic;font-size:30px;
text-decoration:underline;">Your Order History is here...</h1>
        <br />
        <div style="margin-left:150px; width: 998px;">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
            GridLines="None" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ONumber" DataSourceID="SqlDataSource1" Width="987px">
            <Columns>
                <asp:ImageField DataImageUrlField="Picadd" HeaderText="Image">
                </asp:ImageField>
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="ONumber" HeaderText="ONumber" InsertVisible="False" ReadOnly="True" SortExpression="ONumber" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" />
                <asp:BoundField DataField="isConformed" HeaderText="isConformed" SortExpression="isConformed" />
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

        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineShopingConnectionString8 %>" 
            SelectCommand="SELECT * FROM [ItemOrder] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="user" Name="Username" PropertyName="Text" Type="String" />
            </SelectParameters>
            </asp:SqlDataSource>
       <br />
            <div style="margin-left:805px;width:180px">
              <asp:LinkButton ID="LinkButton1" runat="server" Width="180" BackColor="Black" Height="30" ForeColor="White"
                      PostBackUrl="~/UserHome.aspx">ContinueShoping...</asp:LinkButton>    
        </div>
            </div>
        
        <div id="footer" style="margin-top:100px">
        <table style="margin-left:270px; height: 269px; width: 44%;" cellpadding="2px">
            <th class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INFORMATION</th><th class="auto-style1">EXTRAS</th><th class="auto-style1">
            <br />
            CUSTOMER 
            <br />
            SERVICE</th><th class="auto-style1">MY ACCOUNNT</th>
            
            <tr>
             <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;
                     <a href="AboutUs.aspx">About Us</a></td>
             <td>&nbsp;&nbsp;<a href="Home.aspx">Brands</a>
             <td>&nbsp;&nbsp;&nbsp;&nbsp; <a href="ContactUs.aspx">Contact Us</a>
             <td>&nbsp;&nbsp;&nbsp; &nbsp;<a href="LogIn.aspx">My Account</a></tr>
            
            <tr> 
             <td style="height: 5px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<a href="FAQ.aspx" >FAQ</a></td>
             <td style="height: 5px">&nbsp;&nbsp;<a href="Home.aspx">Specials</a></td>
             <td style="height: 5px">&nbsp;&nbsp;&nbsp;&nbsp; <a>Return</a></td>
             <td style="height: 5px">&nbsp;&nbsp;&nbsp;&nbsp; <a>Order History</a></td>
             </tr> <tr>
               <td>&nbsp;<a href="PrivacyPolicy.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Privacy Policy</a></td>
               <td>&nbsp;&nbsp;</td>
               <td>&nbsp;&nbsp;</td>
               <td>&nbsp;&nbsp;&nbsp; &nbsp;<a>Wish List</a></td></tr>
             <tr>
               <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="TermsConditions.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Terms & Conditions</a></td>
               </tr>

                 </table>
        <hr style="height: -12px"></hr>
<pre style="width: 330px" style="height: 5px">                             
                                                                                   All Contents, Designs, Concepts &amp;
                                                                                     Rights Reserved . Copyright&copy; 
                                                                                              by KaZmi's</pre>
     <hr style="height: -12px"></hr> </div>
         
       </form>
</body>
</html>
