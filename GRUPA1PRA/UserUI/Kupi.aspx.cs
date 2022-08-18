using Microsoft.ApplicationBlocks.Data;
using System;
using System.Configuration;

namespace UserUI
{
    public partial class Kupi : System.Web.UI.Page
    {
        private int BookID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["BookID"] == null)
            {
                Response.Redirect("Search.aspx");
            }
            if (Session["login"] != null)
            {
                lb1.InnerText = $"Podrav korisniče {Session["login"]} Dobro došli na stranicu o Kupovini";


            }
            try
            {
                ZapocniKupovinu();
            }
            catch (Exception)
            {

                throw;
            }
        }

        private void ZapocniKupovinu()
        {
            BookID = int.Parse(Request.QueryString["BookID"]);

            System.Data.DataSet dataSet = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "GetBookbyID", BookID);

            string title = dataSet.Tables[0].Rows[0]["Title"].ToString();
            string fname = dataSet.Tables[0].Rows[0]["FirstName"].ToString();
            string lname = dataSet.Tables[0].Rows[0]["LastName"].ToString();
            string pp = dataSet.Tables[0].Rows[0]["PicturePath"].ToString();
            string cijena = dataSet.Tables[0].Rows[0]["Price"].ToString();


            UC11.Author = fname + lname;
            UC11.Title = title;
            UC11.imgSrc = pp;
            UC11.Stanje = "CIJENA:" + cijena + " kn";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Div1.Visible = true;
            }
            else
            {
                System.Data.DataSet dataSet = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "KupiKnjigu", BookID, Session["login"]);
            }

        }
    }
}