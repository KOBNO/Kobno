namespace GRUPA1PRA.MODEL
{
    public class Book
    {
        public int IDBook { get; set; }
        public string Title { get; set; }
        public string AuthorF { get; set; }
        public string AuthorL { get; set; }
        public int ISBN { get; set; }
        public double Price { get; set; }
        public string Stock_Avaibility { get; set; }
        public string Cover { get; set; }
        public string DescriptionBook { get; set; }

        public override string ToString()
        {
            return $"{Title} {AuthorF} {AuthorF} {AuthorL}{Stock_Avaibility} {Price}";
        }


        // IDBook int primary key identity(1,1),
        //Title nvarchar(50) not null,
        //Author nvarchar(50) not null,
        //ISBN nvarchar(50) not null,
        //Price money,
        //Stock_Avaibility nvarchar(50) ,
        //Cover nvarchar(max),
        //DescriptionBook nvarchar(max)


    }
}