using MailKit.Net.Smtp;
using Microsoft.ApplicationBlocks.Data;
using MimeKit;
using System;
using System.Threading.Tasks;

namespace UserUI
{
    public partial class Zaboravljena : System.Web.UI.Page
    {

        private static Random random = new Random();
        private static int rand = random.Next(1001, 9999);

        private static string email;
        private static string pass;

        protected void Page_Load(object sender, EventArgs e)
        {
            lbError.Visible = false;
            pnlUnesiLoz.Visible = true;
        }

        protected async void btSend_Click(object sender, EventArgs e)
        {
            email = tbEmail.Text.Trim();





            try
            {



                System.Data.DataSet dataSet = SqlHelper.ExecuteDataset(System.Configuration.ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "CheckIFEmailExists", email);
                string v = dataSet.Tables[0].Rows[0]["IDUser"].ToString();

                if (v != String.Empty)
                {


                    await SendEmail(email);

                    //pnlUnesiLoz.Visible = true;
                }
            }
            catch (Exception)
            {

                lbError.Visible = true;
            }


        }

        private Task<bool> SendEmail(string email)
        {
            using (var client = new SmtpClient())
            {
                var mimeMessage = new MimeMessage();
                mimeMessage.From.Add(new MailboxAddress
                                        ("No replay",
                                         "jndou@racunarstvo.hr"
                                         ));
                mimeMessage.To.Add(new MailboxAddress
                                        ("No replay",
                                         email
                                         ));
                mimeMessage.Subject = "Obnova lozinke"; //Subject  
                mimeMessage.Body = new TextPart("plain")
                {
                    Text = rand.ToString()
                };


                client.Connect("smtp.office365.com", 587, false);
                client.Authenticate(
                    "jndou@racunarstvo.hr",
                    "***"
                    );

                //client.Send(mimeMessage);
                client.SendAsync(mimeMessage);

                Console.WriteLine("The mail has been sent successfully !!");
                Console.ReadLine();
                client.DisconnectAsync(true);

            }

            return Task.FromResult(true);
        }

        //https://stackoverflow.com/questions/20906077/gmail-error-the-smtp-server-requires-a-secure-connection-or-the-client-was-not


        protected void btnCheck_Click(object sender, EventArgs e)
        {
            if (tbCheck.Text.Trim() == rand.ToString())
            {
                pnlNovaLoz.Visible = true;
                pnlUnesiLoz.Visible = false;
            }
            else
            {
                lbError.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                System.Data.DataSet dataSet = SqlHelper.ExecuteDataset(System.Configuration.ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "ChangePass3", email, pass);


            }
            catch (Exception)
            {

                lbError.Visible = true;
            }

        }
    }
}