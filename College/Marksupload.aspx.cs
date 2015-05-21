using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class College_Marksupload : System.Web.UI.Page
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
            stuid();
            dept();
            batch();
            subject();

        }
    }

    private void subject()
    {
        SqlCommand cmd = new SqlCommand("prc_dispsubject", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataReader rd = cmd.ExecuteReader();
        DropDownList8.DataTextField = "Subject";
        DropDownList8.DataValueField = "subjectid";
        DropDownList8.DataSource = rd;
        DropDownList8.DataBind();
        rd.Close();
        cmd.Dispose();
    }

    private void batch()
    {
        SqlCommand cmd = new SqlCommand("prc_dispbatch", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataReader rd = cmd.ExecuteReader();
        DropDownList7.DataTextField = "batch";
        DropDownList7.DataValueField = "batchid";
        DropDownList7.DataSource = rd;
        DropDownList7.DataBind();
        rd.Close();
        cmd.Dispose();
    }

    private void dept()
    {
        SqlCommand cmd = new SqlCommand("prc_dispdeptdet", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataReader rd = cmd.ExecuteReader();
        DropDownList6.DataTextField = "department";
        DropDownList6.DataValueField = "deptid";
        DropDownList6.DataSource = rd;
        DropDownList6.DataBind();
        rd.Close();
        cmd.Dispose();
    }

    private void stuid()
    {
        SqlCommand cmd = new SqlCommand("prc_dispstudent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataReader rd = cmd.ExecuteReader();
        DropDownList10.DataTextField = "id";
        DropDownList10.DataValueField = "id";
        DropDownList10.DataSource = rd;
        DropDownList10.DataBind();
        rd.Close();
        cmd.Dispose();
    }

    
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_marksupload", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@dept", SqlDbType.VarChar, 50).Value = DropDownList6.SelectedItem.ToString();
        cmd.Parameters.Add("@batch", SqlDbType.Int).Value = Convert.ToInt32(DropDownList7.SelectedItem.ToString());
        cmd.Parameters.Add("@subject", SqlDbType.VarChar, 50).Value = DropDownList8.SelectedItem.ToString();
        cmd.Parameters.Add("@semester", SqlDbType.Int).Value = Convert.ToInt32(DropDownList9.SelectedItem.ToString());
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(DropDownList10.SelectedItem.ToString());
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = TextBox4.Text;
        cmd.Parameters.Add("@stdfname", SqlDbType.VarChar, 50).Value = TextBox1.Text;
        cmd.Parameters.Add("@stdlname", SqlDbType.VarChar, 50).Value = TextBox3.Text;
        cmd.Parameters.Add("@marks", SqlDbType.Int).Value = Convert.ToInt32(TextBox2.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Your data has been Saved Successfully!!!!')</script>");

        cmd.Dispose();
        con.Close();

    }
    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_dispstudentdet", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = DropDownList10.SelectedItem.ToString();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            TextBox4.Text = rd["email"].ToString();
            TextBox1.Text = rd["firstname"].ToString();
            TextBox3.Text = rd["lastname"].ToString();
            rd.Close();
            cmd.Dispose();
        }
    }
   
}