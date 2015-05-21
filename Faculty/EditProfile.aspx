<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Faculty_EditProfile" %>
 <%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<ajaxToolkit:ToolkitScriptManager runat="Server" EnableScriptGlobalization="true" 
        EnableScriptLocalization="true" ID="ToolkitScriptManager1" />
          <table cellspacing="0" cellpadding="0" width="800">
<tr>
                                       <td></td>
                                        <td width="600" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                                PROFILE</h3>
                                        </td>
                                        <td></td>
                                    </tr>

</table><br /><br />
<fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 140px">Personal Details</legend>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Welcome,<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </fieldset>
        <br />
        <fieldset style="border-color:#808080">
        <legend style="margin-left:15px; padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 140px">Faculty Details</legend>
            <table style="width: 100%">
                <tr>
                    <td style="width: 168px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qualification:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            </fieldset>
        <br />
        
       <fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 140px">Contact Details</legend>
        <table  cellpadding="3" cellspacing="9" border="0" width="600px">
            
                <tr>
                    <td align="right" style="width: 150px">
                        Address:</td>
                    <td>
                        <asp:TextBox ID="AddressT" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  Display="None"
                            ErrorMessage="RequiredFieldValidator" ControlToValidate="AddressT" ValidationGroup="sub"></asp:RequiredFieldValidator>
                             <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender6"
            TargetControlID="RequiredFieldValidator5"
            HighlightCssClass="validatorCalloutHighlight" />
                            
                            </td>
                </tr>
                <tr>
                    <td align="right" style="width: 150px">
                        State:
                    </td>
                    <td>
                        <asp:TextBox ID="StateT" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="RequiredFieldValidator" ControlToValidate="StateT" Display="None" SetFocusOnError="true" ValidationGroup="sub"></asp:RequiredFieldValidator>
                             <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender7"
            TargetControlID="RequiredFieldValidator6"
            HighlightCssClass="validatorCalloutHighlight" />
            <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender7"
           runat="server"
           TargetControlID="StateT"
           FilterType="UppercaseLetters,LowercaseLetters,Custom" ValidChars=" " />

                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 150px">
                        City:
                    </td>
                    <td>
                        <asp:TextBox ID="CityT" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ErrorMessage="RequiredFieldValidator" ControlToValidate="CityT" SetFocusOnError="true" Display="None" ValidationGroup="sub"></asp:RequiredFieldValidator>
                             <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender8"
            TargetControlID="RequiredFieldValidator7"
            HighlightCssClass="validatorCalloutHighlight" />
            <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender8"
           runat="server"
           TargetControlID="CityT"
           FilterType="UppercaseLetters,LowercaseLetters,Custom" ValidChars=" " />
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 150px">
                        Pincode:</td>
                    <td>
                        <asp:TextBox ID="PinT" runat="server" MaxLength="6"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="PinT" Display="None" SetFocusOnError="true" ErrorMessage="RequiredFieldValidator" ValidationGroup="sub"></asp:RequiredFieldValidator>
                        
                         <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender9"
            TargetControlID="RequiredFieldValidator9"
            HighlightCssClass="validatorCalloutHighlight" />
            <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender9"
           runat="server"
           TargetControlID="PinT"
           FilterType="Numbers" ValidChars=" " />
                        </td>
                </tr>
                <tr>
                    <td align="right" style="width: 150px">
                        Mobile no:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="right" style="width: 150px">
                        Phone no:</td>
                    <td>
                        <asp:TextBox ID="Phonestd" runat="server" Width="144px"
                            MaxLength="12"></asp:TextBox>
                        &nbsp;&nbsp;
                        <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender10"
           runat="server"
           TargetControlID="Phonestd"
           FilterType="Numbers" ValidChars=" " />
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
                
        </table>
        </fieldset>
        
        <br />
        <table>
        <tr>
                    <td width="200px">
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" ValidationGroup="sub" />
                        <asp:Button ID="Button2" runat="server" Text="Reset" />
                    </td>
                    <td>
                    </td>
                </tr>
        </table>
</asp:Content>