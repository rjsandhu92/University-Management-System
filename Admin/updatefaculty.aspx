<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="updatefaculty.aspx.cs" Inherits="Admin_updatefaculty" %>
 <%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<ajaxToolkit:ToolkitScriptManager runat="Server" ID="ScriptManager1" />
  <table cellspacing="0" cellpadding="0" width="800" align="center">
<tr>
                                       <td></td>
                                        <td width="600" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                               UPDATE FACULTY</h3> 
                                        </td>
                                        <td></td>
                                    </tr>

</table><br /><br />
    <br />
    <table style="width: 100%">
        <tr>
            <td style="width: 254px">
                ID</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 254px">
                First Name</td>
            <td>
                <asp:TextBox ID="facfstnmT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 254px">
                Last Name</td>
            <td>
                <asp:TextBox ID="faclstnmT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 254px">
                Gender</td>
            <td>
                <asp:TextBox ID="facgenT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 254px">
                DOB</td>
            <td>
                <asp:TextBox ID="facdobT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 254px">
                Qualification</td>
            <td>
                <asp:TextBox ID="facqualiT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 254px">
                Email ID</td>
            <td>
                <asp:TextBox ID="facemailT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 254px">
                Address</td>
            <td>
                <asp:TextBox ID="facaddT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 254px">
                State</td>
            <td>
                <asp:TextBox ID="facstateT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 254px">
                City</td>
            <td>
                <asp:TextBox ID="faccityT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 254px">
                Pincode</td>
            <td>
                <asp:TextBox ID="facpinT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 254px">
                Mobile No</td>
            <td>
                <asp:TextBox ID="facmobT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 254px">
                Phone No</td>
            <td>
                <asp:TextBox ID="facphT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 254px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 254px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>

