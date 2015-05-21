<%@ Page Title="" Language="C#" MasterPageFile="~/umsmaster.master" AutoEventWireup="true"
    CodeFile="forget_password.aspx.cs" Inherits="forget_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2
        {
            background-image: url(images/midle.gif);
            width: 473px;
            height: 133px;
            background-repeat: no-repeat;
        }
        .style3
        {
            background-image: url(images/bottom.gif);
            width: 473px;
            height: 83px;
            background-repeat: no-repeat;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="487" cellspacing="0" align="center">
        <tr>
            <td width="487" colspan="0">
                <img src="images/top1.gif" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <table height="133">
                    <tr>
                        <td width="25">
                        </td>
                        <td colspan="2">
                            <asp:Label ID="Label1" runat="server" Text="Reset Password" Font-Size="Large" 
                                ForeColor="#CC3300"></asp:Label>
                        </td>
                    </tr>
            </td>
        </tr>
        <tr>
            <td width="25">
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="User Id" Font-Size="Small" ForeColor="#993300"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#666633" ForeColor="White"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" height="5">
            </td>
        </tr>
        <tr>
            <td width="25">
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email" Font-Size="Small" ForeColor="#993300"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#666633" ForeColor="White"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="25">
            </td>
            <td colspan="2" align="right">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
 <table>
    <tr>
        <td width="429" class="style3" valign="middle">
            <table>
                <tr>
                <td width="150"></td>
                    <td>
                        <a href="forget.aspx"><font color="#ffffff" size="3">Forget Password</a></font>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    </table>
</asp:Content>
