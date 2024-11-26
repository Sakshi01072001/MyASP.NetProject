<%@ Page Title="" Language="C#" MasterPageFile="~/adminmp.master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="MyASP.NetProject.addproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <style>
       
        table{
            background-color: ghostwhite;
            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 20px rgba(0, 0, 0, 0.22);
        }
    </style>
    <p>
    </p>
    <body>
        
    <table align="center" style="width: 28%; border-collapse: collapse; border-style: solid; border-width: 1px">
        <tr>
            <td>
                <h2 class="text-center"><strong>Add Products</strong></h2>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product ID : &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="450px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product Name : </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product Price&nbsp; : </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Category ID : &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product Image :&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="450px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Update" />
&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Delete" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
        
        </body>
</asp:Content>
