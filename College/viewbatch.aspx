<%@ Page Title="" Language="C#" MasterPageFile="~/College/College.master" AutoEventWireup="true" CodeFile="viewbatch.aspx.cs" Inherits="College_viewbatch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table cellspacing="0" cellpadding="0" width="800">
<tr>
                                       <td></td>
                                        <td width="600" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                                View Batches</h3>
                                        </td>
                                        <td></td>
                                    </tr>

</table><br /><br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Height="177px" Width="385px">
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
    <%--<asp:DataPager ID="DataPager1" runat="server" PageSize="10" 
        PagedControlID="ListView1" onprerender="DataPager1_PreRender">
        <Fields>
            <asp:NumericPagerField NextPageText=">>>" PreviousPageText="<<<" />
        </Fields>
    </asp:DataPager>--%>

</asp:Content>

