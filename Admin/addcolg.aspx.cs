using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Admin_addcolg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void SubmitB_Click(object sender, EventArgs e)
    {
        String phonenum,faxnum;
        phonenum=StdT.Text+PhoneT.Text;
        faxnum=FaxT.Text+FaxphoneT.Text;
        SqlCommand cmd = new SqlCommand("prc_addcolg", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@cname", SqlDbType.VarChar, 50).Value = NameT.Text;
        cmd.Parameters.Add("@website", SqlDbType.VarChar, 50).Value = WebsiteT.Text;
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = EmaleT.Text;
        cmd.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = PasswordT.Text;
        cmd.Parameters.Add("@address", SqlDbType.VarChar, 50).Value = AddressT.Text;
        cmd.Parameters.Add("@state", SqlDbType.VarChar, 50).Value = StateT.Text;
        cmd.Parameters.Add("@city", SqlDbType.VarChar, 50).Value = CityT.Text;
        cmd.Parameters.Add("@pincode", SqlDbType.Int).Value = Convert.ToInt32(PinT.Text);
        cmd.Parameters.Add("@mobno", SqlDbType.BigInt).Value = Convert.ToInt64(MobileT.Text);
        cmd.Parameters.Add("@phno", SqlDbType.VarChar,15).Value = phonenum;
        cmd.Parameters.Add("@faxno", SqlDbType.VarChar, 15).Value = faxnum;
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Your data has been Saved Successfully!!!!')</script>");
        clear_rec();
        cmd.Dispose();
        con.Close();


    }
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

    }
    protected void ResetB_Click(object sender, EventArgs e)
    {
        clear_rec();
    }

    private void clear_rec()
    {
        NameT.Text = string.Empty;
        WebsiteT.Text = String.Empty;
        EmaleT.Text = string.Empty;
        PasswordT.Text = string.Empty;
        AddressT.Text = string.Empty;
        StateT.Text = string.Empty;
        CityT.Text = string.Empty;
        PinT.Text = string.Empty;
        MobileT.Text = string.Empty;
        PhoneT.Text = string.Empty;
        StdT.Text = string.Empty;
        FaxphoneT.Text = string.Empty;
        FaxT.Text = string.Empty;
    }
}