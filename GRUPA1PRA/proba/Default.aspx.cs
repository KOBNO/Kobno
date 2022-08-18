using System;
using System.Net.Mail;
using System.Web.UI;

namespace proba
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add("jndou@racunarstvo.hr");
            mail.From = new MailAddress("jeleniniandeli@gmail.com");
            mail.Subject = "Obnova lozonke";
            mail.Body = "1234";
            SmtpClient smtp = new SmtpClient();
            smtp.EnableSsl = true;
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            //Jelenini - andeli hr < jeleniniandeli@gmail.com >
            //lozinka: algebra2022
            smtp.Credentials = new System.Net.NetworkCredential("jeleniniandeli@gmail.com", "algebra2022");
            smtp.Send(mail);
        }
    }
}