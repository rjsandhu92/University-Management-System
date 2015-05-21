<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true"
    CodeFile="viewmarks.aspx.cs" Inherits="Student_viewmarks" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<table cellspacing="0" cellpadding="0" width="800">
<tr>
                                       <td></td>
                                        <td width="600" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                              VIEW MARKS</h3>
                                        </td>
                                        <td></td>
                                    </tr>

</table><br /><br />
    <fieldset style="border-color: #808080">
        <legend style="margin-left: 15px; padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 140px">&nbsp;&nbsp; View Marks</legend>
        <table cellspacing="12" cellpadding="3" border="0" width="800px" align="center">
            <tr>
                <td align="right" style="width: 222px">
                    Student Email ID:
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 222px">
                    <br />
                </td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                </td>
            </tr>
        </table>
        <table width="800">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                        ForeColor="Black" GridLines="Vertical" Height="198px" Width="347px">
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
                </td>
            </tr>
             <tr><td><br /><br /></td></tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
             <tr><td><br /><br /></td></tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
             <tr><td><br /><br /></td></tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr><td><br /><br /></td></tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
            <br /><br /><br />
            <table width="800" cellpadding="5">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>


        </table>
    </fieldset>
</asp:Content>
