<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OnlineShoping.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>:: Lucky To Join US</title>
   
    <style type="text/css">
        
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
            width:1347px;
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
      
        .auto-style0 {
            height: 79px;
        }
      
        
      
        #password {
            width: 311px;
            height: 28px;
        }
        #confpassword {
            width: 311px;
            height: 28px;
           
        }
                
        .auto-style7 {           
             height: 37px;
            width: 155px;
        }
        
        .auto-style8 {
            text-align: right;
            width: 108px;
            height: 58px;
        }
        .auto-style9 {
            text-align: justify;
            height: 58px;
        }
        .auto-style10 {
            width: 155px;
            height: 58px;
        }
        
        .auto-style11 {
            text-align: right;
            width: 108px;
            height: 37px;
        }
        .auto-style12 {
            text-align: justify;
            height: 37px;
        }
        .auto-style13 {
            height: 126px;
        }
        
        .auto-style14 {
            text-align: right;
            width: 108px;
            height: 49px;
        }
        .auto-style15 {
            text-align: justify;
            height: 49px;
        }
        .auto-style16 {
            width: 155px;
            height: 49px;
        }
        
        .auto-style17 {
            text-align: right;
            width: 108px;
            height: 41px;
        }
        .auto-style18 {
            text-align: justify;
            height: 41px;
        }
        .auto-style19 {
            width: 155px;
            height: 41px;
        }
        
        .auto-style20 {
            text-align: right;
            width: 108px;
            height: 48px;
        }
        .auto-style21 {
            text-align: justify;
            height: 48px;
        }
        .auto-style22 {
            width: 155px;
            height: 48px;
        }
        
        .auto-style23 {
            text-align: right;
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
                        <td><a href="ShopingCart.aspx" OnServerClick="Shop_Click" runat="server"  style="font-weight:800;color:white">Shopping cart</a></td>
                     <td><a href="CheckOut.aspx" OnServerClick="Check_Click" runat="server"  style="font-weight:800;color:white" >Check out</a></td>
                        <td style="color:white"><asp:Label ID="Label1" runat="server"  Text="+9237992397479"></asp:Label></td>
                </tr></table>
     </div>
   </div> <br /><br /><br /><br /><br />
        <div>
           <table cellpadding="5" cellspacing="10" class="auto-style11">
                            <tr><td colspan="3">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Invalid" runat="server" ForeColor="Red"></asp:Label></td></tr>
                              <tr><td colspan="3" class="auto-style13">
                                  <h2 style="margin-left:30px; font-style:italic;color:aliceblue">Your Personel Detail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2><hr /></td></tr>
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
                              <tr>
                                  <td class="auto-style11">ConformPassword:</td>
                                  <td class="auto-style12">
                                      
                                      <asp:TextBox ID="confpassword" runat="server" TextMode="Password" Height="28px" Width="311px"></asp:TextBox>
                                  </td>
                                  <td class="auto-style7">
                                      <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ErrorMessage="Passwords must match" ForeColor="Red" ControlToCompare="password" ControlToValidate="confpassword"></asp:CompareValidator>
                                  </td>
                              </tr>
                                 <td class="auto-style17">E-mail:</td>
                                  <td class="auto-style18">
                                      <asp:TextBox ID="email" runat="server" Height="28px" Width="311px"></asp:TextBox>
                                  </td>
                                  <td class="auto-style19">
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="E-mail Required" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                      <br />
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="(It should be email address)" ForeColor="Red"></asp:RequiredFieldValidator>
                                  </td>
                              <tr>
                                  <td class="auto-style20">Mobile:</td>
                                  <td class="auto-style21">
                                      <asp:TextBox ID="mobileno" runat="server" Height="28px" Width="311px"></asp:TextBox>
                                  </td>
                                  <td class="auto-style22">
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Mobile No. is Required" ForeColor="Red" ControlToValidate="mobileno"></asp:RequiredFieldValidator>
                                      <br />
                                      <br />
                                  </td>
                              </tr>
                              <tr><td colspan="3" class="auto-style13"><h2 style="margin-left:75px; font-style:italic;color:aliceblue">&nbsp; Your Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2><hr style="border-top-left-radius:10px; " /></td></tr>
                              <tr><td class="auto-style23">Address1:</td>
                                  <td>
                                      <asp:TextBox ID="address1" runat="server" Height="28px" Width="311px"></asp:TextBox>
                                  </td>
                                  <td>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="address1" Display="Dynamic" ErrorMessage="Address is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                  </td></tr>
                                  <tr>
                                      <td class="auto-style23">Address2:</td>
                                      <td> <asp:TextBox ID="address2" runat="server" Height="28px" Width="311px"></asp:TextBox></td>
                                      <td></td>
                                  </tr>
                                  <tr><td class="auto-style23">Postcode:</td>
                                      <td>
                                          <asp:TextBox ID="postcode" runat="server" Height="28px" Width="311px" ></asp:TextBox></td>
                                  <td>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="postcode" Display="Dynamic" ErrorMessage="Postcode Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                      <br />
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="postcode" ErrorMessage="It Should be PostCode" ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                                      </td>
                                  </tr>
                              <tr><td class="auto-style23">City:</td>
                                  <td>
                                      <asp:DropDownList ID="city" runat="server" Height="34px" Width="314px">
                                          <asp:ListItem>Karachi</asp:ListItem>
                                          <asp:ListItem>Islamabad</asp:ListItem>
                                          <asp:ListItem>Lahore</asp:ListItem>
                                          <asp:ListItem>Quetta</asp:ListItem>
                                          <asp:ListItem>Peshawar</asp:ListItem>
                                      </asp:DropDownList>
                                  </td>
                                  <td>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select City" ControlToValidate="city" ForeColor="Red"></asp:RequiredFieldValidator>
                                  </td>
                              </tr></table>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" 
                              Text="Signup" Height="32px" Width="112px" OnClick="Button1_Click" /></div><br /><br />
          <br /><br />
                   <div id="footer">
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

                 </table>
       </div>
        
         
           
          
 </form>
</body>
</html>
