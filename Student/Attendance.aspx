<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true"
    CodeFile="Attendance.aspx.cs" Inherits="Student_Attendance" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellspacing="0" cellpadding="0" width="800">
<tr>
                                       <td></td>
                                        <td width="600" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                               VIEW ATTENDANCE</h3>
                                        </td>
                                        <td></td>
                                    </tr>

</table>Student Email ID:
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
        ForeColor="Black" GridLines="Vertical" Height="124px" Width="256px" 
        >
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
    <br />
    <table cellpadding="0" cellspacing="0" width="800" border="0">
        <tr>

                <td width="48">
                    &nbsp;</td>

                <td width="48" >
                </td>

                <td width="48">
                    &nbsp;</td>

                  <td width="48">
                      &nbsp;</td>

                <td width="48">
                    &nbsp;</td>         


                <td width="48">
                    &nbsp;</td>

                <td width="48">
                    &nbsp;</td>         



                
                
                
               
            
          
        </tr>
    </table>
</asp:Content>
