<%@ Page Title="student update" Language="C#" MasterPageFile="~/Admin/admin.master"
    AutoEventWireup="true" CodeFile="studentupdate.aspx.cs" Inherits="Admin_studentupdate" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ajaxToolkit:ToolkitScriptManager runat="Server" ID="ScriptManager1" />
    <table cellspacing="0" cellpadding="0" width="600">
        <tr>
            <td>
            </td>
            <td width="600" align="center" valign="top" style="background-image: url(../images/bgheading.gif);
                height: 55; background-repeat: no-repeat; padding-top: 2px">
                <h3>
                    Update Student</h3>
            </td>
            <td>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <center>
        <fieldset style="border-color: #808080">
            <legend style="margin-left: 15px; padding-top: 3px; padding-left: 10px; background-image: url(../images/heading.png);
                height: 27px; background-repeat: no-repeat; width: 140px">Student&nbsp; Details</legend>
            <table style="width: 100%">
                <tr>
                    <td style="width: 234px">
                        ID</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        First Name</td>
                    <td>
                        <asp:TextBox ID="stufrstnmT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        Last Name</td>
                    <td>
                        <asp:TextBox ID="stulstnmT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        Gender</td>
                    <td>
                        <asp:TextBox ID="stugenT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        DOB</td>
                    <td>
                        <asp:TextBox ID="studobT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        Email</td>
                    <td>
                        <asp:TextBox ID="stuemailT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        10th Percentage</td>
                    <td>
                        <asp:TextBox ID="stu10perT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        10th Board</td>
                    <td>
                        <asp:TextBox ID="stu10boardT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        10th Year</td>
                    <td>
                        <asp:TextBox ID="stu10yearT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        12th Percentage</td>
                    <td>
                        <asp:TextBox ID="stu12perT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        12th Board</td>
                    <td>
                        <asp:TextBox ID="stu12boardT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        12th Year</td>
                    <td>
                        <asp:TextBox ID="stu12yearT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        Course</td>
                    <td>
                        <asp:TextBox ID="stucourseT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        Batch</td>
                    <td>
                        <asp:TextBox ID="stubatchT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        Year</td>
                    <td>
                        <asp:TextBox ID="stuyearT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        Address</td>
                    <td>
                        <asp:TextBox ID="stuaddressT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        State</td>
                    <td>
                        <asp:TextBox ID="stustateT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        City</td>
                    <td>
                        <asp:TextBox ID="stucityT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        Pincode</td>
                    <td>
                        <asp:TextBox ID="stupinT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        Mobile No.</td>
                    <td>
                        <asp:TextBox ID="stumobT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        Phone No.</td>
                    <td>
                        <asp:TextBox ID="stuphonT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 234px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </fieldset>
    </center>
</asp:Content>
