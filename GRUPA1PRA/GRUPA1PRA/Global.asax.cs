using System;

namespace GRUPA1PRA
{
    public class Global : System.Web.HttpApplication
    {
        public static string Logourl = "https://upload.wikimedia.org/wikipedia/commons/3/37/Empty_book.jpg";
        public static string Name = "Jelenini-andeli.hr";
        public static string IBAN = "144-4852-45222.444";
        public static string DisplayIban = " IBAN " + IBAN;
        public static string OIB = "151248451212122";
        public static string OIBDisplay = "OIB: " + OIB;
        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}