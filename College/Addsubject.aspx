<%@ Page Title="" Language="C#" MasterPageFile="~/College/College.master" AutoEventWireup="true" CodeFile="Addsubject.aspx.cs" Inherits="College_Addsubject" %>

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
                                                ADD SUBJECTS</h3>
                                        </td>
                                        <td></td>
                                    </tr>

</table><br /><br />
   <fieldset style="border-color:#808080">
        <legend style="margin-left:15px;padding-top: 4px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 140px">&nbsp;&nbsp; Add Subject</legend>
    <table  cellspacing="12" cellpadding="5" border="0" width="800px" align="center">
    <tr><td width="200" align="right">
        Subject Name:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Subject Name Required" ControlToValidate="TextBox1" 
                    Display="None" SetFocusOnError="true"></asp:RequiredFieldValidator>
                 <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1"
            TargetControlID="RequiredFieldValidator2"
            HighlightCssClass="validatorCalloutHighlight"/>
                
                
                </td>
        
        
        </tr>
    <tr><td width="200" align="right">
        Department Name:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>ComputerScience</asp:ListItem>
                <asp:ListItem>Business</asp:ListItem>
                <asp:ListItem>Engineering</asp:ListItem>
            </asp:DropDownList>
        </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                
                
                </td>
        
        
        </tr>
        <tr>
                        <td></td>
                        <td align="left">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ADD" />
                            </td>
                            <td align="left">
                                </td>
        
        </tr>
       
    </table>
     </fieldset>

     <table align="center" width="800">
      <tr><td width="100">
      
      </td>
        <td>
            &nbsp;</td>
        </tr>
     </table>
</asp:Content>
