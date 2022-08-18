using System;

namespace GRUPA1PRA.MASTERPAGES
{
    public partial class Osnovna : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbIban.Text = Global.DisplayIban;
            lbOrg.Text = Global.Name;
            Image1.ImageUrl = Global.Logourl;
            lbOIB.Text = Global.OIBDisplay;

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            System.Web.Security.FormsAuthentication.SignOut();
            Response.Redirect("../Login.aspx?ReturnUrl=" + Server.UrlEncode(Request.Path));

        }
    }
}