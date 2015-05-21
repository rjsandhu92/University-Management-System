<%@ Page Title="" Language="C#" MasterPageFile="~/umsmaster.master" AutoEventWireup="true"
    CodeFile="contact.aspx.cs" Inherits="contact" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .admincon
        {
            background-image: url(images/admin_contact.gif);
            background-repeat: no-repeat;
            width: 512px;
            height: 199px;
            background-repeat: no-repeat;
            padding-top: 20px;
        }
        .contact
        {
            background-image: url(images/email_form.gif);
            background-repeat: no-repeat;
            width: 512px;
            height: 371px;
            padding-left: 70px;
        }
        .style1
        {
            font: bold 14px/16px "Trebuchet MS", sans-serif, serif;
            color: #303D02;
            background-color: inherit;
            text-decoration: none;
            width: 211px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <table cellspacing="0">
        <tr>
            <td>
                <table width="512" height="199" cellspacing="0" class="admincon" cellpadding="10">
                    <tr>
                        <td valign="top" align="center" colspan="3" height="20">
                            <h2>
                                University Management System</h2>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style1">
                            Sagar Dua<br />
                            meetdua@gmail.com<br />
                            +919464610106<br />
                        </td>
                        <td align="center"class="fontcontact" >
                            Rana Jaskaran Singh<br />
                            sandhu_rana_jaskaran@yahoo.co.in<br />
                            +919888820074<br />
                        </td>
                        <td align="center" class="fontcontact">
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table width="512" height="371" cellspacing="0">
                    <tr>
                        <td class="contact" align="center">
                            
                                    <asp:Panel ID="Panel1" runat="server" Height="238px" Width="450px">
                                        <table style="width: 430px; height: 190px">
                                            <tbody>
                                                <tr>
                                                    <td style="width: 150px; height: 30px">
                                                        Name
                                                    </td>
                                                    <td style="width: 150px; height: 30px">
                                                        <asp:TextBox ID="txtMailTo" runat="server" Height="20px" Width="219px" BackColor="White"
                                                            CssClass="DownText"> </asp:TextBox>
                                                    </td>
                                                    <td style="width: 200px; height: 30px">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMailTo"
                                                            ErrorMessage="Name Required" Display="None" SetFocusOnError="True" ValidationGroup="send"></asp:RequiredFieldValidator>
                                                        <cc1:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender3" TargetControlID="RequiredFieldValidator4"
                                                            HighlightCssClass="validatorCalloutHighlight" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 150px">
                                                        Email Address
                                                    </td>
                                                    <td style="width: 150px">
                                                        <asp:TextBox ID="txtMailFrom" runat="server" Height="20px" Width="219px" BackColor="White"
                                                            CssClass="DownText"></asp:TextBox>
                                                    </td>
                                                    <td style="width: 200px">
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="redtext"
                                                            Display="None" ControlToValidate="txtMailFrom" ErrorMessage="Invalid Email Address"
                                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True"  ValidationGroup="send"></asp:RegularExpressionValidator>
                                                        <cc1:ValidatorCalloutExtender runat="Server" ID="NReqE" TargetControlID="RegularExpressionValidator1"
                                                            HighlightCssClass="validatorCalloutHighlight" />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="None"
                                                            ErrorMessage="Email Required" ControlToValidate="txtMailFrom" SetFocusOnError="True"  ValidationGroup="send"></asp:RequiredFieldValidator>
                                                        <cc1:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender4" TargetControlID="RequiredFieldValidator5"
                                                            HighlightCssClass="validatorCalloutHighlight" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 150px">
                                                        <asp:Label ID="lblSubject" runat="server" Text="Subject :" CssClass="DownText"></asp:Label>
                                                    </td>
                                                    <td style="width: 150px">
                                                        <asp:TextBox ID="txtSubject" runat="server" Height="20px" Width="219px" BackColor="White"
                                                            CssClass="DownText"></asp:TextBox>
                                                    </td>
                                                    <td style="width: 200px">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSubject"
                                                            Display="None" ErrorMessage="Subject Required" SetFocusOnError="True"  ValidationGroup="send"></asp:RequiredFieldValidator>
                                                        <cc1:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender1" TargetControlID="RequiredFieldValidator3"
                                                            HighlightCssClass="validatorCalloutHighlight" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 150px; height: 64px">
                                                        <asp:Label ID="lblMessage" runat="server" Text="Message :" CssClass="DownText"></asp:Label>
                                                    </td>
                                                    <td style="width: 150px; height: 64px">
                                                        <asp:TextBox ID="txtMessage" runat="server" Height="54px" Width="219px" BackColor="White"
                                                            CssClass="DownText" TextMode="MultiLine"></asp:TextBox>
                                                    </td>
                                                    <td style="width: 200px; height: 64px">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMessage"
                                                            Display="None" ErrorMessage="Please Enter Your Message" SetFocusOnError="True"  ValidationGroup="send"></asp:RequiredFieldValidator>
                                                        <cc1:ValidatorCalloutExtender runat="Server" ID="ValidatorCalloutExtender2" TargetControlID="RequiredFieldValidator2"
                                                            HighlightCssClass="validatorCalloutHighlight" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 150px">
                                                    </td>
                                                    <td style="width: 150px">
                                                    </td>
                                                    <td style="width: 200px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 150px; height: 61px">
                                                    </td>
                                                    <td style="width: 150px; height: 61px">
                                                        <table style="width: 200px; height: 38px">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="width: 100px; height: 34px">
                                                                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="DownText" 
                                                                            onclick="btnSubmit_Click"  ValidationGroup="send"></asp:Button>
                                                                    </td>
                                                                    <td style="width: 100px; height: 34px">
                                                                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="DownText" 
                                                                            onclick="btnClear_Click"></asp:Button>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                                            <ProgressTemplate>
                                                                <div class="RedText">
                                                                    <img src="Images/indicator.gif" />
                                                                    Sending....
                                                                </div>
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </td>
                                                    <td style="width: 143px; height: 61px">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <%--
                        <cc1:PopupControlExtender ID="PopupControlExtender1" runat="server">
                        </cc1:PopupControlExtender>--%>
                                    </asp:Panel>
                               
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
