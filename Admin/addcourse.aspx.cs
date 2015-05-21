using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_addcourse : System.Web.UI.Page
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
            disp_rec();
        }
        
        
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_addcourse",con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@courname", SqlDbType.VarChar, 50).Value = CoursenameT.Text;
        cmd.Parameters.Add("@courdur", SqlDbType.VarChar, 50).Value = CoursedurationD.Text;
        cmd.Parameters.Add("@courtype", SqlDbType.VarChar, 50).Value = CoursetypeD.Text;
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Your data has been Saved Successfully!!!!')</script>");
        clear_rec();
        cmd.Dispose();
        con.Close();

        disp_rec();

       
    }

    private void disp_rec()
    {
        SqlDataAdapter adp = new SqlDataAdapter("prc_dispcourse", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {

        clear_rec();
    }

    private void clear_rec()
    {
        CoursenameT.Text = string.Empty;
        CoursedurationD.Text = string.Empty;
        CoursetypeD.Text = string.Empty;
    }
}