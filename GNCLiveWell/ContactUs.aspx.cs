using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GNCLiveWell
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsend_Click(object sender, EventArgs e)
        {
            {
                SmtpClient smtpClient = new SmtpClient();
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("livewellwithgnc@gmail.com", "P@55word1");

                smtpClient.Credentials = credentials;

                MailMessage msg = new MailMessage(txtEmail.Text, "livewellwithgnc@gmail.com");
                msg.Subject = "Name: " + txtName.Text + "  " + "Subject: " + txtSub.Text;
                msg.Body = txtmsg.Text;
                smtpClient.Send(msg);

                try
                {

                    smtpClient.Send(msg);
                    litresult.Text =
                          "<p> Success, mail sent using SMTP with secure connection and cresdentials </p>";
                }

                catch (Exception ex)
                {
                    smtpClient.Send(msg);
                    litresult.Text =
                  "<p>Send failed:" + ex.Message + ":" + ex.InnerException + "</p>";
                }
            }
        }
    }
}