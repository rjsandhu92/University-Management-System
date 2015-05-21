
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true"
    CodeFile="~/Admin/addcourse.aspx.cs" Inherits="Admin_addcourse" %>

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
                                                ADD COURSE</h3>
                                        </td>
                                        
                                    </tr>

</table><br /><br />

   <fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 140px">Add Course</legend>
    <table  cellspacing="12" cellpadding="3" border="0" width="600px" align="center">
    <tr><td width="200" align="right">
        <asp:Label ID="CoursenameL" runat="server" Text="Course Name"></asp:Label></td>
        <td>
            <asp:TextBox ID="CoursenameT" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Course Name Required" ControlToValidate="CoursenameT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
            TargetControlID="RequiredFieldValidator2"
            HighlightCssClass="validatorCalloutHighlight"/>
                
                
                </td>
        
        
        </tr>
        <tr><td width="200" align="right">
            <asp:Label ID="CoursedurationL" runat="server" Text="Course Duration:"></asp:Label></td>
            <td>
                <asp:DropDownList ID="CoursedurationD" runat="server" Width="128">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1 Year</asp:ListItem>
                    <asp:ListItem>2 Year</asp:ListItem>
                    <asp:ListItem>3 Year</asp:ListItem>
                    <asp:ListItem>4 Year</asp:ListItem>
                    <asp:ListItem>5 Year</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="true" Display="None" runat="server" ErrorMessage="Please Select Course Duration" ControlToValidate="CoursedurationD" ValidationGroup="add"></asp:RequiredFieldValidator>
                
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender2"
            TargetControlID="RequiredFieldValidator3"
            HighlightCssClass="validatorCalloutHighlight"/>
                </td>
            </tr>
    <tr><td align="right">
        <asp:Label ID="CoursetypeL" runat="server" Text="Course Type:"></asp:Label></td>
        <td> <asp:DropDownList ID="CoursetypeD" runat="server" Width="128">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Semester</asp:ListItem>
                    <asp:ListItem>Yearly</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="true" Display="None" runat="server" ErrorMessage="Please Select Course Type" ControlToValidate="CoursetypeD" ValidationGroup="add"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender3"
            TargetControlID="RequiredFieldValidator4"
            HighlightCssClass="validatorCalloutHighlight"/>
                        </td>
                        </tr><tr>
                        <td></td>
                        <td align="left">
                            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" ValidationGroup="add" />
                            <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" />
                            </td>
                            <td align="left">
                                </td>
        
        </tr>
    </table>
    <table width="600" align="center"><tr>
    <td>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" Font-Bold="False" 
            Font-Size="Larger" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" Font-Size="Smaller" />
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
    
    </td></tr></table>
     </fieldset>
</asp:Content>

