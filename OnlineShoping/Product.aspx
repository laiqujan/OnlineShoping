
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="OnlineShoping.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>::Product of Pakistan's Best T Shirt Brand</title>
    <style type="text/css">
        table{
         
     }
        #footter{
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
      
        .auto-style0 {
            height: 79px;
        }
     #main{
         margin-left:300px;
            
        }
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
        #in{
          //  margin-left:100px;
           
 } #in1{
       height:100px;
       position:fixed;
       width:1510px;
       margin-left:-15px;
       
   }
        #m{
       
      
       height:200px;
       position:fixed;
       width:1510px;
       margin-left:-15px;
       margin-top:-10px;

      
        }h2{
             margin-left:50px;
             color:blueviolet;
         }
        
        a{
             text-decoration:none;
             text-decoration-color:aqua;
             color:silver;
         }
         #add1{
            height:550px;
             margin-top:30px;
             margin-left:-10px;
         }#add2{
            height:550px;
             margin-top:30px;
             margin-left:110px;
             margin-right:0px;
          }
        #k{
            margin-left:240px
           
        }#h22{
             margin-left:0px;
         }
         #footer{
             margin-left:-25px;
             height:300px;
         }h3{
             
          }
    </style>
</head>
<body>
    

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
                    </tr>

                </table>         </div></div> <br /><br /><br /><br /><br /><br />
    


    
  
 <div id="main">
 <h1 style=" font-style:italic;color:steelblue;" >
     <asp:Label ID="name" runat="server"  Text="Andriod CREED"></asp:Label></h1>
<table>
<tr>
<th rowspan="3">
    <asp:Image ID="Image1"  runat="server" /></th>
<th id="rr" >Product Code: T-SHIRT<br />
  Availability: <asp:Label ID="qu" runat="server" Text=""></asp:Label> </th>
</tr>
<tr>
<th>PKR-<asp:Label ID="price" runat="server" Text=""></asp:Label>&nbsp;RS</th>
</tr>
<tr>
<th>With an option to pay<br/>
Cash on Delivery</th>
</tr>
</table>
     <h3>Available Option:: </h3>
     <h3>
         Color:&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="RadioButtonList1" ForeColor="Red"></asp:RequiredFieldValidator>
        </h3><asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="122px" >
         <asp:ListItem>White</asp:ListItem>
         <asp:ListItem>Sky blue</asp:ListItem>
         <asp:ListItem>Yellow</asp:ListItem>
         <asp:ListItem>Camel</asp:ListItem>
         </asp:RadioButtonList>
       <h3>
         Size::&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="RadioButtonList2" ForeColor="Red"></asp:RequiredFieldValidator>
        </h3>
     <asp:RadioButtonList ID="RadioButtonList2" runat="server" Width="122px">
         <asp:ListItem>Small</asp:ListItem>
         <asp:ListItem>Medium</asp:ListItem>
         <asp:ListItem>Large</asp:ListItem>
         <asp:ListItem>Extra Large</asp:ListItem>
         </asp:RadioButtonList>
    

  
     <br />
     <asp:RangeValidator runat="server" Type="Integer" 
MinimumValue="1" MaximumValue="10" ControlToValidate="quantity" 
ErrorMessage="Value must be a whole number between 1 and 10" ForeColor="Red" /><br />

     Quantity::&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" 
         ControlToValidate="quantity" ForeColor="Red"></asp:RequiredFieldValidator>
     <asp:TextBox ID="quantity" runat="server" Width="117px" Height="18px"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="ADD TO CART" BackColor="Black" 
    ForeColor="White" Height="26px" OnClick="Button1_Click" /><br /><br />
     <asp:Label ID="message" runat="server" Text=""></asp:Label>
    <h4>-DESCRIPTION:</h4> <pre ID="des" style="font-size:15px;font-family:Arial;">
- Free Delivery all over in Pakistan
- Payment : Cash on delivery
- Delivery Time : Within 7 days

Size Chart -                S          M          L          XL          
CHEST -                    18         20         21        22           
LENGTH -                  26         28         29        30           

All sizes are measured in inches. 

    </pre>

  
    </div>
     <div id="footter">
        <table style="margin-left:270px; height: 269px; width: 44%;" cellpadding="2px">
            <tr>
            <th>INFORMATION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </th>
                <th class="auto-style0">EXTRAS</th><th>
            <br />
            CUSTOMER 
            <br />
            SERVICE</th><th>MY ACCOUNNT</th>
            </tr>
            <tr>
             <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
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
     <hr style="height: 2px"></hr> </div>
    </form>

</body>
</html>
