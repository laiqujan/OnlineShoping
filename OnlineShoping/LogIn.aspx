<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="OnlineShoping.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>::LogIn</title>
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
               
                        <td><a href="ShopingCart.aspx" OnServerClick="Shop_Click" runat="server" style="font-weight:800;color:white">Shopping cart</a></td>
                     <td><a href="CheckOut.aspx" OnServerClick="Shop_Click" runat="server" style="font-weight:800;color:white">Check out</a></td>
                 <td style="color:white"><asp:Label ID="Label2" runat="server"  Text="+9237992397479"></asp:Label></td>
                </tr></table>
     </div>
   </div> <br /><br /><br /><br /><br />
        
        <div>
      <table  style="margin-left:200px;"cellpadding="5" cellspacing="10" width="50%">
                              <tr><td colspan="3" class="auto-style13"><h2 style="margin-left:100px; font-style:italic;color:aliceblue">Plz SignIn Here:</h2>
                                  <hr style="border-radius:10px" /></td></tr>
                                <tr><td colspan="3">
                                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text=""></asp:Label></td></tr>
          <tr>

                                  <td class="auto-style14">UserName:</td>
                                  <td class="auto-style15">
                                      <asp:TextBox ID="username" onblur="checkNumber(form1);" runat="server" Height="28px" Width="311px"></asp:TextBox>
                                  </td>
                                  <td class="auto-style16">
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="username" Display="Dynamic" ErrorMessage="UserName is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="auto-style8">Password:</td>
                                  <td class="auto-style9">
                                      <asp:TextBox ID="password" runat="server" TextMode="Password" Height="28px" Width="311px"></asp:TextBox>
                                  </td>
                                  <td class="auto-style10">
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" Display="Dynamic" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                  </td>
                              </tr>
                               <tr><td></td>
                                   <td>
                                       <asp:Button ID="signIn" runat="server" Text="LogIn" OnClick="signIn_Click" Width="120px" height="40" BackColor="Black" ForeColor="White" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</td>
                                  
                               </tr>
                      
                       
          

          </table>
        </div>
           <div id="footer" style="margin-top:50px">
        <table style="margin-left:270px; height: 269px; width: 44%;" cellpadding="2px">
           <tr> <th class="auto-style0">&nbsp;INFORMATION</th><th class="auto-style0">EXTRAS

                                                                                              </th><th class="auto-style0">
            CUSTOMERSERVICE</th><th class="auto-style0">MY ACCOUNNT</th>
            </tr>
            <tr>
             <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <a href="AboutUs.aspx">About Us</a></td>
             <td>&nbsp;&nbsp;<a href="Home.aspx">Brands</a>
             <td>&nbsp;&nbsp;&nbsp;&nbsp; <a href="ContactUs.aspx">Contact Us</a>
             <td>&nbsp;&nbsp;&nbsp; &nbsp;<a href="LogIn.aspx">My Account</a></tr>
            
            <tr> 
             <td style="height: 5px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<a href="FAQ.aspx" >FAQ</a></td>
             <td style="height: 5px">&nbsp;&nbsp;<a href="LogIn.aspx">Specials</a></td>
             <td style="height: 5px">&nbsp;&nbsp;&nbsp;&nbsp; <a href="LogIn.aspx">Return</a></td>
             <td style="height: 5px">&nbsp;&nbsp;&nbsp;&nbsp; <a href="LogIn.aspx">Order History</a></td>
             </tr> <tr>
               <td>&nbsp;<a href="PrivacyPolicy.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Privacy Policy</a></td>
               <td>&nbsp;&nbsp;</td>
               <td>&nbsp;&nbsp;</td>
               <td>&nbsp;&nbsp;&nbsp; &nbsp;<a href="LogIn.aspx">Wish List</a></td></tr>
             <tr>
               <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="TermsConditions.aspx">&nbsp;Terms & Conditions</a></td>
               </tr>
       </form>
</body>
</html>

