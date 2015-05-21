using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Text;
using System.Web.Mail;
using System.IO;
using System.Net;


public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

   

    public int sendMail(string to, string cc, string bcc, string subject, string body)
    {

        try
        {


            SmtpMail.SmtpServer = "182.18.187.64";

            MailMessage msg = new MailMessage();

            msg.From = txtMailFrom.Text.Trim();

            msg.To = "nilesh@hostguru.in";

            msg.Cc = cc;

            msg.Bcc = bcc;

            msg.Subject = subject;

            msg.Body = body;

            SmtpMail.Send(msg);

            return (1);
        }
        catch
        {
            return (0);
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        String to = txtMailFrom.Text.Trim();
        String cc = "nilesh@hostguru.in";
        String bcc = "";
        String subject = txtSubject.Text.Trim();
        String body = txtMessage.Text.Trim();

        int status = sendMail(to, cc, bcc, subject, body);

        if (status == 1)
        {
            Common obj = new Common();
            obj.PopupMessage("your mail has been sent successfully", Page);

        }

        else
        {
            Common obj = new Common();
            obj.PopupMessage("sorry! your mail could not be sent", Page);

        }




    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        Response.Redirect("contact.aspx");
    }
}