using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Faculty_MarkAttendance : System.Web.UI.Page
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
            batch();
            subject();

            SqlCommand cmd = new SqlCommand("prc_dispstudent", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rd = cmd.ExecuteReader();
            DropDownList6.DataTextField = "id";
            DropDownList6.DataValueField = "id";
            DropDownList6.DataSource = rd;
            DropDownList6.DataBind();
            rd.Close();
            cmd.Dispose();




        }
    }
    private void subject()
    {
        SqlCommand cmd = new SqlCommand("prc_dispsubject", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataReader rd = cmd.ExecuteReader();
        DropDownList2.DataTextField = "Subject";
        DropDownList2.DataValueField = "subjectid";
        DropDownList2.DataSource = rd;
        DropDownList2.DataBind();
        rd.Close();
        cmd.Dispose();
    }

    private void batch()
    {
        SqlCommand cmd = new SqlCommand("prc_dispbatch", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataReader rd = cmd.ExecuteReader();
        DropDownList5.DataTextField = "batch";
        DropDownList5.DataValueField = "batchid";
        DropDownList5.DataSource = rd;
        DropDownList5.DataBind();
        rd.Close();
        cmd.Dispose();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_markattend", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@stuid", SqlDbType.Int).Value = Convert.ToInt32(DropDownList6.SelectedItem.ToString());
        cmd.Parameters.Add("@stuemail", SqlDbType.VarChar, 50).Value = TextBox2.Text;
        cmd.Parameters.Add("@batch", SqlDbType.Int).Value = Convert.ToInt32(DropDownList5.SelectedItem.ToString());
        cmd.Parameters.Add("@subject", SqlDbType.VarChar, 50).Value = DropDownList2.SelectedItem.ToString();
        cmd.Parameters.Add("@type", SqlDbType.VarChar, 50).Value = DropDownList4.SelectedItem.ToString();
        cmd.Parameters.Add("@time", SqlDbType.VarChar, 50).Value = DropDownList3.SelectedItem.ToString();
        cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = TextBox1.Text;
        cmd.Parameters.Add("@status", SqlDbType.VarChar, 50).Value = DropDownList7.SelectedItem.ToString();
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Your data has been Saved Successfully!!!!')</script>");
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        cmd.Dispose();
        con.Close();



    }


    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_dispstudentdet", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = DropDownList6.SelectedItem.ToString();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            TextBox2.Text = rd["email"].ToString();

            rd.Close();
            cmd.Dispose();
        }
    }
}



