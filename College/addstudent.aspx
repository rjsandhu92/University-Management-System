<%@ Page Title="" Language="C#" MasterPageFile="~/College/College.master" AutoEventWireup="true"
    CodeFile="addstudent.aspx.cs" Inherits="Admin_addstudent" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ajaxToolkit:ToolkitScriptManager runat="Server" ID="ScriptManager1" />
    <fieldset style="border-color: #808080">
        <legend style="margin-left: 15px; padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 151px">Personal Details</legend>
        <table cellpadding="3" cellspacing="6" border="0" width="600px" align="center">
            <tr>
                <td width="200px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="FnameL" runat="server" Text="First Name"></asp:Label>
                    :
                </td>
                <td>
                    <asp:TextBox ID="FnameT" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required"
                        ControlToValidate="FnameT" SetFocusOnError="true" Display="None" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="NReqE" TargetControlID="RequiredFieldValidator1"
                        HighlightCssClass="validatorCalloutHighlight" />

                        <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender3"
           runat="server"
           TargetControlID="FnameT"
           FilterType="UppercaseLetters,LowercaseLetters"/>
                </td>
            </tr>
            <tr>
                <td align="right" width="150px">
                    <asp:Label ID="LnameL" runat="server" Text="Last Name"></asp:Label>
                    
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
                    <asp:DropDownList ID="DropDownList_gender" runat="server">
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>

                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="DropDownList_gender" SetFocusOnError="true" Display="None" ErrorMessage="Select Gender" ValidationGroup="add"></asp:RequiredFieldValidator> 
                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender23" TargetControlID="RequiredFieldValidator23"
                        HighlightCssClass="validatorCalloutHighlight" />
                </td>
            </tr>
            <tr>
                <td align="right" width="150px">
                    <asp:Label ID="DobL" runat="server" Text="Date Of Birth"></asp:Label>
                    :
                </td>
                <td>
                    <asp:TextBox ID="DobT" runat="server" MaxLength="50"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="D.O.B Required"
                        ControlToValidate="DobT" SetFocusOnError="true" Display="None" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
                        TargetControlID="RequiredFieldValidator2" HighlightCssClass="validatorCalloutHighlight" />
                        <ajaxToolkit:CalendarExtender ID="customCalendarExtender" runat="server" TargetControlID="DobT"
           CssClass="MyCalendar" Format="MMMM d, yyyy" SelectedDate="May 26, 1990" PopupPosition="right"/>
                </td>
            </tr>
            <tr>
                <td width="150px" align="right">
                    <asp:Label ID="FathernameL" runat="server" Text="Father Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="FathernameT" runat="server" MaxLength="100"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator"
                        ControlToValidate="FathernameT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                
                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender8"
                    TargetControlID="RequiredFieldValidator8" HighlightCssClass="validatorCalloutHighlight" />

                    <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender1"
           runat="server"
           TargetControlID="FathernameT"
           FilterType="UppercaseLetters,LowercaseLetters,Custom" ValidChars=" " />
                    </td>
            </tr>
           
        </table>
    </fieldset>
    <br />
    <br />
    <fieldset style="border-color: #808080">
        <legend style="margin-left: 15px; padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 151px">User Details</legend>
        <table cellpadding="3" cellspacing="9" border="0" width="600px" align="center">
            <tr>
                <td align="right" width="150px">
                    <asp:Label ID="EmailL" runat="server" Text="Email: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="EmaleT" runat="server" MaxLength="100"></asp:TextBox>
                </td>
                <td>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Invalid Email"
                        ControlToValidate="EmaleT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="redtext"
                        Display="None" ControlToValidate="EmaleT" ErrorMessage="Invalid Email Address"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True"></asp:RegularExpressionValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender3"
                        TargetControlID="RequiredFieldValidator4" HighlightCssClass="validatorCalloutHighlight" />
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender4"
                        TargetControlID="RegularExpressionValidator1" HighlightCssClass="validatorCalloutHighlight" />
                    &nbsp;
                </td>
            </tr>
             <tr>
                    <td align="right" width="150px">
                        <asp:Label ID="PasswordL" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Passwordt" runat="server" TextMode="Password" MaxLength="32"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Password Required" Display="None" SetFocusOnError="true" ControlToValidate="Passwordt" ValidationGroup="add"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Match" ControlToCompare="ConfirmpasswordT" ControlToValidate="Passwordt"></asp:CompareValidator>
                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender18"
                    TargetControlID="RequiredFieldValidator13" HighlightCssClass="validatorCalloutHighlight" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="200px">
                        <asp:Label ID="ConfirmpasswordL" runat="server" Text="Confirm Password: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ConfirmpasswordT" runat="server" TextMode="Password" 
                            MaxLength="32"></asp:TextBox>
                    </td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Password Required" Display="None" SetFocusOnError="true" ControlToValidate="ConfirmpasswordT" ValidationGroup="add"></asp:RequiredFieldValidator>
                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender19"
                    TargetControlID="RequiredFieldValidator14" HighlightCssClass="validatorCalloutHighlight" />
                    </td>
                </tr>
 
        </table>
    </fieldset>
    <br />
    <br />
    <fieldset style="border-color: #808080">
        <legend style="margin-left: 15px; padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 151px">Contact Details</legend>
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
                        TargetControlID="RequiredFieldValidator5" HighlightCssClass="validatorCalloutHighlight" />
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
                        TargetControlID="RequiredFieldValidator6" HighlightCssClass="validatorCalloutHighlight" />
                    <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender2"
           runat="server"
           TargetControlID="StateT"
           FilterType="UppercaseLetters,LowercaseLetters"/>    
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
                        TargetControlID="RequiredFieldValidator7" HighlightCssClass="validatorCalloutHighlight" />
                        <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender4"
           runat="server"
           TargetControlID="CityT"
           FilterType="UppercaseLetters,LowercaseLetters"/>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Pin Required" Display="None" SetFocusOnError="true" ControlToValidate="PinT" ValidationGroup="add"></asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender20"
                        TargetControlID="RequiredFieldValidator12" HighlightCssClass="validatorCalloutHighlight" />
                       
                <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender5"
           runat="server"
           TargetControlID="PinT"
           FilterType="Numbers"/>
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
                <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender6"
           runat="server"
           TargetControlID="Phonestd"
           FilterType="Numbers"/>
           <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender7"
           runat="server"
           TargetControlID="Phoneno"
           FilterType="Numbers"/>
                <td>
                    &nbsp;
                </td>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile No Required"
                        ControlToValidate="MobileT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender2"
                        TargetControlID="RequiredFieldValidator3" HighlightCssClass="validatorCalloutHighlight" />
                        <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender8"
           runat="server"
           TargetControlID="MobileT"
           FilterType="Numbers"/>
                </td>
                <caption>
                    <br />
                </caption>
            </tr>
        </table>
    </fieldset>
    <br />
    <br />
    <fieldset style="border-color: #808080">
        <legend style="margin-left: 15px; padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 151px">&nbsp;&nbsp;&nbsp; Qualification</legend>
        <table width="800" cellpadding="0" cellspacing="10">
            <tr>
                <td align="center">
                    &nbsp;
                </td>
                <td align="center">
                    %
                </td>
                <td width="400" align="center">
                    Board
                </td>
                <td width="200" align="center">
                    Year
                </td>
            </tr>
            <tr>
                <td align="right">
                    10th
                </td>
                <td align="center">
                    <asp:TextBox ID="TextBox1" runat="server" Width="87px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="% Required"
                        ControlToValidate="TextBox1" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender12"
                        TargetControlID="RequiredFieldValidator17" HighlightCssClass="validatorCalloutHighlight" />
                        <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender9"
           runat="server"
           TargetControlID="TextBox1"
           FilterType="Custom,Numbers" ValidChars="."/>
                </td>
                <td width="400" align="center">
                    <asp:TextBox ID="TextBox2" runat="server" Width="300"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Board Required"
                        ControlToValidate="TextBox2" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender13"
                        TargetControlID="RequiredFieldValidator18" HighlightCssClass="validatorCalloutHighlight" />
                        <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender10"
           runat="server"
           TargetControlID="TextBox2"
           FilterType="LowercaseLetters,Custom,UppercaseLetters" ValidChars="."/>
                </td>
                <td width="200" align="center">
                    
                     <asp:TextBox ID="TextBox4" runat="server" Width="300"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Year Required"
                        ControlToValidate="TextBox4" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender14"
                        TargetControlID="RequiredFieldValidator19" HighlightCssClass="validatorCalloutHighlight" />
                        <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender11"
           runat="server"
           TargetControlID="TextBox4"
           FilterType="Numbers"/>
                </td>
            </tr>
            <tr>
                <td align="right">
                    12th
                </td>
                <td width="200" align="center">
                    <asp:TextBox ID="TextBox5" runat="server" Width="87px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="% Required"
                        ControlToValidate="TextBox5" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender15"
                        TargetControlID="RequiredFieldValidator20" HighlightCssClass="validatorCalloutHighlight" />
                        <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender12"
           runat="server"
           TargetControlID="TextBox5"
           FilterType="Custom,Numbers" ValidChars="."/>
                </td>
                <td width="400" align="center">
                    <asp:TextBox ID="TextBox6" runat="server" Width="300"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Board Required"
                        ControlToValidate="TextBox6" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender16"
                        TargetControlID="RequiredFieldValidator21" HighlightCssClass="validatorCalloutHighlight" />
                        <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender13"
           runat="server"
           TargetControlID="TextBox6"
           FilterType="LowercaseLetters,Custom,UppercaseLetters" ValidChars="."/>
                </td>
                <td width="200" align="center">
                    <asp:TextBox ID="TextBox7" runat="server" Width="300"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="Year Required"
                        ControlToValidate="TextBox7" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender17"
                        TargetControlID="RequiredFieldValidator22" HighlightCssClass="validatorCalloutHighlight" />
                        <ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender14"
           runat="server"
           TargetControlID="TextBox7"
           FilterType="Numbers"/>

                </td>
            </tr>
        </table>
    </fieldset>
    <br />
    <br />
    <fieldset style="border-color: #808080">
        <legend style="margin-left: 15px; padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 151px">&nbsp; Course Detail</legend>
        <table cellpadding="3" cellspacing="9" border="0" width="600px">
            <tr>
                <td align="right" width="150px">
                    Course:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="161px">
                        <asp:ListItem>B.Tech</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>M.Tech</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>BBA</asp:ListItem>
                    </asp:DropDownList>
                    
                        
                </td>
                <td>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Address Required"
                        ControlToValidate="AddressT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender9"
                        TargetControlID="RequiredFieldValidator9" HighlightCssClass="validatorCalloutHighlight" />
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" width="150px">
                    Batch:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="161px">
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="State Required"
                        ControlToValidate="StateT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender10"
                        TargetControlID="RequiredFieldValidator10" HighlightCssClass="validatorCalloutHighlight" />
                </td>
            </tr>
            <tr>
                <td align="right" width="150px">
                    &nbsp;Year:
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Year Required"
                        ControlToValidate="CityT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender11"
                        TargetControlID="RequiredFieldValidator11" HighlightCssClass="validatorCalloutHighlight" />
                </td>
            </tr>
        </table>
    </fieldset>
    <table height="100" width="800">
        <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" ValidationGroup="add" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" />
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>
