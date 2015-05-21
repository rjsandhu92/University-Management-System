using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class forget_password : System.Web.UI.Page
{
    string connection = WebConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
    SqlConnection con;
    string user_id,email,passwords;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        con = new SqlConnection(connection);
        SqlCommand cmd1 = new SqlCommand("select users_id,passwords,email from users where users_id=" + TextBox1.Text + "", con);
        con.Open();
        SqlDataReader name = cmd1.ExecuteReader();
        if (name.Read())
        {
            user_id = name[0].ToString();
        email = name[2].ToString();
            passwords=name[1].ToString();
           
        }
        con.Close();

        if ((user_id == TextBox1.Text)&&(email==TextBox2.Text))
        {
            Common msg = new Common();
            msg.PopupMessage2("Your Password Is "+passwords, Page, "login.aspx");

           
        }
        else
        {
            Common msg = new Common();
            msg.PopupMessage2("user id and email not match", Page, "forget_password.aspx");
           
        }
    }
}