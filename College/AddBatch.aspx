<%@ Page Title="" Language="C#" MasterPageFile="~/College/College.master" AutoEventWireup="true"
    CodeFile="AddBatch.aspx.cs" Inherits="College_AddBatch" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ajaxToolkit:ToolkitScriptManager runat="Server" ID="ScriptManager1" />

      <table cellspacing="0" cellpadding="0" width="800">
<tr>
                                       <td></td>
                                        <td width="600" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                                            height: 55; background-repeat:no-repeat; padding-top: 2px ">
                                            <h3>
                                                ADD BATCH</h3>
                                        </td>
                                        <td></td>
                                    </tr>

</table><br /><br />

    <fieldset style="border-color: #808080">
        <legend style="margin-left: 15px; padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
            height: 27px; background-repeat: no-repeat; width: 140px">Add Batch</legend>
       
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <table cellspacing="12" cellpadding="3" border="0" width="600px" align="center">
                        <tr>
                            
                <td width="200" align="right">
                    <asp:Label ID="Label1" runat="server" Text="Course Select:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="250px" 
                        AutoPostBack="True" AppendDataBoundItems="true"
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
                        <asp:ListItem>B.tech</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>BBA</asp:ListItem>
                        <asp:ListItem>M.Tech</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Course Name Required"
                        ControlToValidate="DropDownList1" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender2"
                        TargetControlID="RequiredFieldValidator1" HighlightCssClass="validatorCalloutHighlight" />
                </td>
            </tr>
                   <tr>
                <td width="200" align="right">
                    <asp:Label ID="Label2" runat="server" Text="Department Select:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="200px" 
                        AutoPostBack="True">
                        <asp:ListItem>ComputerScience</asp:ListItem>
                        <asp:ListItem>Business</asp:ListItem>
                        <asp:ListItem>Engineering</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Department Name Required"
                        ControlToValidate="DropDownList2" Display="None" SetFocusOnError="true" ValidationGroup="add"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender3"
                        TargetControlID="RequiredFieldValidator3" HighlightCssClass="validatorCalloutHighlight" />
                </td>
            </tr>
            <tr>
                <td width="200" align="right">
                    <asp:Label ID="BatchTiminglbl" runat="server" Text="Batch"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                </td>
            </tr>
        </table></ContentTemplate></asp:UpdatePanel>
        <table><tr><td width="300"></td>
         <td align="left">
                    <asp:Button ID="SubmitBtn" runat="server" Text="Submit" 
                        onclick="SubmitBtn_Click1" ValidationGroup="add"/>
                    <asp:Button ID="ResetBtn" runat="server" Text="Reset" 
                        onclick="ResetBtn_Click" />
                </td>
        
        </tr></table>
    </fieldset>
</asp:Content>
