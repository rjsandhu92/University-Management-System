using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_collegeupdate : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("prc_dispcollege",con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader rd = cmd.ExecuteReader();
            DropDownList1.DataTextField = "colgid";
            DropDownList1.DataValueField = "colgid";
            DropDownList1.DataSource = rd;
            DropDownList1.DataBind();
            rd.Close();
            cmd.Dispose();

           
        }
       
    }
    
  

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_updcollege",con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@colgid", SqlDbType.Int).Value = DropDownList1.SelectedItem.ToString();
        cmd.Parameters.Add("@colgname", SqlDbType.VarChar, 50).Value = colnameT.Text;
        cmd.Parameters.Add("@website", SqlDbType.VarChar, 50).Value = colwebT.Text;
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = colemailT.Text;
        cmd.Parameters.Add("@address", SqlDbType.VarChar, 50).Value = coladdT.Text;
        cmd.Parameters.Add("@state", SqlDbType.VarChar, 50).Value = colstateT.Text;
        cmd.Parameters.Add("@city", SqlDbType.VarChar, 50).Value = colcityT.Text;
        cmd.Parameters.Add("@pin", SqlDbType.Int).Value = Convert.ToInt32(colpinT.Text);
        cmd.Parameters.Add("@mobno", SqlDbType.BigInt).Value = Convert.ToInt64(colmobT.Text);
        cmd.Parameters.Add("@phno", SqlDbType.VarChar, 15).Value = colphoT.Text;
        cmd.Parameters.Add("@fax", SqlDbType.VarChar, 15).Value = colfaxT.Text;
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Your data has been Updated Successfully!!!!')</script>");
        clear_rec();
        cmd.Dispose();
        con.Close();


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_dispcollegedet",con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@colgid", SqlDbType.Int).Value = DropDownList1.SelectedItem.ToString();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            colnameT.Text = rd["colgname"].ToString();
            colwebT.Text = rd["website"].ToString();
            colemailT.Text = rd["email"].ToString();
            coladdT.Text = rd["address"].ToString();
            colstateT.Text = rd["state"].ToString();
            colcityT.Text = rd["city"].ToString();
            colpinT.Text = rd["pincode"].ToString();
            colmobT.Text = rd["mobileno"].ToString();
            colphoT.Text = rd["phoneno"].ToString();
            colfaxT.Text = rd["fax"].ToString();
            rd.Close();
            cmd.Dispose();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clear_rec();
  
    }

    private void clear_rec()
    {
        colnameT.Text = string.Empty;
        colwebT.Text = string.Empty;
        colemailT.Text = string.Empty;
        coladdT.Text = string.Empty;
        colstateT.Text = string.Empty;
        colcityT.Text = string.Empty;
        colpinT.Text = string.Empty;
        colmobT.Text = string.Empty;
        colphoT.Text = string.Empty;
        colfaxT.Text = string.Empty;
    }
}
