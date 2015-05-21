﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_addfaculty : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        //DobT.Text = string.Empty;

    }
        
    protected void Button1_Click1(object sender, EventArgs e)
    {
        String phonenum;
        phonenum = Phonestd.Text + Phoneno.Text;
        SqlCommand cmd = new SqlCommand("prc_addfaculty", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@frstnm", SqlDbType.VarChar, 50).Value = FnameT.Text;
        cmd.Parameters.Add("@lstnm", SqlDbType.VarChar, 50).Value = LnameT.Text;
        cmd.Parameters.Add("@gender", SqlDbType.VarChar, 6).Value = DropDownList_gender.SelectedItem.ToString();
        cmd.Parameters.Add("@dob", SqlDbType.DateTime).Value = DobT.Text;
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = EmaleT.Text;
        cmd.Parameters.Add("@pass", SqlDbType.VarChar, 50).Value = PasswordT.Text;
        cmd.Parameters.Add("@quali", SqlDbType.VarChar, 50).Value = QualificationT.Text;
        cmd.Parameters.Add("@address", SqlDbType.VarChar, 50).Value = AddressT.Text;
        cmd.Parameters.Add("@state", SqlDbType.VarChar, 50).Value = StateT.Text;
        cmd.Parameters.Add("@city", SqlDbType.VarChar, 50).Value = CityT.Text;
        cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = Convert.ToInt64(PinT.Text);
        cmd.Parameters.Add("@mobno", SqlDbType.BigInt).Value = Convert.ToInt64(MobileT.Text);
        cmd.Parameters.Add("@phno", SqlDbType.VarChar, 15).Value = phonenum;
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
        EmaleT.Text = string.Empty;
        PasswordT.Text = string.Empty;
        QualificationT.Text = string.Empty;
        StateT.Text = string.Empty;
        CityT.Text = string.Empty;
        PinT.Text = string.Empty;
        MobileT.Text = string.Empty;
        Phoneno.Text = string.Empty;
        Phonestd.Text = string.Empty;
    }
}