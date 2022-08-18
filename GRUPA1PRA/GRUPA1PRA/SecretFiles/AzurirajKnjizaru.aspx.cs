using System;
using System.IO;

namespace GRUPA1PRA.SecretFiles
{
    public partial class AzurirajKnjizaru : System.Web.UI.Page
    {
        private static string Naziv;
        private static string Sjediste;
        private static string Iban;
        protected void Page_Load(object sender, EventArgs e)
        {

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
            Global.Logourl = Path.GetFileName(FileUpload1.FileName);



        }

        protected void btnOdustani_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void btnDodaj_Click(object sender, EventArgs e)
        {
            Global.IBAN = tbIban.Text;
            Global.Name = tbNaZIV.Text;
            Global.OIB = tbOIB.Text;
        }
    }
}