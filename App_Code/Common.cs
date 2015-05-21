using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.Text;
using System.IO;
using System.Collections;
using System.Web.UI;

public class Common
{
    public string connection = WebConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
    public SqlConnection con;
    public DataTable dt;
    public SqlDataAdapter adp;
    public SqlCommand cmd;
    public SqlCommandBuilder cmds;
    
    public Common()
    {
		
    }

    public string GetAdminName(int userId)
    {
        string strUserName = string.Empty;
        con = new SqlConnection(connection);
        cmd = new SqlCommand("select first_name from admin where users_id=" + userId + "", con);
        con.Open();
        SqlDataReader drName = cmd.ExecuteReader();
        drName.Read();
        strUserName  = drName[0].ToString();
        con.Close();

        return strUserName;
    }


    public string GetCollegeId(int userId)
    {
        
        string id = string.Empty;
        con = new SqlConnection(connection);
        cmd = new SqlCommand("select college_id from college where users_id=" + userId + "", con);
        con.Open();
        SqlDataReader drName = cmd.ExecuteReader();
        drName.Read();
        id = drName[0].ToString();
        con.Close();

        return id;
    }


    public void PopupMessage(string strMessage, Page objPage)
    {
        StringBuilder sbMessage = new StringBuilder();
        sbMessage.Append("<script>");
        sbMessage.Append("window.alert('" + strMessage + "');");
        sbMessage.Append("</script>");
        objPage.RegisterStartupScript("Popup", sbMessage.ToString());
    }

    //POP UP WINDOW MESSAGE & REDIRECT
    public void PopupMessage2(string strMessage, Page objPage, string sUrl)
    {
        StringBuilder sbMessage = new StringBuilder();
        sbMessage.Append("<script>");
        sbMessage.Append("window.alert('" + strMessage + "');");
        sbMessage.Append("window.location='" + sUrl + "';");
        sbMessage.Append("</script>");
        objPage.RegisterStartupScript("Popup", sbMessage.ToString());

    }
}