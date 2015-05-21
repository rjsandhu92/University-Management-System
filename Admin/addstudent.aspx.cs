using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_addstudent : System.Web.UI.Page
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
        string phonenum;
        phonenum = Phoneno.Text + Phonestd.Text;
        SqlCommand cmd = new SqlCommand("prc_addstudent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@frstnm", SqlDbType.VarChar, 50).Value = FnameT.Text;
        cmd.Parameters.Add("@lstnm", SqlDbType.VarChar, 50).Value = LnameT.Text;
        cmd.Parameters.Add("@gender", SqlDbType.VarChar, 6).Value = DropDownList_gender.SelectedItem.ToString();
        cmd.Parameters.Add("@dob", SqlDbType.DateTime).Value = DobT.Text;
        cmd.Parameters.Add("@fathernm", SqlDbType.VarChar, 50).Value = FathernameT.Text;
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = EmaleT.Text;
        cmd.Parameters.Add("@pass", SqlDbType.VarChar, 50).Value = Passwordt.Text;
        cmd.Parameters.Add("@address", SqlDbType.VarChar, 50).Value = AddressT.Text;
        cmd.Parameters.Add("@state", SqlDbType.VarChar, 50).Value = StateT.Text;
        cmd.Parameters.Add("@city", SqlDbType.VarChar, 50).Value = CityT.Text;
        cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = Convert.ToInt64(PinT.Text);
        cmd.Parameters.Add("@phno", SqlDbType.VarChar, 15).Value = phonenum;
        cmd.Parameters.Add("@mobno", SqlDbType.BigInt).Value = Convert.ToInt64(MobileT.Text);
        cmd.Parameters.Add("@tenper", SqlDbType.Int).Value = Convert.ToInt32(TextBox1.Text);
        cmd.Parameters.Add("@tenbrd", SqlDbType.VarChar, 50).Value = TextBox2.Text;
        cmd.Parameters.Add("@tenyear", SqlDbType.Int).Value = Convert.ToInt32(TextBox4.Text);
        cmd.Parameters.Add("@twelveper", SqlDbType.Int).Value = Convert.ToInt32(TextBox5.Text);
        cmd.Parameters.Add("@twelvebrd", SqlDbType.VarChar, 50).Value = TextBox6.Text;
        cmd.Parameters.Add("@twelveyear", SqlDbType.Int).Value = Convert.ToInt32(TextBox7.Text);
        cmd.Parameters.Add("@course", SqlDbType.VarChar, 50).Value = DropDownList1.SelectedItem.ToString();
        cmd.Parameters.Add("@batch", SqlDbType.VarChar, 50).Value = DropDownList2.SelectedItem.ToString();
        cmd.Parameters.Add("@year", SqlDbType.Int).Value = Convert.ToInt32(TextBox3.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Your data has been Saved Successfully!!!!')</script>");
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
        FnameT.Text = string.Empty;
        LnameT.Text = string.Empty;
        DobT.Text = string.Empty;
        FathernameT.Text = string.Empty;
        EmaleT.Text = string.Empty;
        Passwordt.Text = string.Empty;
        AddressT.Text = string.Empty;
        StateT.Text = string.Empty;
        CityT.Text = string.Empty;
        PinT.Text = string.Empty;
        Phoneno.Text = string.Empty;
        Phonestd.Text = string.Empty;
        MobileT.Text = string.Empty;
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;
        TextBox5.Text = string.Empty;
        TextBox6.Text = string.Empty;
        TextBox7.Text = string.Empty;
    }
}