﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="placeorder.aspx.cs" Inherits="WebApplication4.placeorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <table align="center" style="margin-top:50px; width:531px; height: 563px;" bgcolor="DarkCyan" >
               <tr>
                   <td colspan="2" align="center" styl="vertical-align:top">
                       <asp:Label ID="Label1" runat="server" Text="Card Detalis" BackColor="White" BorderStyle="Groove" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

                   </td>
               </tr>
               <tr>
                   <td align="center" styl="vertical-align:top">
                       <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px" placeholder="First Name" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is Empty" ControlToValidate="TextBox1" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="First Name Must Be In Characters  " ControlToValidate="TextBox1" ForeColor="#CC0000" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td align="center" styl="vertical-align:top">
                        <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px" placeholder="Last Name" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is Empty" ControlToValidate="TextBox2" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Last Name Must Be In Characters  " ControlToValidate="TextBox2" ForeColor="#CC0000" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td colspan="2" align="center">
                       <asp:Image ID="Image1" runat="server" BorderWidth="2px" ImageUrl="~/card1.jpg" Width="438px" />
                   </td>
               </tr>
               <tr>
                   <td colspan="2" align="center">
                       <asp:Label ID="Label2" runat="server" Text="Card Number" Font-Bold="True" Font-Size="Large"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td colspan="2" align="center" style="vertical-align:top">
                        <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" Width="442px" placeholder="16 Digits" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Card Number is Empty" ControlToValidate="TextBox3" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Card Number Must Be In 16 Digits" ControlToValidate="TextBox3" ForeColor="#CC0000" ValidationExpression="[0-9]{16}">*</asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td align="center">
                       <asp:Label ID="Label3" runat="server" Text="Expiry Date" Font-Bold="True" Font-Size="Large"></asp:Label>

                   </td>
               </tr>
               <tr>
                   <td align ="center">
                       <asp:Label ID="Label4" runat="server" Text="CVV" Font-Bold="True" Font-Size="Large"></asp:Label>

                   </td>
               </tr>
               <tr>
                   <td align="center" style="vertical-align:top">
                        <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px" placeholder="MM/YY(Eg:061998" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Expiry Date Is Empty " ControlToValidate="TextBox4" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td align="center" style="vertical-align:top">
                        <asp:TextBox ID="TextBox5" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px" placeholder="3 Digits" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="CVV is Empty" ControlToValidate="TextBox5" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="CVV Must Be of 3 Digits  " ControlToValidate="TextBox5" ForeColor="#CC0000" ValidationExpression="[0-9]{3}">*</asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td colspan="2" align="center" style="vertical-align:top">
                      <asp:TextBox ID="TextBox6" runat="server" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="X-Large" Height="50px" Width="188px" placeholder="Billing Address" Textmode="MultiLine" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address is Empty" ControlToValidate="TextBox6" ForeColor="#CC0000">*</asp:RequiredFieldValidator>

                   </td>
               </tr>
               <tr>
                   <td colspan="2" align="center">
                       <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="Black" BorderColor="White" BorderWidth="2px" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="44px" Width="188px" OnClick="Button1_Click" />

                   </td>
               </tr>
               <tr>
                   <td colspan="2">
                       <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="#CC0000" HeaderText="Fixe The Following Error" />

                   </td>
               </tr>
               <tr>
                   <td colspan="2" align="center" style="margin-left: 80px">
                       
                       <asp:HyperLink ID="HyperLink1" runat="server">Pervious Page</asp:HyperLink>       
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
                       <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True">Home Page</asp:HyperLink>
                   </td>
               </tr>
           </table>


        </div>
    </form>
</body>
</html>
