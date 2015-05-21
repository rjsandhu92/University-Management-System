<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="Faculty_Default" %>
   <%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

 

        <table>
        <tr>
            <td align="center" width="500" colspan="2">
                <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Font-Bold="true" Font-Italic="true"
                    ForeColor="#0099cc" Text="Welcome"></asp:Label>
                &nbsp;<asp:Label ID="Label1" Font-Size="X-Large" Font-Bold="true" Font-Italic="true"
                    ForeColor="#0099cc" runat="server" Text='<%#Eval("name") %>'></asp:Label>
             
                
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <table><tr><td rowspan="3" width="50"></td></tr>
                    <tr>
                        <td rowspan="2" width="175">&nbsp;</td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    </table>
                <br /><br /><br />
            </td>

            <td rowspan="3" height="340" width="300" colspan="2">
                <br />
            </td>
        </tr>
        <tr>
            <td width="400">
                &nbsp;</td>
            
        </tr>
    </table>
    </asp:Content>


