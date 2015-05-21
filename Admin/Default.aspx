<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <table  width="600" height="500" cellpadding="0" cellspacing="0" style="padding-left: 30px; background-image: url(../img/default.gif); background-repeat: no-repeat;">
                    <tr>
                        <td align="right" width="300">
                        <asp:Label ID="Label7" Font-Size="15" Font-Bold="true" Font-Italic="true"
                    ForeColor="#0099cc" runat="server" Text="Total No. Of College :"></asp:Label>                          
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" Font-Size="X-Large" Font-Bold="true" Font-Italic="true"
                    ForeColor="#0099cc" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="300">
                        <asp:Label ID="Label8" Font-Size="15" Font-Bold="true" Font-Italic="true"
                    ForeColor="#0099cc" runat="server" Text="Total No. Of Course :"></asp:Label>                          
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" Font-Size="X-Large" Font-Bold="true" Font-Italic="true"
                    ForeColor="#0099cc" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td align="right" width="300">
                        <asp:Label ID="Label1" Font-Size="15" Font-Bold="true" Font-Italic="true"
                    ForeColor="#0099cc" runat="server" Text="Total No. Of Faculty :"></asp:Label>                          
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label10" Font-Size="X-Large" Font-Bold="true" Font-Italic="true"
                    ForeColor="#0099cc" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                     <td align="right" width="300">
                     <asp:Label ID="Label6" Font-Size="15" Font-Bold="true" Font-Italic="true"
                    ForeColor="#0099cc" runat="server" Text="Total No. Of Student :"></asp:Label>
                    
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                        <asp:Label ID="Label3" Font-Size="X-Large" Font-Bold="true" Font-Italic="true"
                    ForeColor="#0099cc" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                                        </table>
</asp:Content>
