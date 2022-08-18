using Microsoft.ApplicationBlocks.Data;
using System;
using System.Configuration;

namespace UserUI
{
    public partial class UrediProfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("LoginUser.aspx");
            }
            else
            {
                LoadUser();
            }
        }

        private void LoadUser()
        {
            try
            {
                System.Data.DataSet dataSet = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "getUserToChange",
                Session["login"].ToString());
                tbIme.Text = dataSet.Tables[0].Rows[0]["NameUser"].ToString();
                tbPrezime.Text = dataSet.Tables[0].Rows[0]["Surname"].ToString();
                tbAdresa.Text = dataSet.Tables[0].Rows[0]["Adress"].ToString();
                tbPass.Text = dataSet.Tables[0].Rows[0]["passwordUser"].ToString();
            }
            catch (Exception)
            {

                DivNije.Visible = true;
            }

        }

        protected void btnObrisi_Click(object sender, EventArgs e)
        {
            try
            {
                System.Data.DataSet dataSet = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "ObrisiProfil",
                    Session["login"].ToString());
                DivJe.Visible = true;
            }
            catch (Exception)
            {

                DivNije.Visible = true;
            }
        }

        protected void btnOdustani_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnažuriraj_Click(object sender, EventArgs e)
        {
            try
            {
                //@Email nvarchar(50), @NameUser nvarchar(50), @Surname nvarchar(50), @password nvarchar(50)
                System.Data.DataSet dataSet = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "UpdateProfil",
                    Session["login"].ToString(), tbIme.Text, tbPrezime.Text, tbPass.Text);
                DivJe.Visible = true;

            }
            catch (Exception)
            {

                DivNije.Visible = true;
            }
        }
    }
}