using Microsoft.ApplicationBlocks.Data;
using System;
using System.Configuration;

namespace UserUI
{
    public partial class LoginUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //lbError.Visible = false;
            // btnHome.Visible = false;
        }

        System.Data.DataSet dataSet;

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string email = txtUsername.Text;
                string password = txtPass.Value;
                dataSet = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "GetUser", email, password);

                string v = dataSet.Tables[0].Rows[0]["IDUser"].ToString();
                string Korisnik = dataSet.Tables[0].Rows[0]["Email"].ToString();

                Session["login"] = Korisnik;
                lbError.Text = Korisnik;
                Response.Redirect("Default.aspx");


            }
            catch (Exception)
            {
                lbError.Visible = true;
                lbError.Text += "Ne podudaraju se login i password ili ne postoji korisnik";
                btnHome.Visible = true;

            }

            //lbError.Text = dataSet.Tables[0].Rows[0]["Email"].ToString();


        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}