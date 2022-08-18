using System;
using System.Web.UI;

namespace GRUPA1PRA
{
    public partial class Proba2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {

            if (!Page.IsPostBack)
            {
                lbError.Visible = false;

            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (System.Web.Security.FormsAuthentication.Authenticate(txtUsername.Text, txtPass.Value))
            {
                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, false);
            }
            else
            {
                lbError.Visible = true;
                lbError.Text = "Invalid Username &or password";
            }


        }
    }
}