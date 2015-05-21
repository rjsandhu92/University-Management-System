<%@ Page Title="" Language="C#" MasterPageFile="~/College/College.master" AutoEventWireup="true"
    CodeFile="Viewmarks.aspx.cs" Inherits="College_Viewmarks" %>

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
                    VIEW MARKS&nbsp;
                </h3>
            </td>
            <td>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <fieldset style="border-color: #808080">
        <legend style="margin-left: 15px; padding-top: 3px; padding-left: 10px; background-image: url(../images/heading1.png);
            height: 27px; background-repeat: no-repeat; width: 210px">&nbsp;&nbsp;&nbsp;&nbsp; View Marks</legend>
        <table width="800">
            <tr>
                <td colspan="3" align="center">
                    &nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" Height="191px" Width="315px">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>
