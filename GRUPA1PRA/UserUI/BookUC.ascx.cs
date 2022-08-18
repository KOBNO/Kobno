using System;

namespace UserUI
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        public string imgSrc { get; set; }
        public string Author { get; set; }
        public string Title { get; set; }
        public string Stanje { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = imgSrc;
            lbAuthor.Text = Author;
            lbTitle.Text = Title;
            lbStanje.Text = Stanje;
        }
    }
}