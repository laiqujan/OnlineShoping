<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrivacyPolicy.aspx.cs" Inherits="OnlineShoping.PrivacyPolicy" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>::PRIVACY POLICY</title>
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
         <h1 style="color:white;text-decoration:underline">PRIVACY POLICY::</h1>

<pre style="font-size:17px;font-family:Arial;">

<h1>PRIVACY STATEMENT</h1>
<h1>SECTION 1 - WHAT DO WE DO WITH YOUR INFORMATION?</h1>
 When you purchase something from our store, as part of the buying and selling process, we collect the personal information you give us such as your name,
address and email address. 
When you browse our store, we also automatically receive your computer’s internet protocol (IP) address in order to provide us with information that helps us
learn about your browser and operating system.
Email marketing (if applicable): With your permission, we may send you emails about our store, new products and other updates. 
 <h1>SECTION 2 – CONSENT</h1>
 How do you get my consent?

When you provide us with personal information to complete a transaction, verify your credit card, place an order, arrange for a delivery or return a purchase,
we imply that you consent to our collecting it and using it for that specific reason only.
If we ask for your personal information for a secondary reason, like marketing, we will either ask you directly for your expressed consent, or provide you
with an opportunity to say no. 

How do I withdraw my consent?

If after you opt-in, you change your mind, you may withdrawing your consent for us to contact you, for the continued collection, use or disclosure of your
information, at anytime, by contacting us at support@stylifyd.com 

<h1>SECTION 3 – DISCLOSURE</h1>
 
We may disclose your personal information if we are required by law to do so or if you violate our Terms of Service.
<h1>SECTION 4 - SECURITY</h1>
To protect your personal information, we take reasonable precautions and follow industry best practices to make sure it is not inappropriately lost,
misused, accessed, disclosed, altered or destroyed.
If you provide us with your credit card information, the information is encrypted using secure socket layer technology (SSL).
<h1>SECTION 5 - AGE OF CONSENT</h1>
By using this site, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your
state or province of residence and you have given us your consent to allow any of your minor dependents to use this site. 
<h1>SECTION 6 - CHANGES TO THIS PRIVACY POLICY</h1>
We reserve the right to modify this privacy policy at any time, so please review it frequently. Changes and clarifications will take effect immediately upon
their posting on the website. If we make material changes to this policy, we will notify you here that it has been updated, so that you are aware of what
information we collect, how we use it, and under what circumstances, if any, we use and/or disclose it.
If our store is acquired or merged with another company, your information may be transferred to the new owners so that we may continue to sell products
to you.
<h1>QUESTIONS AND CONTACT INFORMATION</h1>
If you would like to: access, correct, amend or delete any personal information we have about you, register a complaint, or simply want more information
contact our Privacy Compliance Officer at support@stylifyd.com

    </pre>
 </div>
       
        <div id="footer" style="margin-top:10px">
        <table style="margin-left:270px; height: 269px; width: 44%;" cellpadding="2px">
            <th class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INFORMATION</th><th class="auto-style1">EXTRAS</th>
            <th class="auto-style1">
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



