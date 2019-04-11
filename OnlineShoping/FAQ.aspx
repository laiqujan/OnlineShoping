<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="OnlineShoping.FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>::FAQ</title>
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
               
                        <td><a href="ShopingCart.aspx"  runat="server" style="font-weight:800;color:white">Shopping cart</a></td>
                     <td><a href="CheckOut.aspx"  runat="server" style="font-weight:800;color:white">Check out</a></td>
                 <td style="color:white"><asp:Label ID="Label2" runat="server"  Text="+9237992397479"></asp:Label></td>
                </tr></table>
     </div>
   </div> <br /><br /><br /><br />
     
     <div style="background-color:slategray;padding-left:100px;padding-right:200px;"> 
         <h1 style="color:white;text-decoration:underline">FAQ's::</h1>

<pre style="font-size:17px;font-family:Arial;">
HOW DO I CONTACT CUSTOMER SERVICE?
You can email our staff, support@stylifyd.com, or give us a call at 0336-3911996 / 0333-3826515. 
Our Customer Service hours are Monday through Sunday 10AM to 11PM. You can also get in touch with us on Facebook, Twitter or Instagram! 
Customer Service : support@stylifyd.com or 0336-3911996 / 0333 - 3826515
Facebook: www.facebook.com/stylifyd
Twitter: @stylifyd
Instagram: stylifyd
 
HOW DO I PLACE AN ORDER ONLINE?
You can place an online order by visiting the STYLIFYD.com shop page. If you are having difficulty placing an order online or you have questions regarding
the ordering process please contact our staff 0336- 3911996 / 0333 - 3826515
 
WHAT PAYMENT METHODS DO YOU ACCEPT?
Stylifyd.com offers cash on delivery service with free delivery. Or you can pay in advance as well via online bank transfer or easy paisa. 
 
HOW DO I FIND OUT THE STATUS OR MAKE A CHANGE TO AN EXISTING ORDER?
To view the status of an existing domestic order please go to STYLIFYD.com and input your tracking number.  
If your order has not yet been shipped and you would like to make a change or cancel your order please contact our staff 0336- 3911996

 
FREE SHIPPING:

Stylifyd.com offers Free Shipping with Cash on delivery service. Delivery time is 5-6 working days for free shipping. If you want your order to be delivered
earlier, we will charge delivery and delivery time will be 3-4 working days. If you have questions regarding the urgent delivery process please contact 
our staff 0336- 3911996 / 0333 - 3826515

365 DAY RETURNS:
If you are not 100% satisfied with your purchase, you can return your order to the warehouse for a full refund.
Products must be in the condition you received them and in the original box and/or packaging.
Once your return is received and inspected by the our center (usually within 72 hours of receipt),your refund will be processed and you will get your refund
via easy paisa or bank transfer within 7 days. 
 
 
Thank you for shopping at STYLIFYD.COM    </pre>
 </div>
       
        <div id="footer" style="margin-top:10px">
        <table style="margin-left:270px; height: 269px; width: 44%;" cellpadding="2px">
            <th class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INFORMATION</th><th class="auto-style1">EXTRAS</th><th class="auto-style1">
            <br />
            CUSTOMER 
            <br />
            SERVICE</th><th class="auto-style1">MY ACCOUNNT</th>
            
            <tr>
             <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
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
