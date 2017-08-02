using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MostrarUsuarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSendEmail_Click(object sender, EventArgs e)
    {
        try
        {
            var fromAddress = new MailAddress("suportekiddo@hotmail.com", "From Name");
            var toAddress = new MailAddress("bruno.i.fernandes@hotmail.com", "To Name");
            const string fromPassword = "kiddotcc";
            const string subject = "Subject";
            const string body = "Body";

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 465,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                smtp.Send(message);
            }
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message +"')</script>");
        }
    }
}