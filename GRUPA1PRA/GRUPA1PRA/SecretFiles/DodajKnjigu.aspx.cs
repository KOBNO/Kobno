using GRUPA1PRA.MODEL;
using Microsoft.ApplicationBlocks.Data;
using System;
using System.Configuration;
using System.IO;

namespace GRUPA1PRA.SecretFiles
{
    public partial class DodajKnjigu : System.Web.UI.Page
    {
        private Book a = new Book();
        private static string path = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            // OcistiFormu();
        }

        private void OcistiFormu()
        {
            tbAutorF.Text = "";
            tbNaslov.Text = "";
            tbAutorL.Text = "";
            tbCijena.Text = "";
            tbCijenaKupo.Text = "";
            tbStanje.Text = "";
            tbIzdavac.Text = "";


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


            path = Path.GetFileName(FileUpload1.FileName);

        }

        protected void btnOdustani_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void btnDodaj_Click1(object sender, EventArgs e)
        {
            a.AuthorF = tbAutorF.Text.Trim();
            a.AuthorL = tbAutorL.Text.Trim();
            a.Title = tbNaslov.Text.Trim();
            a.Price = Double.Parse(tbCijena.Text.Trim());
            if (path == null)
            {
                path = "https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg";
            }
            try
            {







                //if (a.AuthorL == String.Empty || a.Title == String.Empty)
                //{
                //    throw new Exception(" Poriješan unos");

                //}


                lbStatus.ForeColor = System.Drawing.Color.Green;
                lbStatus.Visible = true;
                lbStatus.Text = "Uspješan unos";

                SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "UploadBook", a.Title, a.AuthorF, a.AuthorL, a.Price, path);


            }


            catch (Exception)
            {
                lbStatus.ForeColor = System.Drawing.Color.Red;
                lbStatus.Visible = true;
                lbStatus.Text = "Pogriješan Unosa";
                return;
            }


            lbStatus.ForeColor = System.Drawing.Color.Green;
            lbStatus.Text = "Uspješan Unos";



            OcistiFormu();
        }
    }
}