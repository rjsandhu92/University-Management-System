using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_studentupdate : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("prc_dispstudent", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rd = cmd.ExecuteReader();
            DropDownList1.DataTextField = "id";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataSource = rd;
            DropDownList1.DataBind();
            rd.Close();
            cmd.Dispose();

        }
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_dispstudentdet", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = DropDownList1.SelectedItem.ToString();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            stufrstnmT.Text = rd["firstname"].ToString();
            stulstnmT.Text = rd["lastname"].ToString();
            stugenT.Text = rd["gender"].ToString();
            studobT.Text = rd["dob"].ToString();
            stuemailT.Text = rd["email"].ToString();
            stu10perT.Text = rd["tenthper"].ToString();
            stu10boardT.Text = rd["tenthboard"].ToString();
            stu10yearT.Text = rd["tenthyear"].ToString();
            stu12perT.Text = rd["twelveper"].ToString();
            stu12boardT.Text = rd["twelveboard"].ToString();
            stu12yearT.Text = rd["twelveyear"].ToString();
            stucourseT.Text = rd["course"].ToString();
            stubatchT.Text = rd["batch"].ToString();
            stuyearT.Text = rd["year"].ToString();
            stuaddressT.Text = rd["address"].ToString();
            stustateT.Text = rd["state"].ToString();
            stucityT.Text = rd["city"].ToString();
            stupinT.Text = rd["pincode"].ToString();
            stumobT.Text = rd["mobileno"].ToString();
            stuphonT.Text = rd["phoneno"].ToString();

            rd.Close();
            cmd.Dispose();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_updstudent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = DropDownList1.SelectedItem.ToString();
        cmd.Parameters.Add("@fstnm", SqlDbType.VarChar, 50).Value = stufrstnmT.Text;
        cmd.Parameters.Add("@lstnm", SqlDbType.VarChar, 50).Value = stulstnmT.Text;
        cmd.Parameters.Add("@gender", SqlDbType.VarChar, 6).Value = stugenT.Text;
        cmd.Parameters.Add("@dob", SqlDbType.DateTime).Value = studobT.Text;
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = stuemailT.Text;
        cmd.Parameters.Add("@tenper", SqlDbType.Int).Value = Convert.ToInt32(stu10perT.Text);
        cmd.Parameters.Add("@tenbrd", SqlDbType.VarChar, 50).Value = stu10boardT.Text;
        cmd.Parameters.Add("@tenyr", SqlDbType.Int).Value = Convert.ToInt32(stu10yearT.Text);
        cmd.Parameters.Add("@twelveper", SqlDbType.Int).Value = Convert.ToInt32(stu12perT.Text);
        cmd.Parameters.Add("@twelvebrd", SqlDbType.VarChar, 50).Value = stu12boardT.Text;
        cmd.Parameters.Add("@twelveyr", SqlDbType.Int).Value = stu12yearT.Text;
        cmd.Parameters.Add("@course", SqlDbType.VarChar, 50).Value = stucourseT.Text;
        cmd.Parameters.Add("@batch", SqlDbType.VarChar, 50).Value = stubatchT.Text;
        cmd.Parameters.Add("@year", SqlDbType.Int).Value = Convert.ToInt32(stuyearT.Text);
        cmd.Parameters.Add("@addr", SqlDbType.VarChar, 50).Value = stuaddressT.Text;
        cmd.Parameters.Add("@state", SqlDbType.VarChar, 50).Value = stustateT.Text;
        cmd.Parameters.Add("@city", SqlDbType.VarChar, 50).Value = stucityT.Text;
        cmd.Parameters.Add("@pin", SqlDbType.BigInt).Value = Convert.ToInt64(stupinT.Text);
        cmd.Parameters.Add("@mobno", SqlDbType.BigInt).Value = Convert.ToInt64(stumobT.Text);
        cmd.Parameters.Add("@phno", SqlDbType.VarChar, 15).Value = stuphonT.Text;
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
        stufrstnmT.Text = string.Empty;
        stulstnmT.Text = string.Empty;
        stugenT.Text = string.Empty;
        studobT.Text = string.Empty;
        stuemailT.Text = string.Empty;
        stu10perT.Text = string.Empty;
        stu10boardT.Text = string.Empty;
        stu10yearT.Text = string.Empty;
        stu12perT.Text = string.Empty;
        stu12boardT.Text = string.Empty;
        stu12yearT.Text = string.Empty;
        stucourseT.Text = string.Empty;
        stubatchT.Text = string.Empty;
        stuyearT.Text = string.Empty;
        stuaddressT.Text = string.Empty;
        stustateT.Text = string.Empty;
        stucityT.Text = string.Empty;
        stupinT.Text = string.Empty;
        stumobT.Text = string.Empty;
        stuphonT.Text = string.Empty;
    }
}
