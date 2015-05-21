using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_updatefaculty : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("prc_dispfaculty", con);
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
        SqlCommand cmd = new SqlCommand("prc_dispfacultydet", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = DropDownList1.SelectedItem.ToString();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            facfstnmT.Text = rd["firstname"].ToString();
            faclstnmT.Text = rd["lastname"].ToString();
            facgenT.Text = rd["gender"].ToString();
            facdobT.Text = rd["dob"].ToString();
            facqualiT.Text = rd["qualification"].ToString();
            facemailT.Text = rd["email"].ToString();
            facaddT.Text = rd["address"].ToString();
            facstateT.Text = rd["state"].ToString();
            faccityT.Text = rd["city"].ToString();
            facpinT.Text = rd["pincode"].ToString();
            facmobT.Text = rd["mobileno"].ToString();
            facphT.Text = rd["phoneno"].ToString();

            rd.Close();
            cmd.Dispose();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_updfaculty", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = DropDownList1.SelectedItem.ToString();
        cmd.Parameters.Add("@fstnm", SqlDbType.VarChar, 50).Value = facfstnmT.Text;
        cmd.Parameters.Add("@lstnm", SqlDbType.VarChar, 50).Value = faclstnmT.Text;
        cmd.Parameters.Add("@gender", SqlDbType.VarChar, 6).Value = facgenT.Text;
        cmd.Parameters.Add("@dob", SqlDbType.DateTime).Value = facdobT.Text;
        cmd.Parameters.Add("@quali", SqlDbType.VarChar, 50).Value = facqualiT.Text;
        cmd.Parameters.Add("@addr", SqlDbType.VarChar, 50).Value = facaddT.Text;
        cmd.Parameters.Add("@state", SqlDbType.VarChar, 50).Value = facstateT.Text;
        cmd.Parameters.Add("@city", SqlDbType.VarChar, 50).Value = faccityT.Text;
        cmd.Parameters.Add("@pin", SqlDbType.BigInt).Value = Convert.ToInt64(facpinT.Text);
        cmd.Parameters.Add("@mobno", SqlDbType.BigInt).Value = Convert.ToInt64(facmobT.Text);
        cmd.Parameters.Add("@phno", SqlDbType.VarChar, 15).Value = facphT.Text;
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
        facfstnmT.Text = string.Empty;
        faclstnmT.Text = string.Empty;
        facgenT.Text = string.Empty;
        facdobT.Text = string.Empty;
        facqualiT.Text = string.Empty;
        facaddT.Text = string.Empty;
        facstateT.Text = string.Empty;
        faccityT.Text = string.Empty;
        facpinT.Text = string.Empty;
        facmobT.Text = string.Empty;
        facphT.Text = string.Empty;
    }
}