using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string msg = string.Empty;

        try
        {
            msg += "<h5>From Contact </h5>";
            msg += "Name:-" + CustomerName.Text + "<br>";
            msg += "Email:-" + Email.Text + "<br>";
            msg += "Mobile:-" + Contactno.Text + "<br>";
            msg += "Message:-" + sc_contact_form_message.InnerText + "<br>";
            MailMessage message = new MailMessage("udumangameta23@gmail.com", "Shr.advertising@gmail.com");
            message.Subject = "From Contactus";
            message.Body = msg;
            message.IsBodyHtml = true;
            //if (txtCustEmailAttach.HasFile)
            //{
            //    string FileName = Path.GetFileName(txtCustEmailAttach.PostedFile.FileName);
            //    message.Attachments.Add(new Attachment(txtCustEmailAttach.PostedFile.InputStream, FileName));
            //}
            SmtpClient client = new SmtpClient();
            client.Send(message);
            lblMsg.Text = "<div class='alert alert-success' role='alert'>Message Send successfully.</div>";
            lblMsg.Focus();
            lblMsg.Visible = true;
            //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Message has been sent successfully.');", true);

        }

        catch (Exception ex)
        {
            //lblMsg.Text = ex.Message.ToString();
            lblMsg.Text = "<div class='alert alert-danger' role='alert'>Message not send.</div>";
            lblMsg.Focus();
            lblMsg.Visible = true;
        }
    }
}