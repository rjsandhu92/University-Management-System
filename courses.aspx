<%@ Page Title="" Language="C#" MasterPageFile="~/umsmaster.master" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  border="1" style=" border-color:#ff9900" width="600"><tr><td>
 <table cellspacing="15px"  cellpadding="5" width="600" align="center" >
        <tr>
        <td align="center" colspan="2" bgcolor="#cc3300" height="30">
        <font face="verdana" size="5" color="#9d2809"><b>
                Courses offered by University
        </b></font>
        </td>
        </tr>

        <tr>
            <td>
                <span class="style1">Under Graduate</span>
            </td>
            <td class="style1">
            Post Graduate
            </td>
        </tr>
        <tr>
        <td style=" padding-left:30px">
            <p>
                B-Tech (IT)<br />
                B-Tech (CS)<br />
                B-Tech (Mechnical)<br />
                B-Tech (Ele.&amp; Comm.)<br />
         B.C.A.<br />B.B.A.<br />B.Sc (IT)<br />B.Sc.(CS)<br />B.Sc.(Biotech)<br />B.Sc.(Ele. & Comm.)
        
            </p>
        
        </td>
        <td style=" padding-left:30px">
            M-Tech (IT)<br />
            M-Tech (CS)<br />
            M-Tech (Mechnical)<br />
            M-Tech (Ele.&amp; Comm.)<br />
         M.C.A.

            <br />
            M.Sc.(IT)<br />
            M.Sc.(CS)

            <br />
            M.Sc.(Biotech)

            <br />
            M.Sc.(Microbio)

            <br />
            M.Sc.(Bioinfo)

            <br />
            M.Sc.(Ele. &Comm.)
        
        </td>
        </tr>

      </table>
      </td></tr></table>

</asp:Content>

