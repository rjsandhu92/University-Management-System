using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
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
            countcolg();
            countcourse();
            countfaculty();
            countstudent();
        }

    }

    private void countcolg()
    {

        SqlCommand cmd = new SqlCommand("select count(colgid) from tbaddcolg", con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            Label2.Text = rd[0].ToString();
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
            Label4.Text = rd[0].ToString();
        }
        rd.Close();
        cmd.Dispose();
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
            Label3.Text = rd[0].ToString();
        }
        rd.Close();
        cmd.Dispose();
    }
   
}