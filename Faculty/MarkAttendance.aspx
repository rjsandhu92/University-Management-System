<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="MarkAttendance.aspx.cs" Inherits="Faculty_MarkAttendance" %>

<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<ajaxToolkit:ToolkitScriptManager runat="Server" ID="ScriptManager1" />
 <table cellspacing="0" cellpadding="0" width="800">
<tr>
                                       <td></td>
                                        <td width="600" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                                MARK ATTENDANCE</h3>
                                        </td>
                                        <td></td>
                                    </tr>

</table><br /><br />
   <fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 3px; padding-left: 10px; background-image: url(../images/heading1.png);
            height: 27px; background-repeat: no-repeat; width: 210px">&nbsp; Mark Attendance</legend>
    <table  cellspacing="12" cellpadding="3" border="0" width="800px" align="center">
            <tr><td width="200" align="right">
                Student ID:</td>
        <td>
            <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" 
                Height="21px" Width="298px" 
                onselectedindexchanged="DropDownList6_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
            <td>
                &nbsp;</td>
        
        
        </tr>

            <tr><td width="200" align="right">
                Student Email ID:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="298px"></asp:TextBox>
        </td>
            <td>
                &nbsp;</td>
        
        
        </tr>

            <tr><td width="200" align="right">
            Batch Name:</td>
        <td>
            <asp:DropDownList ID="DropDownList5" runat="server" Width="300px" 
                AutoPostBack="True"  AppendDataBoundItems="true">
            </asp:DropDownList>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Batch Name Required" ControlToValidate="DropDownList5" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                
                
                </td>
        
        
        </tr>

        <tr><td width="200" align="right">
        Subject Name:</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="300px" 
                AppendDataBoundItems="true" AutoPostBack="True">
            </asp:DropDownList>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Subject Name Required" ControlToValidate="DropDownList2" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
            TargetControlID="RequiredFieldValidator2"
            HighlightCssClass="validatorCalloutHighlight"/>
                
                
                </td>
        
        
        </tr>
        <tr><td width="200" align="right">
            Type:</td>
        <td>
            <asp:DropDownList ID="DropDownList4" runat="server" Width="300px" 
                AutoPostBack="True">
            <asp:ListItem>Select Type</asp:ListItem>
            
            <asp:ListItem>Lecture</asp:ListItem>
            <asp:ListItem>Practical</asp:ListItem>
            <asp:ListItem>Tutorial</asp:ListItem>

            </asp:DropDownList>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Type is Required" ControlToValidate="DropDownList4" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender5"
            TargetControlID="RequiredFieldValidator5"
            HighlightCssClass="validatorCalloutHighlight"/>
                
                
                </td>
        
        
        </tr>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <tr>
        <td colspan="3" align="center">
           
        </td>
        </tr>
        <tr>
        <td colspan="3">
            
                               
        </td>
        </tr></ContentTemplate>
        </asp:UpdatePanel>

        
        <tr><td width="200" align="right">
        Time: </td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server" Width="300px" 
                AutoPostBack="True">
            <asp:ListItem>Select Time</asp:ListItem>

            <asp:ListItem>8-9</asp:ListItem>
            <asp:ListItem>9-10</asp:ListItem>
            <asp:ListItem>10-11</asp:ListItem>
            <asp:ListItem>11-12</asp:ListItem>
            <asp:ListItem>12-1</asp:ListItem>
            <asp:ListItem>1-2</asp:ListItem>
            <asp:ListItem>2-3</asp:ListItem>
            <asp:ListItem>3-4</asp:ListItem>
            <asp:ListItem>4-5</asp:ListItem>

            </asp:DropDownList>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Time Required" ControlToValidate="DropDownList3" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender3"
            TargetControlID="RequiredFieldValidator3"
            HighlightCssClass="validatorCalloutHighlight"/>
                
                
                </td>
        
        
        </tr>
        
        <tr><td width="200" align="right">
            Date:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Date Required" ControlToValidate="TextBox1" Display="None" SetFocusOnError="true"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender4"
            TargetControlID="RequiredFieldValidator4"
            HighlightCssClass="validatorCalloutHighlight"/>
              <ajaxToolkit:CalendarExtender ID="customCalendarExtender" runat="server" TargetControlID="TextBox1"
           CssClass="MyCalendar" Format="MMMM d, yyyy" SelectedDate="May 26, 2011"  PopupPosition="right"/>   
                
                </td>
        
        
        </tr>
        
        <tr><td width="200" align="right">
            Status:</td>
        <td>
            <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" 
                Height="22px" Width="145px">
                <asp:ListItem>Present</asp:ListItem>
                <asp:ListItem>Absent</asp:ListItem>
            </asp:DropDownList>
        &nbsp;
        </td>
            <td>
                &nbsp;</td>
        
        
        </tr>
        
    </table><table width="800">
    <tr>
    <td colspan="3" align="center"><asp:Button ID="Button2" runat="server" 
            Text="Sumbit" onclick="Button2_Click"/></td></tr></table>
       
     </fieldset>
</asp:Content>

