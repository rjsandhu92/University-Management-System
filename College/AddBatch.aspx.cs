using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class College_AddBatch : System.Web.UI.Page
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

    protected void SubmitBtn_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_addbatch", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@course", SqlDbType.VarChar, 50).Value = DropDownList1.SelectedItem.ToString();
        cmd.Parameters.Add("@department", SqlDbType.VarChar, 50).Value = DropDownList2.SelectedItem.ToString();
        cmd.Parameters.Add("@batch", SqlDbType.Int).Value = Convert.ToInt32(DropDownList3.SelectedItem.ToString());
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Your data has been Saved Successfully!!!!')</script>");
        
        cmd.Dispose();
        con.Close();
        
       
    }
    

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        
    }
    protected void ResetBtn_Click(object sender, EventArgs e)
    {

    }
}