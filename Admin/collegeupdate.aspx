<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="collegeupdate.aspx.cs" Inherits="Admin_collegeupdate" %>
 <%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ajaxToolkit:ToolkitScriptManager runat="Server" ID="ScriptManager1" />
 <table cellspacing="0" cellpadding="0">
<tr>
                                       
                                        <td width="610" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                                Update College</h3>
                                        </td>
                                        
                                    </tr>

</table><br /><br />
    <table style="width: 100%">
        <tr>
            <td style="width: 145px">
                College ID</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                College Name</td>
            <td>
                <asp:TextBox ID="colnameT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                Website</td>
            <td>
                <asp:TextBox ID="colwebT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                Email ID</td>
            <td>
                <asp:TextBox ID="colemailT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                Address</td>
            <td>
                <asp:TextBox ID="coladdT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                State</td>
            <td>
                <asp:TextBox ID="colstateT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                City</td>
            <td>
                <asp:TextBox ID="colcityT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                Pincode</td>
            <td>
                <asp:TextBox ID="colpinT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                Mobile No</td>
            <td>
                <asp:TextBox ID="colmobT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                Phone No</td>
            <td>
                <asp:TextBox ID="colphoT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                Fax No</td>
            <td>
                <asp:TextBox ID="colfaxT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 145px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 145px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>

