using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class Faculty_assignmentupload : System.Web.UI.Page
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
        DropDownList1.DataTextField = "batch";
        DropDownList1.DataValueField = "batchid";
        DropDownList1.DataSource = rd;
        DropDownList1.DataBind();
        rd.Close();
        cmd.Dispose();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_upldassignmt", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@batch", SqlDbType.Int).Value = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
        cmd.Parameters.Add("@subject", SqlDbType.VarChar, 50).Value = DropDownList2.SelectedItem.ToString();
        cmd.Parameters.Add("@assignno", SqlDbType.Int).Value = Convert.ToInt32(DropDownList3.SelectedItem.ToString());
        cmd.Parameters.Add("@title", SqlDbType.VarChar, 50).Value = TextBox1.Text;
        cmd.Parameters.Add("@uploaddate", SqlDbType.DateTime).Value = TextBox2.Text;
        cmd.Parameters.Add("@fileupload", SqlDbType.VarChar, 5000).Value = fileupload();
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Your data has been Saved Successfully!!!!')</script>");

        cmd.Dispose();
        con.Close();

    }
    public string fileupload()
    {
        string fn = FileUpload1.FileName;
        string sp = Server.MapPath("filesupload");
        if (sp.EndsWith("\\") == false)
        {
            sp += "\\";

        }
        sp += fn;
        FileUpload1.PostedFile.SaveAs(sp);
        return fn;
    }
}