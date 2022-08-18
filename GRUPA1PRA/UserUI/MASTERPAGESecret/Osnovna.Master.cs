using System;

namespace UserUI.MASTERPAGES
{
    public partial class Osnovna : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Session.Clear();
            Response.Redirect("LoginUser.aspx");
        }
    }
}