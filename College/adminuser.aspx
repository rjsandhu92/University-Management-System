<%@ Page Title="" Language="C#" MasterPageFile="~/College/College.master" AutoEventWireup="true"
    CodeFile="adminuser.aspx.cs" Inherits="Admin_adminuser" %>

     <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ajaxToolkit:ToolkitScriptManager runat="Server" EnableScriptGlobalization="true" 
        EnableScriptLocalization="true" ID="ToolkitScriptManager1" />
        <table cellspacing="0" cellpadding="0">
<tr>
                                       
                                        <td width="610" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                                ADD USER</h3>
                                        </td>
                                        
                                    </tr>

</table><br /><br />
  
    <fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 151px">Personal Details</legend>
        <table cellpadding="3" cellspacing="6" border="0" width="600px" align="center">
            <tr>
                <td align="right" width="200px">
                    <asp:Label ID="FnameL" runat="server" Text="First Name"></asp:Label>
                    :
                </td>
                <td>
                    <asp:TextBox ID="FnameT" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Name Required" ControlToValidate="FnameT" SetFocusOnError="true" Display="None" ValidationGroup="add"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="NReqE"
            TargetControlID="RequiredFieldValidator1"
            HighlightCssClass="validatorCalloutHighlight" />


</td>
            </tr>
            <tr>
                <td align="right" width="150px">
                    <asp:Label ID="LnameL" runat="server" Text="Last Name"></asp:Label>
                    :
                </td>
                <td>
                    <asp:TextBox ID="LnameT" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
<tr>
            <td align="right" width="150px">
            <asp:Label ID="Lgender" runat="server" Text="Gender:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="Dgender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>

            <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ErrorMessage="Please Select Gender" ControlToValidate="Dgender" SetFocusOnError="true" Display="None" ValidationGroup="add"></asp:RequiredFieldValidator>
                         <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender12"
            TargetControlID="RequiredFieldValidator10"
            HighlightCssClass="validatorCalloutHighlight" />

            </td>
            </tr>
                </table>
        </fieldset>
        <br /><br />
        <fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 151px">User Details</legend>
            <table  cellpadding="3" cellspacing="9" border="0" width="600px" align="center">
                <tr>
                    <td align="right" width="150px">
                        <asp:Label ID="EmailL" runat="server" Text="Email: "></asp:Label>
                        
                    </td>
                    <td>
                        <asp:TextBox ID="EmaleT" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="Invalid Email" ControlToValidate="EmaleT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="redtext"
                                                            Display="None" ControlToValidate="EmaleT" ErrorMessage="Invalid Email Address"
                                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                                    
                                                    
                                                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender3"
            TargetControlID="RequiredFieldValidator4"
            HighlightCssClass="validatorCalloutHighlight" />
            
            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender4"
            TargetControlID="RegularExpressionValidator1"
            HighlightCssClass="validatorCalloutHighlight" />    
&nbsp;</td>
                </tr>
                <tr>
                    <td align="right" width="150px">
                        Password :
                    </td>
                    <td width="200">
                <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
             <asp:RequiredFieldValidator id="passwordReq"
              runat="server"
              ControlToValidate="passwordTextBox"
              ErrorMessage="Password is required!"
              SetFocusOnError="True"  Display="None"  ValidationGroup="add"/>
              <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender9"
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
              Display="None"  ValidationGroup="add"/>
              <asp:CompareValidator id="comparePasswords" 
              runat="server"
              ControlToCompare="passwordTextBox"
              ControlToValidate="confirmPasswordTextBox"
              ErrorMessage="Your passwords do not match up!"
              Display="None"/>
               <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender10"
            TargetControlID="comparePasswords"
            HighlightCssClass="validatorCalloutHighlight"/>
            </td>
        </tr>
                    <tr><td>
                        
                    </td>
                </tr>
            </table>
        </fieldset>
        <br /><br />
        <fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 151px">Contact Details</legend>
        <table  cellpadding="3" cellspacing="9" border="0" width="600px">
            
                <tr>
                    <td align="right" width="150px">
                        <asp:Label ID="AddressL" runat="server" Text="Address: "></asp:Label>
                        
                    </td>
                    <td>
                        <asp:TextBox ID="AddressT" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ErrorMessage="Address Required" ControlToValidate="AddressT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>

                                                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender5"
            TargetControlID="RequiredFieldValidator5"
            HighlightCssClass="validatorCalloutHighlight" />
&nbsp;</td>
                </tr>
                <tr>
                    <td align="right" width="150px">
                        State:
                    </td>
                    <td>
                        <asp:TextBox ID="StateT" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="State Required" ControlToValidate="StateT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>

                                                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender6"
            TargetControlID="RequiredFieldValidator6"
            HighlightCssClass="validatorCalloutHighlight" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="150px">
                        City:
                    </td>
                    <td>
                        <asp:TextBox ID="CityT" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ErrorMessage="City Required" ControlToValidate="CityT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                                                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender7"
            TargetControlID="RequiredFieldValidator7"
            HighlightCssClass="validatorCalloutHighlight" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="150px">
                        <asp:Label ID="PinL" runat="server" Text="Pin Code:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="PinT" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
<tr>
                <td align="right" width="200px">
                    <asp:Label ID="MobileL" runat="server" Text="Mobile No"></asp:Label>
                    :&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="MobileT" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Mobile No Required" ControlToValidate="MobileT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>

                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender2"
            TargetControlID="RequiredFieldValidator3"
            HighlightCssClass="validatorCalloutHighlight" />
<ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender1"
           runat="server"
           TargetControlID="MobileT"
           FilterType="Numbers" />
                </td>
               
            </tr>
                <tr>
                    <td align="right" width="150px">
                        <asp:Label ID="PhoneL" runat="server" Text=" Phone No: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Phonestd" runat="server" Width="50px" value="STD"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="Phoneno" runat="server" Width="75px" value="PHONE"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td width="200px">
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" ValidationGroup="add" />
                        <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" />
                    </td>
                    <td>
                    </td>
                </tr>
        </table>
        
        </fieldset>
    
</asp:Content>
