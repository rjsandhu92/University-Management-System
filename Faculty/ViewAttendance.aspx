<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true"
    CodeFile="ViewAttendance.aspx.cs" Inherits="Faculty_ViewAttendance" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ajaxToolkit:ToolkitScriptManager runat="Server" ID="ScriptManager1" />
    <table cellspacing="0" cellpadding="0" width="800">
        <tr>
            <td>
            </td>
            <td width="600" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                height: 55; background-repeat: no-repeat; padding-top: 2px">
                <h3>
                    VIEW ATTENDANCE</h3>
            </td>
            <td>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <fieldset style="border-color: #808080">
        <legend style="margin-left: 15px; padding-top: 3px; padding-left: 10px; background-image: url(../images/heading1.png);
            height: 27px; background-repeat: no-repeat; width: 210px">&nbsp;View Attendance</legend>
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            ForeColor="Black" GridLines="Vertical" Height="178px" Width="430px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </fieldset>
</asp:Content>
