<%@ Page Title="" Language="C#" MasterPageFile="~/umsmaster.master" AutoEventWireup="true"
    CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td> <h1>University Management System</h1><br /><br />
                <p>
                    UNIVERSITY MANAGEMENT SYSTEM (UMS) deals with the maintenance of university, college,
                    faculty, student information with in the university. UMS is an automation system,
                    which is used to store the college, faculty, student, courses and information of
                    a college. Starting from registration of a new student in the college, it maintains
                    all the details regarding the attendance and marks of the students. The project
                    deals with retrieval of information through an INTRANET based campus wide portal.
                    It collects related information from all the departments of an organization and
                    maintains files, which are used to generate reports in various forms to measure
                    individual and overall performance of the students. Development process of the system
                    starts with System analysis. System analysis involves creating a formal model of
                    the problem to be solved by understanding
                </p>
                <br />
                EXISTING SYSTEM

The system starts with registration of new staff and students. When the subjects are to be allocated to the faculty, the Head of the Department should enter everything in the Excel sheets. Then the staff enters corresponding subject’s attendance and marks of a student then those must also be entered in the Excel sheets and validations are to be done by the user itself. So there will be a lot of work to be done and must be more conscious during the entrance of details. So, more risk is involved. 

PROPOSED SYSTEM
 	UMS (UNIVERSITY MANAGEMENT SYSTEM) makes management to get the most updated information always by avoiding manual accounting process. This system has the following functional divisions. 
 	<br /><p style="text-align:justify">
    University Administrator<br />
	Create Admin<br />
	Create  New  College<br />
	Create  Faculty <br />
	Create Student <br />

University Administrator has the functionality of registering new colleges and courses.

 	College Administrator 

 	College Administrator has the rights of creating department, allocating courses to departments, creating faculties, students and allocating subjects to faculties, and modifications in the data entered by the user can also be done by the college administrator. 


 	College can  send  Announcements and private message to the  faculty and students.
    </p>

    <p style="text-align:justify">
 	User (Students / Faculties) 



 	User of this may be faculty. Faculty has the facility of entering the marks, Assignment  and attendance of the students.


 	Faculty  send  Announcements and private message to the students


 	 Students can check their marks and attendance but there is no chance of modifications. 
</p>

            </td>
        </tr>
    </table>
</asp:Content>
