using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        Label4.Visible = false;

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        String role = checklogin(TextBox3.Text, TextBox4.Text);
        if (role == "Admin")
        {
            Session["user"] = TextBox3.Text;
            Response.Redirect("Admin/Default.aspx");
        }
        else if (role == "CollegeAdmin")
        {
            Session["user"] = TextBox3.Text;
            Response.Redirect("College/Default.aspx");
        }
        else if (role == "Faculty")
        {
            Session["user"] = TextBox3.Text;
            Response.Redirect("Faculty/Default.aspx");
        }
        else if (role == "Student")
        {
            Session["user"] = TextBox3.Text;
            Response.Redirect("Student/Default.aspx");
        }
       

        else
        {
            Label4.Visible = true;
            Label4.Text = "Invalid ID/password";
        }




    }


    public string checklogin(string id, string password)
{
    SqlDataAdapter ad = new SqlDataAdapter("select Role from tbaddfaculty where email=@id and password=@pass", con);
    ad.SelectCommand.Parameters.Add("@id", SqlDbType.VarChar, 50).Value = id;
    ad.SelectCommand.Parameters.Add("@pass", SqlDbType.VarChar, 50).Value = password;
    DataSet ds = new DataSet();
    ad.Fill(ds, "tbaddfaculty");
    string role = "";
    foreach (DataRow row in ds.Tables["tbaddfaculty"].Rows)
    {
        role = row[0].ToString();

    }
    return role;

}
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}
    