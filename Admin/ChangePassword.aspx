<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ajaxToolkit:ToolkitScriptManager runat="Server" ID="ScriptManager1" />
 <table cellspacing="0" cellpadding="0">
<tr>
                                       
                                        <td width="610" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                                CHANGE PASSWORD</h3>
                                        </td>
                                        
                                    </tr>

</table><br /><br />
 <fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 3px; padding-left: 10px; background-image: url(../images/heading1.png);
            height: 27px; background-repeat: no-repeat; width: 210px">&nbsp;&nbsp;&nbsp; Password Change</legend>
    <table width="600" cellpadding="10" cellspacing="10">
        <tr>
            <td colspan="3"  align="center">
                Welcome
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3"  align="center">
                <h2>Password Change</h2>
            </td>
        </tr>
        <tr>
            <td align="right" width="200">
                <asp:Label ID="Label1" runat="server" Text="Old Password:"></asp:Label>
            </td>
            <td  width="200">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"  ValidationGroup="add"></asp:TextBox>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Old Password Required" ControlToValidate="TextBox1" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
            TargetControlID="RequiredFieldValidator2"
            HighlightCssClass="validatorCalloutHighlight"/>
            </td>
        </tr>
        <tr>
                <td align="right" width="150px">
                   New Password :
                </td>
                <td>
                    <asp:TextBox ID="PasswordT" runat="server" TextMode=" Password" MaxLength="32"></asp:TextBox>
                </td>
                <td>
                    <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="PasswordT"
                        ControlToCompare="ConfirmasswordT" SetFocusOnError="true" ErrorMessage="PASSWORD IS REQURED" Display="None" ></asp:CompareValidator>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Password Required"
                        ControlToValidate="PasswordT" ValidationGroup="add" Display="None"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" width="200px">
                    <asp:Label ID="Lconfirmpassword" runat="server" Text="Confirm Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ConfirmasswordT" runat="server" TextMode="Password" MaxLength="32"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="ConfirmasswordT"
                        ControlToCompare="PasswordT" SetFocusOnError="true" ErrorMessage="PASSWORD NOT MATCH" ValidationGroup="add" Display="None"></asp:CompareValidator>
                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender18"
                        TargetControlID="CompareValidator2" HighlightCssClass="validatorCalloutHighlight"/>
                </td>
            </tr>
        <tr>
        
        <td>
        
            &nbsp;</td>
        </tr>
        
        <tr>

        <td align="center" colspan="3">
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"  ValidationGroup="add"/>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" 
                onclick="Button2_Click" />
        </td></tr>
        
    </table>
    </fieldset>
</asp:Content>
