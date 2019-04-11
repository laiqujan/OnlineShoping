<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminhome.aspx.cs" Inherits="OnlineShoping.Adminhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>::ManagementPage</title>
   <style>
       #in{
          //  margin-left:600px;
           
 }
        #m{
       height:100px;
       position:fixed;
       width:1500px;
       margin-left:-15px;
       margin-top:-10px;

      
        }
        
       a{
             text-decoration:none;
             text-decoration-color:aqua;
             color:silver;
         }
          .auto-style1 {
            width: 70%;
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
               
             
              </div></div> <br /><br /><br /><br /><br /><br />
         <div>
            <h1 style="margin-left:100px; font-style:italic;color:aliceblue">ADD Your Product HERE::</h1>

            <asp:Panel ID="Panel1" runat="server">
        <table style="margin-left:20px" class="auto-style1" cellpadding="10px">
            <tr>
                <td class="auto-style2">  <asp:Label ID="Label2" runat="server" Text="Label">ProductName:</asp:Label></td>
                <td>
                    <asp:TextBox ID="PName" runat="server" Width="292px" Height="24px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PName" ErrorMessage="PLZ Enter Product name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
<td class="auto-style2"><asp:Label ID="Label7" runat="server" Text="Label">ProductPrice:</asp:Label></td>
                <td>
                    <asp:TextBox ID="Price" runat="server" Width="292px" Height="24px"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="Price" ErrorMessage="PLZ Enter Product Price" ForeColor="Red" MaximumValue="6000" MinimumValue="400" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"> <asp:Label ID="Label3" runat="server" Text="Label">TotalQuantity:</asp:Label></td>
                <td>
                    <asp:TextBox ID="PQuantity" runat="server" Width="292px" Height="24px"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="PQuantity" ErrorMessage="Quantity Should be 1 to 50" ForeColor="Red" MaximumValue="40" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:Label ID="Label4" runat="server" Text="Label">Color:</asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="292px" Height="24px">
                        <asp:ListItem>White</asp:ListItem>
                        <asp:ListItem>Yellow</asp:ListItem>
                        <asp:ListItem>Sky blue</asp:ListItem>
                        <asp:ListItem>Camel</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:Label ID="Label5" runat="server" Text="Label">Size:</asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="292px" Height="24px">
                        <asp:ListItem>Small</asp:ListItem>
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>Large</asp:ListItem>
                        <asp:ListItem>ExtraLarge</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Description:</td>
                <td>
                    <asp:TextBox ID="des" runat="server" TextMode="MultiLine" Height="80px"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="des" ErrorMessage="Description is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Image:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="281px" />   
                    
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr><td></td>
                <td>
                    <asp:Image ID="Image1" runat="server" Width="288px" />
                </td>
                
                   </tr>
            <tr>
                <td></td> <td>

                         <asp:Button ID="save" runat="server" Text="Save" Width="93px" Height="24px" OnClick="save_Click"  />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" 
                             Text="UpLoad" Width="93px" Height="24px" />
                </td>
            </tr>
            <tr>
               <td></td> <td> <asp:Label ID="Label1" runat="server" Text="" ></asp:Label></td>
            </tr>

        </table>
                </asp:Panel>
    </div>

    </form>
</body>
</html>

