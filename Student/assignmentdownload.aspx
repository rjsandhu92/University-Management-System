<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="assignmentdownload.aspx.cs" Inherits="Student_assignmentdownload" %>


 <%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellspacing="0" cellpadding="0" width="800">
<tr>
                                       <td></td>
                                        <td width="600" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                               ASSIGNMENT DOWNLOAD</h3>
                                        </td>
                                        <td></td>
                                    </tr>

</table><br /><br />

<ajaxToolkit:ToolkitScriptManager runat="Server" ID="ScriptManager1" />
   <fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 3px; padding-left: 10px; background-image: url(../images/heading1.png);
            height: 27px; background-repeat: no-repeat; width: 210px">&nbsp; Assignment Download</legend>
    <table  cellspacing="12" cellpadding="3" border="0" width="800px" align="center">
        <tr>
            <td width="200" align="right">
                Select Batch:</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="300px" 
                AppendDataBoundItems="true" AutoPostBack="True">
            </asp:DropDownList>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Subject Name Required" ControlToValidate="DropDownList2" 
                    Display="None" SetFocusOnError="true"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="RequiredFieldValidator3_ValidatorCalloutExtender"
            TargetControlID="RequiredFieldValidator3"
            HighlightCssClass="validatorCalloutHighlight"/>
                
                
                </td>
        
        
        </tr>
    <tr><td width="200" align="right" style="height: 27px">
        Select Subject:</td>
        <td style="height: 27px">
            <asp:DropDownList ID="DropDownList3" runat="server" Width="300px" 
                AppendDataBoundItems="true" AutoPostBack="True">
            </asp:DropDownList>
        </td>
            <td style="height: 27px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Subject Name Required" ControlToValidate="DropDownList2" Display="None" SetFocusOnError="true"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
            TargetControlID="RequiredFieldValidator2"
            HighlightCssClass="validatorCalloutHighlight"/>
                
                
                </td>
        
        
        </tr>
        <tr>
        <td colspan="3" align="center">
            <br />
            <asp:Button ID="Button1" runat="server" Text="SHOW" onclick="Button1_Click" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" ForeColor="Black" GridLines="Vertical" 
                onselectedindexchanged="GridView1_SelectedIndexChanged1">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="S No." />
                    <asp:BoundField DataField="assignmentno" HeaderText="Assignment No." />
                    <asp:BoundField DataField="title" HeaderText="Title" />
                    <asp:BoundField DataField="uploaddate" HeaderText="Upload Date" />
                    <asp:BoundField DataField="fileupload" HeaderText="File Upload" />
                    <asp:CommandField ButtonType="Button" HeaderText="Download" 
                        SelectText="Download" ShowSelectButton="True" />
                </Columns>
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
        <tr>
        <td colspan="3">
            &nbsp;</td>
        </tr>
    </table>
     </fieldset>



</asp:Content>

