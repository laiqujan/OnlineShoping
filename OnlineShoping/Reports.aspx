<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="OnlineShoping.Reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>::ManagementPage</title>
   <style>
       #in{
            margin-left:600px;
           
 } #in1{
       height:100px;
       position:fixed;
       width:1510px;
       margin-left:-15px;
       
   }
        #m{
       height:90px;
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
<body style="width: 1493px; margin-top: 0px">
    <form id="form1" runat="server">
     <div  id="m" style="background-color: #333333">
            <div id="in">
                <br /> <table class="auto-style1">
                    <tr>
                        <td><asp:Menu ID="Menu1" runat="server"  BackColor="#333333" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="Silver" Orientation="Horizontal" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#333333" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <Items>
                    <asp:MenuItem Text="My Account" Value="My Account">
                        <asp:MenuItem Text="ViewUsers" Value="ViewUsers"  NavigateUrl="LogIn.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="SignOut" Value="SignOut"  NavigateUrl="LogIn.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
               </asp:Menu></td>

                   <td ><a href="Adminhome.aspx" style="color:white" >Add Item</a></td>
                         <td><a href="UpdateItem.aspx" style="color:white" >Update Item</a></td>
                        <td ><a href="RemoveItem.aspx" style="color:white">Delete Item</a></td>
                         <td ><a href="ViewOrder.aspx" style="color:white">View Orders</a></td>
                         <td><a href="Reports.aspx" style="color:white">Reports</a></td>
                       
                   </tr>
                </table>
               
             
              </div></div> <br /><br /><br /><br />
    <div  id="in1" style="background-color: #400040">
       <a href="Home.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="Content/images/logo-sylifyd.png" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="Content/images/header-cod.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  


    </div> <br /><br /><br /><br /><br /><br />
       
   

    </form>
</body>
</html>


