<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="assignmentupload.aspx.cs" Inherits="Faculty_assignmentupload" %>

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
                                                ASSIGNMENT UPLOAD</h3>
                                        </td>
                                        <td></td>
                                    </tr>

</table><br /><br />
   <fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 3px; padding-left: 10px; background-image: url(../images/heading1.png);
            height: 27px; background-repeat: no-repeat; width: 210px">&nbsp; Assignment Upload</legend>
    <table  cellspacing="12" cellpadding="3" border="0" width="800px" align="center">
    <tr><td align="right" style="width: 198px">
        Select Batch:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="300px" 
                AutoPostBack="True" AppendDataBoundItems="true" >
            </asp:DropDownList>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Course Name Required" ControlToValidate="DropDownList1" 
                    Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="RequiredFieldValidator6_ValidatorCalloutExtender"
            TargetControlID="RequiredFieldValidator6"
            HighlightCssClass="validatorCalloutHighlight"/>
                
                
                </td>
        
        
        </tr>
    <tr><td align="right" style="width: 198px">
        Subject Name:</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="300px" 
                AppendDataBoundItems="true" AutoPostBack="True" >
            </asp:DropDownList>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Course Name Required" ControlToValidate="DropDownList2" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
            TargetControlID="RequiredFieldValidator2"
            HighlightCssClass="validatorCalloutHighlight"/>
                
                
                </td>
        
        
        </tr>
        <tr>
       <td align="right" style="width: 198px">
           Assignment No:</td>
       <td>
           <asp:DropDownList ID="DropDownList3" runat="server" Width="287px" 
               AutoPostBack="True">
               <asp:ListItem>Assignment Number</asp:ListItem>
               <asp:ListItem>1</asp:ListItem>
               <asp:ListItem>2</asp:ListItem>
               <asp:ListItem>3</asp:ListItem>
               <asp:ListItem>4</asp:ListItem>
               <asp:ListItem>5</asp:ListItem>
           </asp:DropDownList>
       </td>
       <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
               ErrorMessage="Course Name Required" ControlToValidate="DropDownList2" 
               Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="RequiredFieldValidator7_ValidatorCalloutExtender"
            TargetControlID="RequiredFieldValidator7"
            HighlightCssClass="validatorCalloutHighlight"/>
                
                
       </td>
        </tr>

        <tr>
       <td align="right" style="width: 198px">
       Title
       </td>
       <td>
           <asp:TextBox ID="TextBox1" runat="server" Width="300"></asp:TextBox>
       </td>
       <td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Title Required" ControlToValidate="TextBox1" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender2"
            TargetControlID="RequiredFieldValidator1"
            HighlightCssClass="validatorCalloutHighlight"/>
       </td>
        </tr>

        <tr>
       <td align="right" style="width: 198px">
      Upload date
       </td>
       <td>
           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
       </td>
       <td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" Title Required" ControlToValidate="TextBox2" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender3"
            TargetControlID="RequiredFieldValidator3"
            HighlightCssClass="validatorCalloutHighlight"/>
             <ajaxToolkit:CalendarExtender ID="customCalendarExtender" runat="server" TargetControlID="TextBox2"
           CssClass="MyCalendar" Format="MMMM d, yyyy" SelectedDate="December 1 2011" PopupPosition="right"/>
       </td>
        </tr>
        
        <tr>
        <td style="width: 198px"></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        
        </td><td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=" File Required" ControlToValidate="FileUpload1" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender5"
            TargetControlID="RequiredFieldValidator5"
            HighlightCssClass="validatorCalloutHighlight"/>
        </td>
        
        </tr>
        <tr>
        <td colspan="3" align="center">
        
            <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" ValidationGroup="add" /></td>
        </tr>
        
        
        <tr>




        <td colspan="3">
                         &nbsp;</td>
        </tr>
    </table>
     </fieldset>

</asp:Content>
