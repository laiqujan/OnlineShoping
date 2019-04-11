<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="OnlineShoping.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>::Product of Pakistan's Best T Shirt Brand</title>
    <style>
          #inner{
          //  margin-left:600px;
        }
        a{
            text-decoration:none;
            color:white;
        }
        #outer{
       height:100px;
     position:fixed;
       width:1510px;
       margin-left:-15px;
       margin-top:-10px;
    
        }
        #in1{
       height:120px;
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
}
#pr{
  margin-left: 340px;
  margin-top: 640px;
  color:blue; }
a{
text-decoration:none;
font-weight:800;
 }
      
        .auto-style1 {
            height: 79px;
        }
        
        .auto-style5 {
            width: 184px;
            height: 86px;
        }
        .auto-style6 {
            height: 275px;
        }
        
        </style>
</head>
<body style="background-color:white">
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
                    <td style="color:white"><asp:Label ID="Label1" runat="server"  Text="+9237992397479"></asp:Label></td>
                </tr></table>
     </div>
   </div> <br /><br /><br /><br /><br />
        <br /><br /><br /><br />
         <div >
             <h1 style="color:slategray;margin-left:200px;font-style:italic;text-underline-position:below;
            text-decoration-line;text-decoration:underline;">Available T-Shirts:</h1>
                
       <table align=center widht="50%" cellpadding=10 cellspacing=40>
        
<tr>
   
   <td colspan="4" class="auto-style6">
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None"
            DataKeyNames="ID,Color,Size" DataSourceID="SqlDataSource1" CellPadding="4" 
           ForeColor="SlateGray" Width="887px" SelectedRowStyle-HorizontalAlign="Justify" 
           AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
           <AlternatingRowStyle BackColor="White" ForeColor="slategray"/>
           <Columns>
               <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
               <asp:ImageField DataImageUrlField="Picadd" HeaderText="Image">
               </asp:ImageField>
               <asp:BoundField DataField="ProductDescription" SortExpression="ProductDescription" ItemStyle-Width="270" >
<ControlStyle Width="100px" ForeColor="slategray" Height="100px"></ControlStyle>

<ItemStyle Width="270px"></ItemStyle>
               </asp:BoundField>
             
               <asp:CommandField HeaderText="ADD TO CART" SelectText="ADD TO CART" ShowSelectButton="True" 
                   ItemStyle-Width="200" ControlStyle-Height="30">
               <ControlStyle BackColor="Black" ForeColor="White" />

<ItemStyle Width="200px" ForeColor="White" ></ItemStyle>
               </asp:CommandField>
             
           </Columns>
           <EditRowStyle BackColor="White" />
           <FooterStyle BackColor="White" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="White" ForeColor="White"  />
           <RowStyle BackColor="White" ForeColor="slategray" />
           <SelectedRowStyle BackColor="white" Font-Bold="True" ForeColor="slategray" HorizontalAlign="Justify" />
           <SortedAscendingCellStyle BackColor="white" />
           <SortedAscendingHeaderStyle BackColor="white" />
           <SortedDescendingCellStyle BackColor="white" />
           <SortedDescendingHeaderStyle BackColor="white" />
          
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$
            ConnectionStrings:OnlineShopingConnectionString6 %>" 
           SelectCommand="SELECT * FROM [Item]"></asp:SqlDataSource>
    </td> 
    

</tr>
</table></div>
<div id="footer">
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
