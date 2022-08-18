using Microsoft.ApplicationBlocks.Data;
using System;
using System.Configuration;

namespace UserUI
{
    public partial class Registriraj : System.Web.UI.Page
    {
        private static string sifraK;
        private static string pass;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPosalji_Click(object sender, EventArgs e)
        {



            NapraviSifruKor();
            KreirajKorisnika();

        }

        private void KreirajKorisnika()
        {

            //            create proc RegisterUser
            //    @NameUser nvarchar(50),
            //@Surname nvarchar(50), 
            //@Adress nvarchar(100),
            //@UserID nvarchar(50),
            //@Email nvarchar(50) ,
            //@passwordUser nvarchar(50)
            try
            {
                System.Data.DataSet dataSet = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "RegisterUser",
                tbIme.Text, tbPrezime.Text, tbAdress.Text, sifraK, tbEmail.Text, tbPass1.Text);

                sifraK = "";

            }
            catch (Exception)
            {

                lbError.Visible = true;
            }
        }

        private void NapraviSifruKor()
        {
            string FORMATDATUMA = "yyMMdd";
            DateTime dt = DateTime.Now; // Or whatever
            string s = dt.ToString(FORMATDATUMA);


            //CountOfUsers

            System.Data.DataSet dataSet;
            string l = null;

            try
            {
                dataSet = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "CountOfUsers");

                l = dataSet.Tables[0].Rows[0][0].ToString();

            }
            catch (Exception)
            {

                lbError.Visible = true;
            }

            char[] v = l.ToCharArray();
            string dod = "0";


            if (v.Length == 0)
            {
                dod += "000" + l;
            }
            if (v.Length == 2)
            {
                dod = "00" + l;
            }
            if (v.Length == 3)
            {
                dod = "0" + l;
            }
            else
            {
                dod = l;
            }
            sifraK += "K" + s + dod;

        }

        protected void btnOdustani_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}