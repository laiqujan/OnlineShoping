<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="OnlineShoping.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>::ManagementPage</title>
   <style>
       #in{
         //   margin-left:600px;
           
 } #in1{
       height:100px;
       position:fixed;
       width:1510px;
       margin-left:-15px;
       
   }
        #m{
       height:105px;
       position:fixed;
       width:1510px;
       margin-left:-15px;
       margin-top:-10px;

      
        }
        
        .auto-style1 {
            width: 100%;
        }a{
             text-decoration:none;
             text-decoration-color:aqua;
             color:silver;
         }
          .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 98px;
        }
        #TextArea1 {
            width: 284px;
        }
        #des {
            width: 285px;
        }
    
       #descr {
           width: 282px;
       }
    
   </style>
</head>
<body style="background-color:silver">
    <form id="form1" runat="server">
     <div  id="m" style="background-color: #333333">
     <div id="in">
         <table cellpadding="15px"><tr>
            <td><a href="Admin.aspx">
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
               
             
              </div></div> <br /><br /><br /><br /><br /><br /><br /><br /><br />
         <div>
            <h1 style="margin-left:100px; font-style:italic;color:blue;text-decoration:underline">Welcome As Admin Here You can Custmized Your Site Using Provided Menu::</h1>
             <h2 style="margin-left:100px; font-style:italic;color:steelblue;">
                Instrunction for Operating  and Custmizing Your Website are here:: 
                </h2>
             <ul style="list-style-type:square">
                 <li style="margin-left:100px; font-style:italic;color:steelblue;font-size:20px">You Can ADD Items Using ADD ITEM Link Where YOU need to Provide items details.</li>
                 <li style="margin-left:100px; font-style:italic;color:steelblue;font-size:20px">You can Delete/Update Your Items using Udate/Delete LINK.</li>
                   <li style="margin-left:100px; font-style:italic;color:steelblue;font-size:20px">You can View Your User using MY Account/ViewUsers LINK.</li>
             </ul>
       </div>
    </form>
</body>
</html>
