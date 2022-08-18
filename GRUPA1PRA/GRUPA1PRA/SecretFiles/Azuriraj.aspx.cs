using GRUPA1PRA.MODEL;
using Microsoft.ApplicationBlocks.Data;
using System;
using System.Configuration;
using System.IO;

namespace GRUPA1PRA.SecretFiles
{
    public partial class Azuriraj : System.Web.UI.Page
    {

        System.Data.DataSet dataSet;
        public static string cijena { get; set; }
        public static string idBook { get; set; }
        //string cijena;
        //string idBook;
        public static Book a = new Book();


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                pnlAzuriranje.Visible = false;

            }
        }

        //*****pretraga knjige *****
        protected void btnPretrazi_Click(object sender, EventArgs e)
        {
            //pnlPretraga.Visible = false;

            try
            {

                string naslov = tbnaslovzaPretragu.Text.Trim();

                if (naslov.Length == 0)
                {
                    pnlPogrijska.Visible = true;

                }



                dataSet = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "GetBook", naslov);

                if (dataSet.Tables[0].Rows[0]["Title"].ToString() == String.Empty)
                {
                    throw new Exception();
                }

            }


            catch (Exception)
            {
                pnlPogrijska.Visible = true;
                return;
            }


            pnlAzuriranje.Visible = true;
            pnlPogrijska.Visible = false;
            pnlPretraga.Visible = false;


            AzurirajccKnjigu();

        }

        private void AzurirajccKnjigu()
        {
            idBook = dataSet.Tables[0].Rows[0]["IDBook"].ToString();
            tbNaslov.Text = dataSet.Tables[0].Rows[0]["Title"].ToString();
            tbCijena.Text = dataSet.Tables[0].Rows[0]["Price"].ToString();

            tbAutorF.Text = dataSet.Tables[0].Rows[0]["FirstName"].ToString();
            tbAutorL.Text = dataSet.Tables[0].Rows[0]["LastName"].ToString();

            cijena = (tbCijena.Text);


            //tbNaslov.Text = idBook.ToString();

            a.IDBook = int.Parse(idBook.Trim());
            a.Title = tbNaslov.Text;
            a.AuthorL = tbAutorL.Text;
            a.AuthorF = tbAutorF.Text;
            a.Price = Double.Parse(tbCijena.Text.Trim());



        }
        protected void btnAzuriraj_Click(object sender, EventArgs e)
        {
            int idBook2 = int.Parse(idBook);
            double cijena2 = Double.Parse(cijena);

            SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "updateBook",
          idBook2, a.Title, a.AuthorF, a.AuthorL, a.Price);

            //  tbIzdavac.Text = "ID" + idBook2 + a.Title + a.AuthorL + a.AuthorF + "cena" + a.Price;

        }

        protected void btnOdustani_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void btnChoose_Click(object sender, EventArgs e)
        {
            //folder path to save uploaded file
            string folderPath = Server.MapPath("~/Upload/");

            //Check whether Directory (Folder) exists, although we have created, if it si not created this code will check
            if (!Directory.Exists(folderPath))
            {
                //If folder does not exists. Create it.
                Directory.CreateDirectory(folderPath);
            }

            //save file in the specified folder and path
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

            //once file is uploaded show message to user in label control
            lbStatus.Text = Path.GetFileName(FileUpload1.FileName) + " has been uploaded.";

        }






    }
}