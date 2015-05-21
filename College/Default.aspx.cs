using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class College_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        if (Page.IsPostBack == false)
        {
            countfaculty();
            countstudent();
            countcourse();
            countdepartment();
        }


    }
    private void countfaculty()
    {
        SqlCommand cmd = new SqlCommand("select count(Role) from tbaddfaculty where Role='Faculty'", con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            Label10.Text = rd[0].ToString();
        }
        rd.Close();
        cmd.Dispose();
    }
    private void countstudent()
    {

        SqlCommand cmd = new SqlCommand("select count(Role) from tbaddfaculty where Role='Student'", con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            Label11.Text = rd[0].ToString();
        }
        rd.Close();
        cmd.Dispose();
    }
    private void countcourse()
    {
        SqlCommand cmd = new SqlCommand("select count(coursename) from tbaddcourse", con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            Label12.Text = rd[0].ToString();
        }
        rd.Close();
        cmd.Dispose();
    }
    private void countdepartment()
    {
        SqlCommand cmd = new SqlCommand("select count(department) from tbadddepartment", con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            Label13.Text = rd[0].ToString();
        }
        rd.Close();
        cmd.Dispose();

    }

}