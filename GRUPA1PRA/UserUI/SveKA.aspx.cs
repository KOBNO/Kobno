using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using UserUI.MODEL;

namespace UserUI
{
    public partial class SveKA : System.Web.UI.Page
    {
        public IList<Book> _allBooksAuth = new List<Book>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["AuthID"] == null)
            {
                Response.Redirect("Search.aspx");
            }

            //try
            try
            {
                SveKnjigeAuthora();
            }
            catch (Exception)
            {

                Div1.Visible = true;
            }
        }

        private void SveKnjigeAuthora()
        {
            int AuthID = int.Parse(Request.QueryString["AuthID"]);

            DataTable dataTable = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "AllBooksofA", AuthID).Tables[0];

            foreach (DataRow row in dataTable.Rows)
            {

                Book a = new Book
                {

                    Title = row["Title"].ToString(),
                    PicturePath = row["PicturePath"].ToString(),
                    AuthorF = row["FirstName"].ToString(),
                    AuthorL = row["LastName"].ToString(),
                    DescriptionBook = row["Description"].ToString(),
                };

                _allBooksAuth.Add(a);
                Load();
            }
        }

        private void Load()
        {
            rptK.Visible = true;
            rptK.DataSource = _allBooksAuth;
            rptK.DataBind();
        }
    }
}