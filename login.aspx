<%@ Page Title="" Language="C#" MasterPageFile="~/umsmaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
    <%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


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
        .style4
        {
            width: 127px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ajaxToolkit:ToolkitScriptManager runat="Server" ID="ScriptManager1" />

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
                            <asp:Label ID="Label1" runat="server" Text="Login" Font-Size="Large" 
                                ForeColor="#CC3300"></asp:Label>
                        </td>
                    </tr>
            </td>
        </tr>
        <tr>
            <td width="25">
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Username" Font-Size="Small" ForeColor="#993300"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
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
                <asp:Label ID="Label3" runat="server" Text="Password" Font-Size="Small" ForeColor="#993300"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="25">
            </td>
            <td colspan="2" align="right">
                <asp:Button ID="Button1" runat="server" Text="Log In" 
                    onclick="Button1_Click1" />
            </td>
        </tr>
        <tr>
            <td width="25">
                &nbsp;</td>
            <td colspan="2" align="right">
                &nbsp;</td>
        </tr>
    </table>
    <table cellpadding="0" cellspacing="0">
    <tr>
        <td width="429" class="style3" valign="middle">
            <table>
                <tr>
                <td width="150">
                    <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    </table>

</asp:Content>

