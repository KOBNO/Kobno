using System;

namespace GRUPA1PRA.SecretFiles
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDodaj_Click(object sender, EventArgs e)
        {
            Response.Redirect("DodajKnjigu.aspx");
        }

        protected void btnPretrazi_Click(object sender, EventArgs e)
        {
            Response.Redirect("Azuriraj.aspx");
        }

        protected void btnriraj_Click(object sender, EventArgs e)
        {

        }
    }
}