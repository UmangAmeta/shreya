using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
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

            MailMessage mail = new MailMessage();
            mail.To.Add("Shr.advertising@gmail.com");

            mail.From = new MailAddress("mrkt@shreyaadvertising.in");
            mail.Subject = "From Contactus";
            //string Body = "test";
            mail.Body = msg;
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "webmail.shreyaadvertising.in"; //Or Your SMTP Server Address
            smtp.Port = 25;
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = new System.Net.NetworkCredential
            ("mrkt@shreyaadvertising.in", "SA@2018");

            //Or your Smtp Email ID and Password
            smtp.EnableSsl = false;
            smtp.Send(mail);
            lblMsg.Text = "<div class='alert alert-success' role='alert'>Message Send successfully.</div>";
            lblMsg.Focus();
            lblMsg.Visible = true;




            //MailMessage message = new MailMessage("test1561989@gmail.com", "Shr.advertising@gmail.com");
            //NetworkCredential mailAuthenticaion = new System.Net.NetworkCredential("test1561989@gmail.com", "Vikas1561989");

            //message.Subject = "From Contactus";
            //message.Body = msg;
            //message.IsBodyHtml = true;
            //SmtpClient client = new SmtpClient("relay-hosting.secureserver.net", 25);
            //client.UseDefaultCredentials = false;
            //client.EnableSsl = true;
            //client.Credentials = mailAuthenticaion;
            //client.Send(message);
            //lblMsg.Text = "<div class='alert alert-success' role='alert'>Message Send successfully.</div>";
            //lblMsg.Focus();
            //lblMsg.Visible = true;

            //string to = "Shr.advertising@gmail.com"; //To address    
            //string from = "test1561989@gmail.com"; //From address    
            //MailMessage message = new MailMessage(from, to);

            //string mailbody = "In this article you will learn how to send a email using Asp.Net & C#";
            //message.Subject = "Sending Email Using Asp.Net & C#";
            //message.Body = mailbody;
            //message.BodyEncoding = Encoding.UTF8;
            //message.IsBodyHtml = true;
            //SmtpClient client = new SmtpClient("smtp.gmail.com", 25); //Gmail smtp    
            //System.Net.NetworkCredential basicCredential1 = new
            //System.Net.NetworkCredential("test1561989@gmail.com", "Vikas1561989");
            //client.EnableSsl = true;
            //client.UseDefaultCredentials = false;
            //client.Credentials = basicCredential1;
            //try
            //{
            //    client.Send(message);
            //}

            //catch (Exception ex)
            //{
            //    throw ex;
            //}




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