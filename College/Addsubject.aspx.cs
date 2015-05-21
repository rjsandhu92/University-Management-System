using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class College_Addsubject : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_addsubject", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@sub", SqlDbType.VarChar, 50).Value = TextBox1.Text;
        cmd.Parameters.Add("@dept", SqlDbType.VarChar, 50).Value = DropDownList1.SelectedItem.ToString();




        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Your data has been Saved Successfully!!!!')</script>");

        cmd.Dispose();
        con.Close();
    }
}