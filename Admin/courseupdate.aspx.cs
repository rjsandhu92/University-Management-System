using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_courseupdate : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("prc_dispcourse", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rd = cmd.ExecuteReader();
            DropDownList1.DataTextField = "courseid";
            DropDownList1.DataValueField = "courseid";
            DropDownList1.DataSource = rd;
            DropDownList1.DataBind();
            rd.Close();
            cmd.Dispose();


        }

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_dispcoursedet", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@courseid", SqlDbType.Int).Value = DropDownList1.SelectedItem.ToString();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            cournameT.Text = rd["coursename"].ToString();
            courdurT.Text = rd["coursedur"].ToString();
            courtypeT.Text = rd["coursetype"].ToString();

            rd.Close();
            cmd.Dispose();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_updcourse", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("courseid", SqlDbType.Int).Value = DropDownList1.SelectedItem.ToString();
        cmd.Parameters.Add("coursename", SqlDbType.VarChar, 50).Value = cournameT.Text;
        cmd.Parameters.Add("coursedur", SqlDbType.VarChar, 50).Value = courdurT.Text;
        cmd.Parameters.Add("coursetype", SqlDbType.VarChar, 50).Value = courtypeT.Text;
        
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Your data has been Updated Successfully!!!!')</script>");
        clear_rec();
        cmd.Dispose();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clear_rec();
    }

    private void clear_rec()
    {
        cournameT.Text = string.Empty;
        courdurT.Text = string.Empty;
        courtypeT.Text = string.Empty;
    }
}