<%@ Page Title="" Language="C#" MasterPageFile="~/College/College.master" AutoEventWireup="true"
    CodeFile="Adddepartment.aspx.cs" Inherits="College_Adddepartment" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ajaxToolkit:ToolkitScriptManager runat="Server" ID="ScriptManager1" />
      <table cellspacing="0" cellpadding="0" width="800">
<tr>
                                       <td></td>
                                        <td width="600" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                                ADD DEPARTMENT</h3>
                                        </td>
                                        <td></td>
                                    </tr>

</table><br /><br />

    <fieldset style="border-color: #808080">
        <legend style="margin-left: 15px; padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 140px">Add Department</legend>
        <table cellspacing="12" cellpadding="3" border="0" width="600px" align="center">
            
            <tr>
                <td align="right">
                    <asp:Label ID="COurseNamelbl" runat="server" Text="Course Name:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="139px" 
                        AppendDataBoundItems="true" AutoPostBack="True">
                        <asp:ListItem>B.tech</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>BBA</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>M.tech</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="true" Display="None"
                        runat="server" ErrorMessage="Course Name Require" ControlToValidate="DropDownList1" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender3"
                        TargetControlID="RequiredFieldValidator4" HighlightCssClass="validatorCalloutHighlight" />
                </td>
            </tr>
            <tr>
                <td width="200" align="right">
                    <asp:Label ID="DepartmentNamelbl" runat="server" Text="Department Name:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                        <asp:ListItem>ComputerScience</asp:ListItem>
                        <asp:ListItem>Business</asp:ListItem>
                        <asp:ListItem>Engineering</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Department Name Required"
                        ControlToValidate="DropDownList2" Display="None" SetFocusOnError="true"  
                        ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
                        TargetControlID="RequiredFieldValidator2" HighlightCssClass="validatorCalloutHighlight" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td align="left">
                </td>
            </tr>
        </table>
    </fieldset>
    <br />
    <br />
    <br />
    <br />
    <br />
    <table cellpadding="12px" cellspacing="0" align="center" width="600px">
        <tr>
            <td align="center">
                <asp:Button ID="SubmitBtn" runat="server" Text="Submit" 
                    onclick="SubmitBtn_Click"  ValidationGroup="add" />
                <asp:Button ID="ResetBtn" runat="server" Text="Reset" 
                    onclick="ResetBtn_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
