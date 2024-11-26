<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="MyASP.NetProject.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn Form</title>
    <style>
          table{
      box-shadow: 0 14px 28px rgba(0, 0, 0, 0.5), 0 10px 20px rgba(0, 0, 0, 0.42); 
      background-color: white;
  }
  .auto-style1 {
      width: 25%;
      border-collapse: collapse;
      border-style: solid;
      border-width: 1px;            
  }
  .auto-style2 {
      text-align: center;
  }
  body{
       background-image: url('images/signinbackground.jpg');
 background-position: center;
 background-size: cover;
  }

  #HyperLink1{
      color: black;
      font-weight: bold;
  }
  #Button1{
      border: none;
      border-radius: 5px;
  }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <h1>SignIn Form</h1>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Username :&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="315px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password : &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="315px"></asp:TextBox>
&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" BackColor="#6600FF" ForeColor="White" Font-Size="20px" Height="35px" Text="SignIn" Width="150px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            </table>
    </form>
   
</body>
</html>
