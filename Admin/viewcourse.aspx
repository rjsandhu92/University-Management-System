<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="viewcourse.aspx.cs" Inherits="Admin_viewcourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <table cellspacing="0" cellpadding="0" width="800">
<tr>
                                       <td></td>
                                        <td width="600" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                                VIEW COURSES</h3>
                                        </td>
                                        <td></td>
                                    </tr>

</table><br /><br />
<%--    <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="PlaceHolder1" 
        onitemdeleting="ListView1_ItemDeleting">
        <LayoutTemplate>
            <table border="0" cellpadding="0" cellspacing="0" width="800" style=" background-color:Blue; " height="30" >
                <tr>
                    
                </tr>
                <tr>
                    <th width="100" align="left" style="color:White;">
                        S No.
                    </th>
                    <th width="100" align="left" style="color:White;">
                      Course ID
                    </th>
                    <th width="250" align="left" style="color:White;">
                        Course Name
                    </th>
                    <th width="200" align="left" style="color:White;">Course Duration</th>
                    <th width="150" align="left" style="color:White;">Course Type</th>
                     
                </tr>
                
            </table>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
      
       
        <ItemTemplate>
            <table border="0" cellpadding="0" cellspacing="0" width="800">
                <tr>
                    <td width="100" align="left" height="20">
                        <%# Container.DataItemIndex+1%>
                    </td>
                    <td width="100" align="left" height="20">
                        
                       <%#Eval("course_id")%>
                       
                    </td>
                    <td width="250" align="left" height="20">
                      
                            
                            
                            <%#Eval("course_name")%>
                    </td>
                    <td width="200" align="left" height="20">
                      
                            
                            
                            <%#Eval("course_duration")%>
                    </td>
                    <td width="150" align="left" height="20">
                      
                            
                            
                            <%#Eval("course_type")%>
                    </td>
                    
                </tr>
            </table>
        </ItemTemplate>
        <AlternatingItemTemplate>
        
        
        
        
        </AlternatingItemTemplate>
    </asp:ListView>--%>
     <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
        ForeColor="#333333" GridLines="None" Height="147px" Width="403px">
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
   


</asp:Content>

