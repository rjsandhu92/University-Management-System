<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="Faculty_Changepassword" %>

<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ajaxToolkit:ToolkitScriptManager runat="Server" ID="ScriptManager1" />
      <table cellspacing="0" cellpadding="0" width="800">
<tr>
                                       <td></td>
                                        <td width="600" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                                CHANGE PASSWORD</h3>
                                        </td>
                                        <td></td>
                                    </tr>

</table><br /><br />
 
 <fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 3px; padding-left: 10px; background-image: url(../images/heading1.png);
            height: 27px; background-repeat: no-repeat; width: 210px">&nbsp;&nbsp;&nbsp; Password Change</legend>
    <table width="600" cellpadding="10" cellspacing="10">
        <tr>
            <td colspan="3"  align="center">
                <h2>Password Change</h2>
                <p>Welcome,<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </p>
            </td>
        </tr>
        <tr>
            <td align="right" width="200">
                <asp:Label ID="Label1" runat="server" Text="Old Password:"></asp:Label>
            </td>
            <td  width="200">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Old Password Required" ControlToValidate="TextBox1" Display="None" SetFocusOnError="true" ValidationGroup="sub"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
            TargetControlID="RequiredFieldValidator2"
            HighlightCssClass="validatorCalloutHighlight"/>
            </td>
        </tr>
        <tr>
            <td align="right" width="200">
                &nbsp;</td>
            <td  width="200">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" width="200">
                <asp:Label ID="Label2" runat="server" Text="New Password:"></asp:Label>
            </td>
            <td width="200">
                <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
             <asp:RequiredFieldValidator id="passwordReq"
              runat="server"
              ControlToValidate="passwordTextBox"
              ErrorMessage="Password is required!"
              SetFocusOnError="True"  Display="None"  ValidationGroup="sub"/>
              <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender2"
            TargetControlID="passwordReq"
            HighlightCssClass="validatorCalloutHighlight"/>
            </td>
        </tr>
        <tr>
            <td align="right"  width="200">
                <asp:Label ID="Label3" runat="server" Text="Conform Password:"></asp:Label>
            </td>
            <td  width="200">
                <asp:TextBox ID="confirmPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
             <asp:RequiredFieldValidator id="confirmPasswordReq"
              runat="server" 
              ControlToValidate="confirmPasswordTextBox"
              ErrorMessage="Password confirmation is required!"
              SetFocusOnError="True" 
              Display="None"  ValidationGroup="sub"/>
              <asp:CompareValidator id="comparePasswords" 
              runat="server"
              ControlToCompare="passwordTextBox"
              ControlToValidate="confirmPasswordTextBox"
              ErrorMessage="Your passwords do not match up!"
              Display="None"/>
               <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender3"
            TargetControlID="comparePasswords"
            HighlightCssClass="validatorCalloutHighlight"/>
            </td>
        </tr><tr>
        <td align="center" colspan="3">
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"  ValidationGroup="sub"/>
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Cencel" 
                onclick="Button2_Click" />
        </td></tr>
        
    </table>
    </fieldset>
</asp:Content>
