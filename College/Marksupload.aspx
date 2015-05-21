<%@ Page Title="" Language="C#" MasterPageFile="~/College/College.master" AutoEventWireup="true" CodeFile="Marksupload.aspx.cs" Inherits="College_Marksupload" %>

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
                                                MARKS UPLOAD </h3>
                                        </td>
                                        <td></td>
                                    </tr>

</table><br /><br />
   <fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 3px; padding-left: 10px; background-image: url(../images/heading1.png);
            height: 27px; background-repeat: no-repeat; width: 210px">&nbsp;&nbsp;&nbsp;&nbsp; Mark Upload</legend>
    <table  cellspacing="12" cellpadding="3" border="0" width="800px" align="center">
            <tr>
            <td width="200" align="right">
            Department Name:</td>
        <td>
            <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Batch Name Required" ControlToValidate="DropDownList6" 
                    Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                
                
                </td>
            
            </tr>
            <tr>
            <td width="200" align="right">
            Batch Name:</td>
        <td>
            <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Batch Name Required" ControlToValidate="DropDownList7" 
                    Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                
                
                </td>
        
        
        </tr>

        <tr><td width="200" align="right">
        Subject Name:</td>
        <td>
            <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Subject Name Required" ControlToValidate="DropDownList8" 
                    Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
            TargetControlID="RequiredFieldValidator2"
            HighlightCssClass="validatorCalloutHighlight"/>
                
                
                </td>
                </tr>
                <tr>
                <td width="200" align="right">
        Semester:</td>
        <td>
            <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
            </asp:DropDownList>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Semster Is Required" ControlToValidate="DropDownList9" 
                    Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender2"
            TargetControlID="RequiredFieldValidator3"
            HighlightCssClass="validatorCalloutHighlight"/>
                
                
                </td>
                </tr>
        
        
   
                <tr>
                <td width="200" align="right">
                    ID:</td>
        <td>
            <asp:DropDownList ID="DropDownList10" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList10_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
            <td>
                &nbsp;</td>
                </tr>
        
        
   
                <tr>
                <td width="200" align="right">
                    Student Email ID:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
            <td>
                &nbsp;</td>
                </tr>
        
        
   
        <tr><td width="200" align="right">
            Student&#39;s First Name:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Student Name required"></asp:RequiredFieldValidator>
            </td>
        
        
        </tr>

        
   
        <tr><td width="200" align="right">
            Student&#39;s Last Name:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
            <td>
                &nbsp;</td>
        
        
        </tr>

        
   
        <tr><td width="200" align="right">
            Marks:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
            <td>
                &nbsp;</td>
        
        
        </tr>

        
   
        <tr><td width="200" align="right">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Upload" />
        </td>
            <td>
                &nbsp;</td>
        
        
        </tr>

        <tr>
        <td colspan="3" align="center">
            &nbsp;</td>
        </tr>
        <tr>
        <td colspan="3" align="center" width="700">
             &nbsp;</td>
        </tr>
    </table><table width="800">
    <tr>
    <td colspan="3" align="center">&nbsp;</td></tr></table>
       
     </fieldset>

</asp:Content>

