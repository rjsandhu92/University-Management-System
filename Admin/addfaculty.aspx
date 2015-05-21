<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="addfaculty.aspx.cs" Inherits="Admin_addfaculty" %>


 <%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ajaxToolkit:ToolkitScriptManager runat="Server" EnableScriptGlobalization="true" 
        EnableScriptLocalization="true" ID="ToolkitScriptManager1" />

<fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 140px">Personal Details</legend>
        <table cellpadding="3" cellspacing="6" border="0" width="600px" align="center">
            <tr>
                <td align="right" width="200px">
                    <asp:Label ID="FnameL" runat="server" Text="First Name"></asp:Label>
                    :
                </td>
                <td>
                    <asp:TextBox ID="FnameT" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Name Required" ControlToValidate="FnameT" SetFocusOnError="true" Display="None" ValidationGroup="add" ></asp:RequiredFieldValidator>
 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="NReqE"
            TargetControlID="RequiredFieldValidator1"
            HighlightCssClass="validatorCalloutHighlight"/>
            <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender3"
           runat="server"
           TargetControlID="FnameT"
           FilterType="UppercaseLetters,LowercaseLetters" />


</td>
            </tr>
            <tr>
                <td align="right" width="150px">
                    <asp:Label ID="LnameL" runat="server" Text="Last Name:"></asp:Label>
                    
                </td>
                <td>
                    <asp:TextBox ID="LnameT" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
              <tr>
                <td align="right" width="150px">
                    <asp:Label ID="Gender" runat="server" Text="Gender"></asp:Label>
                    
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList_gender" runat="server" AutoPostBack="True">
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem Selected="True">Male</asp:ListItem>

                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Plese Select Gender" SetFocusOnError="true" ControlToValidate="DropDownList_gender" Display="None"  ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender10"
            TargetControlID="RequiredFieldValidator10"
            HighlightCssClass="validatorCalloutHighlight" />
                </td>
            </tr>
          
            <tr>
                <td align="right" width="150px">
                    <asp:Label ID="DobL" runat="server" Text="Date Of Birth"></asp:Label>
                    :
                </td>
                <td>
                    <asp:TextBox ID="DobT" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="DobT_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="DobT">
                    </ajaxToolkit:CalendarExtender>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="D.O.B Required" ControlToValidate="DobT" SetFocusOnError="true" Display="None"  ValidationGroup="add"></asp:RequiredFieldValidator>
                         <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
            TargetControlID="RequiredFieldValidator2"
            HighlightCssClass="validatorCalloutHighlight" />

                </td>
            </tr>
            
            
        </table>
        </fieldset>
        <br />
        <fieldset style="border-color:#808080">
        <legend style="margin-left:15px; padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 140px">Faculty Details</legend>
            <table  cellpadding="3" cellspacing="9" border="0" width="600px" align="center">
                <tr>
                    <td align="right" width="150px">
                        <asp:Label ID="EmailL" runat="server" Text="Email: "></asp:Label>
                        
                    </td>
                    <td>
                        <asp:TextBox ID="EmaleT" runat="server" MaxLength="100"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="Invalid Email" ControlToValidate="EmaleT" SetFocusOnError="true" Display="None"  ValidationGroup="add"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="redtext"
                                                            Display="None" ControlToValidate="EmaleT" ErrorMessage="Invalid Email Address"
                                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                                                        
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
                    <td>
                        <asp:TextBox ID="PasswordT" runat="server" TextMode="Password" MaxLength="32"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="PasswordT" ControlToCompare="ConfirmasswordT" SetFocusOnError="true" ErrorMessage="CompareValidator"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Password Required" ControlToValidate="PasswordT"  ValidationGroup="add"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                <tr>
                    <td align="right" width="200px">
                        <asp:Label ID="Lconfirmpassword" runat="server" Text="Confirm Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ConfirmasswordT" runat="server" TextMode="Password" 
                            MaxLength="32"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="ConfirmasswordT" ControlToCompare="PasswordT" SetFocusOnError="true" ErrorMessage="CompareValidator"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" width="200px">
                        <asp:Label ID="QualificationL" runat="server" Text="Qualification:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="QualificationT" runat="server" MaxLength="100"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="QualificationT" SetFocusOnError="true" Display="None" ErrorMessage="Qualification Required"  ValidationGroup="add"></asp:RequiredFieldValidator>
                         <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender5"
            TargetControlID="RequiredFieldValidator8"
            HighlightCssClass="validatorCalloutHighlight" />
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
                    <td align="right" width="150px">
                        <asp:Label ID="AddressL" runat="server" Text="Address: "></asp:Label>
                        
                    </td>
                    <td>
                        <asp:TextBox ID="AddressT" runat="server" MaxLength="100"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ErrorMessage="Address Required" ControlToValidate="AddressT" Display="None" SetFocusOnError="true"  ValidationGroup="add"></asp:RequiredFieldValidator>
                             <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender6"
            TargetControlID="RequiredFieldValidator5"
            HighlightCssClass="validatorCalloutHighlight" />
                            
                            </td>
                </tr>
                <tr>
                    <td align="right" width="150px">
                        State:
                    </td>
                    <td>
                        <asp:TextBox ID="StateT" runat="server" MaxLength="50"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="State Required" ControlToValidate="StateT" Display="None" SetFocusOnError="true"  ValidationGroup="add"></asp:RequiredFieldValidator>
                             <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender7"
            TargetControlID="RequiredFieldValidator6"
            HighlightCssClass="validatorCalloutHighlight" />

            <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender6"
           runat="server"
           TargetControlID="StateT"
           FilterType="UppercaseLetters,LowercaseLetters" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="150px">
                        City:
                    </td>
                    <td>
                        <asp:TextBox ID="CityT" runat="server" MaxLength="50"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ErrorMessage="City Required" ControlToValidate="CityT" SetFocusOnError="true" Display="None"  ValidationGroup="add"></asp:RequiredFieldValidator>
                             <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender8"
            TargetControlID="RequiredFieldValidator7"
            HighlightCssClass="validatorCalloutHighlight" />
            <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender2"
           runat="server"
           TargetControlID="CityT"
           FilterType="UppercaseLetters,LowercaseLetters" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="150px">
                        <asp:Label ID="PinL" runat="server" Text="Pin Code:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="PinT" runat="server" MaxLength="6"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="PinT" Display="None" SetFocusOnError="true" ErrorMessage="Pin Required"  ValidationGroup="add"></asp:RequiredFieldValidator>
                        
                         <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender9"
            TargetControlID="RequiredFieldValidator9"
            HighlightCssClass="validatorCalloutHighlight" />

            <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender4"
           runat="server"
           TargetControlID="PinT"
           FilterType="Numbers" />
                        </td>
                </tr>
<tr>
                <td align="right" width="200px">
                    <asp:Label ID="MobileL" runat="server" Text="Mobile No"></asp:Label>
                    :&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="MobileT" runat="server" MaxLength="10"></asp:TextBox>
                </td>
                <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Mobile No Required" ControlToValidate="MobileT" SetFocusOnError="true" Display="None"  ValidationGroup="add"></asp:RequiredFieldValidator>

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
                        <asp:TextBox ID="Phonestd" runat="server" Width="50px" value="STD" 
                            MaxLength="6"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="Phoneno" runat="server" Width="75px" value="PHONE" 
                            MaxLength="8"></asp:TextBox>
                    </td>
                    <td>
                    <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender5"
           runat="server"
           TargetControlID="Phonestd"
           FilterType="Numbers" />
           <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender7"
           runat="server"
           TargetControlID="Phoneno"
           FilterType="Numbers" />
                       </td>
                </tr>
                
        </table>
        </fieldset>
        
        <br />
        <table>
        <tr>
                    <td width="200px">
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit"  ValidationGroup="add" 
                            onclick="Button1_Click1"/>
                        <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" ValidationGroup="add"/>
                    </td>
                    <td>
                    </td>
                </tr>
        </table>
</asp:Content>

