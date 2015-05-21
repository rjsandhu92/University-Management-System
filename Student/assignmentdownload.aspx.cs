using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Student_assignmentdownload : System.Web.UI.Page
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
        DropDownList3.DataTextField = "Subject";
        DropDownList3.DataValueField = "subjectid";
        DropDownList3.DataSource = rd;
        DropDownList3.DataBind();
        rd.Close();
        cmd.Dispose();
    }

    private void batch()
    {
        SqlCommand cmd = new SqlCommand("prc_dispbatch", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataReader rd = cmd.ExecuteReader();
        DropDownList2.DataTextField = "batch";
        DropDownList2.DataValueField = "batchid";
        DropDownList2.DataSource = rd;
        DropDownList2.DataBind();
        rd.Close();
        cmd.Dispose();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        grd_bind();
    }
        private void grd_bind()
    {
        SqlDataAdapter adp = new SqlDataAdapter("prc_assigndownload", con);
        adp.SelectCommand.CommandType = CommandType.StoredProcedure;
        adp.SelectCommand.Parameters.Add("@batch", SqlDbType.Int).Value = Convert.ToInt32(DropDownList2.SelectedItem.ToString());
        adp.SelectCommand.Parameters.Add("@subject", SqlDbType.VarChar,50).Value = DropDownList3.SelectedItem.ToString();
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
   
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        string subname = GridView1.SelectedRow.Cells[4].Text;
        String s2 = Server.MapPath("~/Faculty/filesupload/" + subname);
        Response.Clear();
        Response.AddHeader("Content-Disposition", "attachment;filename=" + subname);
        FileInfo fi = new FileInfo(s2);
        Response.AddHeader("Content-Length", fi.Length.ToString());
        Response.ContentType = ("application/octet-stream");
        Response.WriteFile(fi.FullName);
        Response.End();
    }
}



    
