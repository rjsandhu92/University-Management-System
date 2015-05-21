<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="editprofile.aspx.cs" Inherits="College_editprofile" %>

 <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <ajaxToolkit:ToolkitScriptManager runat="Server" EnableScriptGlobalization="true" 
        EnableScriptLocalization="true" ID="ToolkitScriptManager1" />
        <table cellspacing="0" cellpadding="0">
<tr>
                                       
                                        <td width="610" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                                EDIT PROFILE</h3>
                                        </td>
                                        
                                    </tr>

</table><br /><br />
  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     Welcome,
     <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
     <br />
     <br />
        <fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 151px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Details</legend>
        <table  cellpadding="3" cellspacing="9" border="0" width="600px">
            
                <tr>
                    <td align="right" width="150px">
                        First Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            
                <tr>
                    <td align="right" width="150px">
                        Last Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            
                <tr>
                    <td align="right" width="150px">
                        Gender:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            
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
                        Pin Code:</td>
                    <td>
                        <asp:TextBox ID="PinT" runat="server" MaxLength="6"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Pin No Required" ControlToValidate="PinT" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>

                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
            TargetControlID="RequiredFieldValidator2"
            HighlightCssClass="validatorCalloutHighlight" />
<ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender2"
           runat="server"
           TargetControlID="PinT"
           FilterType="Numbers" /></td>
                </tr>
<tr>
                <td width="200px" class="acenter">
                    &nbsp;&nbsp; Mobile No:</td>
                <td>
                    <asp:TextBox ID="MobileT" runat="server" MaxLength="10"></asp:TextBox>
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
            </tr>
                <tr>
                    <td align="right" width="150px">
                        Phone No:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="Phoneno" runat="server" Width="120px" value="PHONE" 
                            Height="25px" MaxLength="12"></asp:TextBox>
                    </td>
                    <td>   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="Mobile No Required" ControlToValidate="Phoneno" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>

                        <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender9"
            TargetControlID="RequiredFieldValidator9"
            HighlightCssClass="validatorCalloutHighlight" />
<ajaxToolkit:FilteredTextBoxExtender
           ID="FilteredTextBoxExtender4"
           runat="server"
           TargetControlID="Phoneno"
           FilterType="Numbers" />
                
                        </td>
                </tr>
                <tr>
                    <td width="200px">
                    </td>
                    <td>
                        
                        <asp:Button ID="Button1" runat="server" Text="Submit" 
                            onclick="Button1_Click1"  ValidationGroup="add"/>
                    </td>
                    <td>
                    </td>
                </tr>
        </table>
        
        </fieldset>
    

    
</asp:Content>
