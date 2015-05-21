<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="courseupdate.aspx.cs" Inherits="Admin_courseupdate" %>
<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<ajaxToolkit:ToolkitScriptManager runat="Server" EnableScriptGlobalization="true" 
        EnableScriptLocalization="true" ID="ToolkitScriptManager1" />
 <table cellspacing="0" cellpadding="0">
<tr>
                                       
                                        <td width="610" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                                VIEW COURSE </h3>
                                        </td>
                                        
                                    </tr>

</table><br /><br />
    <table style="width: 100%">
        <tr>
            <td style="width: 200px">
                Course ID</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">
                Course Name</td>
            <td>
                <asp:TextBox ID="cournameT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">
                Course Duration</td>
            <td>
                <asp:TextBox ID="courdurT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">
                Course Type</td>
            <td>
                <asp:TextBox ID="courtypeT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 200px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>

