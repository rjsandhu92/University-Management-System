using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ChangePassword : System.Web.UI.Page
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
      Label3.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label3.Visible = true;
        Int32 a;
        a = chgpwd("user", TextBox1.Text, PasswordT.Text);
        if (a == 1)
        {
            Label3.Text = "Password updated successfully";
        }
        else
        {
            Label3.Text = "Old password incorrect";
        }
        
    }

    private void clear_rec()
    {
        TextBox1.Text = string.Empty;
        PasswordT.Text = string.Empty;
        ConfirmasswordT.Text = string.Empty;
    }
      public Int32 chgpwd(string email,string oldpwd,string newpwd)
      {
          SqlCommand cmd = new SqlCommand("prc_chgpwd", con);
          cmd.CommandType = CommandType.StoredProcedure;
          cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = Label2.Text;
          cmd.Parameters.Add("@oldpwd",SqlDbType.VarChar, 50).Value = TextBox1.Text;
          cmd.Parameters.Add("@newpwd",SqlDbType.VarChar, 50).Value = PasswordT.Text;
          cmd.Parameters.Add("@ret", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
          cmd.ExecuteNonQuery();
          Int32 a = Convert.ToInt32(cmd.Parameters["@ret"].Value);
          cmd.Dispose();
          con.Close();
          return a;
          
       
       

        
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}