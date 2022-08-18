using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using UserUI.MODEL;

namespace UserUI
{
    public partial class Default : System.Web.UI.Page
    {
        public class Author
        {
            public int IDAuthor { get; set; }
            public string AuthorF { get; set; }
            public string AuthorL { get; set; }
        };

        public IList<Author> _AuthorList = new List<Author>();

        public int Nposudenih = 0;
        public IList<Book> _posudeneknjige = new List<Book>();
        public IList<Book> _knjigeponaslovu = new List<Book>();
        public IList<Book> _kupljeneknjige = new List<Book>();

        public string zaPretragu;

        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            zaPretragu = tbSearch.Text;

            if (rbAutor.Checked)
            {
                try
                {
                    PretraziPoAutoru(zaPretragu);
                }
                catch (Exception)
                {

                    lbSearch.Visible = true;
                }
                if (_AuthorList.Count == 0)
                {
                    lbSearch.Visible = true;
                }
            }

            if (rbNaslov.Checked)
            {
                try
                {
                    PretragaPoNaslovu(zaPretragu);
                }
                catch (Exception)
                {

                    lbSearch.Visible = true;
                }
                if (_knjigeponaslovu.Count == 0)
                {

                    lbSearch.Visible = true;
                }
            }
        }

        private void PretragaPoNaslovu(string zaPretragu)
        {
            DataTable dataTable = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "GetBook", zaPretragu).Tables[0];

            foreach (DataRow row in dataTable.Rows)
            {

                Book a = new Book
                {
                    IDBook = int.Parse(row["IDBook"].ToString()),
                    Title = row["Title"].ToString(),
                    PicturePath = row["PicturePath"].ToString()

                };



                _knjigeponaslovu.Add(a);


                BindajPretrazeneKnjige();

            }
        }

        private void BindajPretrazeneKnjige()
        {
            SRCC.Visible = false;
            rz.Visible = true;
            rptKnjigepoNaslovu.Visible = true;
            rptKnjigepoNaslovu.DataSource = _knjigeponaslovu;
            rptKnjigepoNaslovu.DataBind();
        }

        private void PretraziPoAutoru(string zaPretragu)
        {
            DataTable dataTable = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["cs"].ConnectionString, "GetAuthor", zaPretragu).Tables[0];

            foreach (DataRow row in dataTable.Rows)
            {

                Author a = new Author
                {
                    IDAuthor = int.Parse(row["IDAuthor"].ToString()),
                    AuthorF = row["FirstName"].ToString(),
                    AuthorL = row["LastName"].ToString(),
                };



                _AuthorList.Add(a);


                LoadAuthors();

            }


        }

        private void LoadAuthors()
        {
            SRCC.Visible = false;
            rz.Visible = true;
            rbtSearchAuthors.Visible = true;
            rbtSearchAuthors.DataSource = _AuthorList;
            rbtSearchAuthors.DataBind();


        }

        protected void rptKnjigepoNaslovu_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void lbtnKupi_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            int BookID = int.Parse(btn.CommandArgument);
            string b = BookID.ToString();
            Response.Redirect("Kupi.aspx?BookID=" + b);
            //Response.Redirect("Kupi.aspx ? BookID=" + BookID.ToString());
        }

        protected void lbtnPosudi_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            int BookID = int.Parse(btn.CommandArgument);

            string b = BookID.ToString();
            Response.Redirect("Posudi.aspx?BookID=" + b);
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            int AuthID = int.Parse(btn.CommandArgument);

            string b = AuthID.ToString();
            Response.Redirect("SveKA.aspx?AuthID=" + b);
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UrediProfil.aspx");
        }
    }
}