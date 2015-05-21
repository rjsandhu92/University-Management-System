using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class College_editprofile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["user"].ToString();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("prc_dispuser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = Label2.Text;
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                TextBox2.Text = rd["firstname"].ToString();
                TextBox3.Text = rd["lastname"].ToString();
                TextBox4.Text = rd["gender"].ToString();
                AddressT.Text = rd["address"].ToString();
                StateT.Text = rd["state"].ToString();
                CityT.Text = rd["city"].ToString();
                PinT.Text = rd["pincode"].ToString();
                MobileT.Text = rd["mobileno"].ToString();
                Phoneno.Text = rd["phoneno"].ToString();


                rd.Close();
                cmd.Dispose();

            }
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("prc_upduser", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@fstnm", SqlDbType.VarChar, 50).Value = TextBox2.Text;
        cmd.Parameters.Add("@lstnm", SqlDbType.VarChar, 50).Value = TextBox3.Text;
        cmd.Parameters.Add("@gender", SqlDbType.VarChar, 6).Value = TextBox4.Text;
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = Label2.Text;
        cmd.Parameters.Add("@address", SqlDbType.VarChar, 50).Value = AddressT.Text;
        cmd.Parameters.Add("@state", SqlDbType.VarChar, 50).Value = StateT.Text;
        cmd.Parameters.Add("@city", SqlDbType.VarChar, 50).Value = CityT.Text;
        cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = Convert.ToInt64(PinT.Text);
        cmd.Parameters.Add("@mobno", SqlDbType.BigInt).Value = Convert.ToInt64(MobileT.Text);
        cmd.Parameters.Add("@phno", SqlDbType.VarChar, 15).Value = Phoneno.Text;
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Your data has been Updated Successfully!!!!')</script>");
        clear_rec();
        cmd.Dispose();
        con.Close();

        
    }

    private void clear_rec()
    {
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;
        AddressT.Text = string.Empty;
        StateT.Text = string.Empty;
        CityT.Text = string.Empty;
        PinT.Text = string.Empty;
        MobileT.Text = string.Empty;
        Phoneno.Text = string.Empty;
    }
}