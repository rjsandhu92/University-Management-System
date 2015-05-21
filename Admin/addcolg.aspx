<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true"
    CodeFile="addcolg.aspx.cs" Inherits="Admin_addcolg" %>

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
                                                ADD COLLEGE</h3>
                                        </td>
                                        
                                    </tr>

</table><br /><br />
    <fieldset style="border-color:#808080">
        <legend style="margin-left: 15px;  padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 140px">Collage Details</legend>
        <center>
            <table cellpadding="3" cellspacing="9" border="0" width="600px">
                <tr>
                    <td align="right" width="150px">
                        <asp:Label ID="NameL" runat="server" Text="College Name:"></asp:Label>
                        
                    </td>
                    <td>
                        <asp:TextBox ID="NameT" runat="server" MaxLength="32"></asp:TextBox>
                    </td>
                    <td style="width: 20px">
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required"
                            ControlToValidate="NameT" SetFocusOnError="true" Display="None" ValidationGroup="add"></asp:RequiredFieldValidator>
                        &nbsp;
                         <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="NReqE"
            TargetControlID="RequiredFieldValidator1"
            HighlightCssClass="validatorCalloutHighlight" />
            <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender3"
           runat="server"
           TargetControlID="NameT"
           FilterType="UppercaseLetters,LowercaseLetters,Custom" ValidChars=" " />
                    </td>
                </tr>

                <tr>
                    <td align="right" width="150px">
                        <asp:Label ID="Websitel" runat="server" Text="Website:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="WebsiteT" runat="server" MaxLength="50"></asp:TextBox>
                    </td>
                    <td style="width: 20px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Website Required"
                            ControlToValidate="WebsiteT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender2"
            TargetControlID="RequiredFieldValidator4"
            HighlightCssClass="validatorCalloutHighlight"  />
            <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender4"
           runat="server"
           TargetControlID="WebsiteT"
           FilterType="UppercaseLetters,LowercaseLetters,Custom,Numbers" InvalidChars=".-_" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="150px">
                        <asp:Label ID="EmailL" runat="server" Text="Email: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="EmaleT" runat="server" MaxLength="50"></asp:TextBox>
                    </td>
                    <td style="width: 20px">
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Invalid Email"
                            ControlToValidate="EmaleT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="redtext"
                            Display="None" ControlToValidate="EmaleT" ErrorMessage="Invalid Email Address"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True"></asp:RegularExpressionValidator>
                        &nbsp;

                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender3"
            TargetControlID="RequiredFieldValidator2"
            HighlightCssClass="validatorCalloutHighlight"  />

            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender4"
            TargetControlID="RegularExpressionValidator1"
            HighlightCssClass="validatorCalloutHighlight"  />
                    </td>
                </tr>
               <tr>
                <td align="right" width="150px">
                    Password :
                </td>
                <td>
                    <asp:TextBox ID="PasswordT" runat="server" TextMode="Password" MaxLength="32"></asp:TextBox>
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
           
            </table>
        </center>
    </fieldset>
    <br />
    <fieldset style="border-color:#808080">
        <legend style="margin-left: 15px; padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 140px">Contact Details</legend>
        <center>
            <table cellpadding="3" cellspacing="9" border="0" width="600px">
                <tr>
                    <td align="right" width="150px">
                        <asp:Label ID="AddressL" runat="server" Text="Address: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="AddressT" runat="server" MaxLength="100"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Address Required"
                            ControlToValidate="AddressT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                             <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender5"
            TargetControlID="RequiredFieldValidator5"
            HighlightCssClass="validatorCalloutHighlight"  />
           
                        &nbsp;
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="State Required"
                            ControlToValidate="StateT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                             <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender6"
            TargetControlID="RequiredFieldValidator6"
            HighlightCssClass="validatorCalloutHighlight"  />
            <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender6"
           runat="server"
           TargetControlID="StateT"
           FilterType="UppercaseLetters,LowercaseLetters" ValidChars=" " />
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="City Required"
                            ControlToValidate="CityT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                             <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender7"
            TargetControlID="RequiredFieldValidator7"
            HighlightCssClass="validatorCalloutHighlight"  />
            <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender7"
           runat="server"
           TargetControlID="CityT"
           FilterType="UppercaseLetters,LowercaseLetters" ValidChars=" " />
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Pin Code Required"
                            ControlToValidate="PinT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                             <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender8"
            TargetControlID="RequiredFieldValidator8"
            HighlightCssClass="validatorCalloutHighlight"  />
            <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender2"
           runat="server"
           TargetControlID="PinT"
           FilterType="Numbers" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="150px">
                        <asp:Label ID="MobileL" runat="server" Text="Mobile No:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="MobileT" runat="server" MaxLength="10"></asp:TextBox>
                    </td>
                    <td style="width: 20px">
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile No Required"
                            ControlToValidate="MobileT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
            TargetControlID="RequiredFieldValidator3"
            HighlightCssClass="validatorCalloutHighlight"  />

            <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender1"
           runat="server"
           TargetControlID="MobileT"
           FilterType="Numbers" />

                    </td>
                </tr>

                <tr>
                    <td align="right" width="200px">
                        <asp:Label ID="PhoneL" runat="server" Text=" Phone No: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="StdT" runat="server" Width="50px" value="STD" MaxLength="6"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="PhoneT" runat="server" Width="75px" value="PHONE" 
                            MaxLength="8"></asp:TextBox>
                    </td>
                    <td>
                        <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender8"
           runat="server"
           TargetControlID="StdT"
           FilterType="Numbers" />
           <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender9"
           runat="server"
           TargetControlID="PhoneT"
           FilterType="Numbers" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="150px">
                        <asp:Label ID="FaxL" runat="server" Text="Fax:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="FaxT" runat="server" Width="50px" value="STD" MaxLength="6"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="FaxphoneT" runat="server" Width="75px" value="PHONE" 
                            MaxLength="8"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                        <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender10"
           runat="server"
           TargetControlID="FaxT"
           FilterType="Numbers" />
           <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender11"
           runat="server"
           TargetControlID="FaxphoneT"
           FilterType="Numbers" />
                    </td>
                </tr>
                <tr>
                    <td width="150px">
                    </td>
                    <td>
                        <asp:Button ID="SubmitB" runat="server" Text="Submit" onclick="SubmitB_Click" ValidationGroup="add"/>
                        <asp:Button ID="ResetB" runat="server" Text="Reset" onclick="ResetB_Click" />
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </center>
    </fieldset>
</asp:Content>
