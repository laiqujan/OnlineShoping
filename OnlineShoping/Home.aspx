<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OnlineShoping.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
    <title>::Product of Pakistan's Best T Shirt Brand</title>
    
        <style>
        #inner{
           // margin-left:600px;
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
        
        .auto-style2 {
            width: 184px;
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
               
                        <td><a href="ShopingCart.aspx" OnServerClick="Shop_Click" runat="server" style="font-weight:800;color:white">Shopping cart</a></td>
                     <td><a href="CheckOut.aspx" OnServerClick="Check_Click" runat="server" style="font-weight:800;color:white">Check out</a></td>
                    <td style="color:white"><asp:Label ID="Label1" runat="server"  Text="+9237992397479"></asp:Label></td>
                </tr></table>
     </div>
   </div> <br /><br /><br /><br /><br />
        
     <div style="margin-left:-3px;margin-right:-8px;background-color:whitesmoke">
      <img style="margin-left:150px" src="Content\images\anigif.gif" width="1000" height="540" alt="PAKISTAN BEST T-SHIRTS" title="PAKISTAN BEST T-SHIRTS" />
     </div>
        
         <div >

             
              <table align=center widht="50%" cellpadding=10 cellspacing=40>
        <tr><td class="auto-style2"> <h2 id="h22" style="color:slategray;font-size:16px;font-style:italic;">LATEST T-SHIRTS:</h2></td></tr>
<tr>

<td class="auto-style2"><a href="Product.aspx" OnServerClick="Button1_Click" runat="server">
    <asp:Image ID="Image1" ImageUrl="Content\images\android - 1-200x256.jpg" runat="server" /></a></td>
<td><a href="Product.aspx" OnServerClick="Button2_Click" runat="server">
    <asp:Image ID="Image2" runat="server" ImageUrl="Content\images\assassin's creed - 1-200x256.jpg"/></a></td>
<td class="auto-style2"><a href="Product.aspx" OnServerClick="Button3_Click" runat="server">
    <asp:Image ID="Image3" ImageUrl="Content\images\attitude - 1-200x256.jpg"  runat="server"/></a></td>
<td><a href="Product.aspx" OnServerClick="Button4_Click" runat="server">
    <asp:Image  ID="Image4" ImageUrl="Content\images\beard black - 3-200x256.jpg" runat="server"/></a></td>

</tr>


<tr>
    
<td class="auto-style2" style="color:slategrey;font-size:16px;font-style:italic">Free Delivery all over in Pakistan<br />
                        Payment : Cash on delivery-<br />
                        Delivery Time : Within 7 daysSize<br />
                        Rs:590PKR.
                      </td>
<td class="auto-style2" style="color:slategrey;font-size:16px;font-style:italic">Free Delivery all over in Pakistan<br />
                        Payment : Cash on delivery-<br />
                        Delivery Time : Within 7 daysSize<br />
                        Rs:590PKR.
                      </td>
<td class="auto-style2" style="color:slategrey;font-size:16px;font-style:italic">Free Delivery all over in Pakistan<br />
                        Payment : Cash on delivery-<br />
                        Delivery Time : Within 7 daysSize<br />
                        Rs:590PKR.
                      </td>
<td class="auto-style2" style="color:slategrey;font-size:16px;font-style:italic">Free Delivery all over in Pakistan<br />
                        Payment : Cash on delivery-<br />
                        Delivery Time : Within 7 daysSize<br />
                        Rs:590PKR.
                      </td>
</tr>
                  <tr>
                      <td class="auto-style2"><h2 id="h22"style="color:slategray;font-size:16px;font-style:italic">BEST SOLD  T-SHIRTS:</h2></td>
                  </tr>

<tr>
<td class="auto-style2"><a href="Product.aspx" OnServerClick="Button5_Click" runat="server">
    <asp:Image ID="Image5" ImageUrl="Content\images\pakistan black - 1-200x256.jpg" runat="server" /></a></td>
<td><a href="Product.aspx" OnServerClick="Button6_Click" runat="server">
    <asp:Image ID="Image6" runat="server" ImageUrl="Content\images\mtv - 2-200x256.jpg"/></a></td>
<td class="auto-style2"><a href="Product.aspx" OnServerClick="Button7_Click" runat="server">
    <asp:Image ID="Image7" ImageUrl="Content\images\monster energy - 1-200x256.jpg"  runat="server"/></a></td>
<td><a href="Product.aspx" OnServerClick="Button8_Click" runat="server">
    <asp:Image runat="server" ID="Image8" ImageUrl="Content\images\arrow - 4-200x200.jpg"/></a></td>
</tr>


<tr>
<td class="auto-style2" style="color:slategrey;font-size:16px;font-style:italic">Free Delivery all over in Pakistan<br />
                        Payment : Cash on delivery-<br />
                        Delivery Time : Within 7 daysSize<br />
                        Rs:590PKR.
                      </td>
<td class="auto-style2" style="color:slategrey;font-size:16px;font-style:italic">Free Delivery all over in Pakistan<br />
                        Payment : Cash on delivery-<br />
                        Delivery Time : Within 7 daysSize<br />
                        Rs:590PKR.
                      </td>
<td class="auto-style2" style="color:slategrey;font-size:16px;font-style:italic">Free Delivery all over in Pakistan<br />
                        Payment : Cash on delivery-<br />
                        Delivery Time : Within 7 daysSize<br />
                        Rs:590PKR.
                      </td>
<td class="auto-style2" style="color:slategrey;font-size:16px;font-style:italic">Free Delivery all over in Pakistan<br />
                        Payment : Cash on delivery-<br />
                        Delivery Time : Within 7 daysSize<br />
                        Rs:590PKR.
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
