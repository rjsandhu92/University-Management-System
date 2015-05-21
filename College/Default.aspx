<%@ Page Title="" Language="C#" MasterPageFile="~/College/College.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="College_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ajaxToolkit:ToolkitScriptManager runat="Server" ID="ScriptManager1" />
    
    <table>
        <tr>
            <td align="center" width="500" colspan="2">
               
                &nbsp;<br />
                <br />
            </td>
        </tr>
        <tr>
           <td width="400">
                <table width="500" height="340" cellpadding="0" cellspacing="20">
                    <tr>
                        <td align="right" width="300">
                        <asp:Label ID="Label7" Font-Size="15" Font-Bold="true" Font-Italic="true"
                    ForeColor="#0099cc" runat="server" Text="Total No. Of Faculty :"></asp:Label>                          
                        </td>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                     <td align="right" width="300">
                     <asp:Label ID="Label6" Font-Size="15" Font-Bold="true" Font-Italic="true"
                    ForeColor="#0099cc" runat="server" Text="Total No. Of Student :"></asp:Label>
                    
                    </td>
                    <td>
                    
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="300">
                        <asp:Label ID="Label8" Font-Size="15" Font-Bold="true" Font-Italic="true"
                    ForeColor="#0099cc" runat="server" Text="Total No. Of Course :"></asp:Label>                          
                        </td>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                    <td align="right" width="300">
                    <asp:Label ID="Label9" Font-Size="15" Font-Bold="true" Font-Italic="true"
                    ForeColor="#0099cc" runat="server" Text="Total No. Of Department :"></asp:Label>
                    </td>
                    <td>
                    
                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
         <td rowspan="2" height="365" width="300" colspan="2">
                <br />
            </td>
        </tr>
      
    </table>
  </asp:Content>
