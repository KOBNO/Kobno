using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using UserUI.MODEL;

namespace UserUI
{
    public partial class Default1 : System.Web.UI.Page
    {
        public class Author
        {
            public string AuthorF { get; set; }
            public string AuthorL { get; set; }
        };

        string s = @"https:\/\/books.toscrape.com\/media\/cache\/fe\/72\/fe72f0532301ec28892ae79a629a293c.jpg";

        public IList<Author> _AuthorList = new List<Author>();

        public int Nposudenih = 0;
        public IList<Book> _posudeneknjige = new List<Book>();
        public IList<Book> _knjigeponaslovu = new List<Book>();
        public IList<Book> _kupljeneknjige = new List<Book>();
        public IList<Book> _knjiga5 = new List<Book>();
        // Book[] _knjiga5 = new Book[5];


        public string zaPretragu;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Image1.ImageUrl = @"https:\/\/books.toscrape.com\/media\/cache\/fe\/72\/fe72f0532301ec28892ae79a629a293c.jpg";
            pnlRegani.Visible = false;


            if (Session["login"] != null)
            {
                pnlRegani.Visible = true;
                lbPozdrav.Text = $"Pozdrav korisniče " + (string)Session["login"] +
                " dobro došli u našu online knjižnicu Vaše trenutno stanje posuđenih knjiga je "
                + Nposudenih.ToString() + " Posuđene knjige su: ";

                try
                {
                    _posudeneknjige = NapuniPosudene();
                    _kupljeneknjige = NapuniKupljene();



                }
                catch (Exception)
                {

                    lbS.Visible = true;
                }
            }

            //try
            try
            {
                AddBooks();
            }
            catch (Exception)
            {
                Div1.Visible = true;
                throw;
            }

        }

        private void AddBooks()
        {

            DataTable d = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "knjiga5").Tables[0];

            foreach (DataRow row in d.Rows)
            {
                int ij = 0;
                Book a = new Book
                {

                    Title = row["Title"].ToString(),
                    PicturePath = row["PicturePath"].ToString(),
                    AuthorF = row["FirstName"].ToString(),
                    AuthorL = row["LastName"].ToString()
                };

                //_knjiga5[i] = a;
                //i++;

                _knjiga5.Add(a);

            }



            WebUserControl1[] ws = new WebUserControl1[5];
            ws[0] = b1;
            ws[1] = b2;
            ws[2] = b3;
            ws[3] = b4;
            ws[4] = b5;


            int i = 0;
            foreach (Book b in _knjiga5)
            {
                //WebUserControl1 a = new WebUserControl1();
                ////a.Title = b.Title;
                ////string im = b.PicturePath;
                ////a.imgSrc = im;
                ////a.Author = b.AuthorF + " " + b.AuthorL;
                ////pnlBookContainer.Controls.Add(a);

                //a.Title = "okpj";
                ////string im = b.PicturePath;
                ////a.imgSrc = im;
                //a.Author = "mčmklnjln";
                //pnlBookContainer.Controls.Add(a);

                //b1.Author += b.AuthorF;

                ws[i].Author = b.AuthorL + b.AuthorF;
                ws[i].imgSrc = b.PicturePath;
                ws[i].Title = b.Title;
                i++;
            }

        }

        private IList<Book> NapuniKupljene()
        {
            DataTable dataTable = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "sveKupljene", (string)Session["login"]).Tables[0];

            foreach (DataRow row in dataTable.Rows)
            {

                Book a = new Book
                {

                    Title = row["Title"].ToString(),
                    PicturePath = row["PicturePath"].ToString()
                };



                _kupljeneknjige.Add(a);





            }
            if (_kupljeneknjige.Count == 0)
            {
                lbKup.Visible = true;
                rptKupljene.Visible = false;
            }
            LoadKupljene();
            return _kupljeneknjige;
        }

        private IList<Book> NapuniPosudene()
        {
            DataTable dataTable = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "zadnjih5", (string)Session["login"]).Tables[0];

            foreach (DataRow row in dataTable.Rows)
            {

                Book a = new Book
                {

                    Title = row["Title"].ToString(),
                    PicturePath = row["PicturePath"].ToString()
                };



                _posudeneknjige.Add(a);


                LoadData();

            }

            return _kupljeneknjige;
        }

        private void LoadKupljene()
        {
            rptKupljene.DataSource = _kupljeneknjige;
            rptKupljene.DataBind();
        }

        private void LoadData()
        {
            rptPosudene.DataSource = _posudeneknjige;
            rptPosudene.DataBind();


        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UrediProfil.aspx");

        }
    }
}