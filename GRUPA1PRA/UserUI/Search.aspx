<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGESecret/Osnovna.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="UserUI.Default" %>

<%@ Register Src="~/BookUC.ascx" TagPrefix="uc1" TagName="BookUC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            position: relative;
            left: 0px;
            top: 0px;
            width: 701px;
            padding: 10px;
        }

        #ContentPlaceHolder1_lbPozdrav {
            position: relative;
            margin: 3px;
            padding: 3px;
            background-color: gold;
            font-weight: bold;
            text-align: left;
            font-size: 1rem;
            align-content: flex-end;
        }

        h3 {
            text-decoration: underline;
            color: orange;
            padding: 3px;
            margin: auto;
            text-align: center;
            text-transform: uppercase;
        }

        h1 {
            padding: 20px;
            margin: auto;
            text-align: center;
            text-transform: uppercase;
            font-weight: bold;
        }

        lbKup {
            text-decoration: wavy;
            font-weight: bold;
        }

        #ContentPlaceHolder1_pnlRegani {
            background-color: #aa6c39;
        }

        #ContentPlaceHolder1_tSearch {
            margin: auto;
            text-align: center;
        }

        #pnlPretraga {
            position: absolute;
            align-content: center;
            margin: auto;
        }

        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <asp:Panel ID="pnlRegani" runat="server">
    <br />
    <asp:Button Text="UREDI PROFIL" runat="server" OnClick="Unnamed1_Click" />
     <br />
        <div id="lbS" class="alert alert-warning" role="alert" runat="server" visible="false">
            Došlo je do pogriješke ili ne postoji ta knjiga/autor!!
        </div>
        <asp:Label runat="server" ID="lbPozdrav"></asp:Label>
        <h3>Posudene knjige:  </h3>
        <asp:Repeater ID="rptPosudene" runat="server">

            <HeaderTemplate>

                <table class="table">
                    <thead>
                        <tr>

                            <th scope="col">TITLE</th>

                            <th scope="col">VRIJEME POVRATKA</th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>

            <ItemTemplate>


                <tr>

                    <th scope="row"><%#  Eval("Title")%></th>


                </tr>


            </ItemTemplate>

            <FooterTemplate>
                </tbody>
            </table>
            </FooterTemplate>

        </asp:Repeater>


        <h3>Kupljene:  </h3>
        <label id="lbKup" runat="server" visible="false">Do sada nisu kupio niti jednu knjigu, VRIJEME JE DA KUPIŠ NOVI KNJIGU </label>
        <asp:Repeater ID="rptKupljene" runat="server">

            <HeaderTemplate>

                <table class="table">
                    <thead>
                        <tr>

                            <th scope="col">TITLE</th>


                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>

            <ItemTemplate>


                <tr>
                    <th scope="row"><%#  Eval("Title")%></th>


                </tr>


            </ItemTemplate>

            <FooterTemplate>
                </tbody>
            </table>
            </FooterTemplate>

        </asp:Repeater>

    </asp:Panel>


    <asp:Panel ID="pnlPretraga" runat="server">



        <div id="lbSearch" class="alert alert-warning" role="alert" runat="server" visible="false">
            Došlo je do pogriješke ili ne postoji ta knjiga/autor!!
        </div>
        <div runat="server" id="SRCC">
            <h1>pretraga</h1>
            <br />
            <asp:TextBox ID="tbSearch" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:RadioButton ID="rbNaslov" runat="server" Checked="True" GroupName="PretragaGroup" Text="Po Naslovu" />
            <radiobutton>&nbsp; </radiobutton>
            <asp:RadioButton ID="rbAutor" runat="server" GroupName="PretragaGroup" Text="Po Autoru" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Pošalji" OnClick="Button1_Click" />
            <br />
            <br />
            <br />

        </div>
        <div id="rz" runat="server" visible="false">
            <h2>REZULTATI PRETRAGE</h2>
        </div>
        <%--pretraga po AUTORU--%>
        <asp:Repeater ID="rbtSearchAuthors" runat="server" Visible="false">

            <HeaderTemplate>

                <table class="table">
                    <thead>
                        <tr>

                            <th scope="col">IME</th>

                            <th scope="col">PREZIME</th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>

            <ItemTemplate>


                <tr>
                    <th scope="row"><%#  Eval("AuthorF")%></th>
                    <th scope="row"><%#  Eval("AuthorL")%></th>
                                 <td>

                        <asp:LinkButton Text="Sve Knjige Autora" runat="server" OnClick="Unnamed_Click1" CommandArgument='<%#  Eval("IDAuthor")%>' />
                        </td>

                </tr>


            </ItemTemplate>

            <FooterTemplate>
                </tbody>
            </table>
            </FooterTemplate>

        </asp:Repeater>


        <%--PRETRAGA PO NASLOVU--%>

        <asp:Repeater ID="rptKnjigepoNaslovu" runat="server" Visible="false" OnItemCommand="rptKnjigepoNaslovu_ItemCommand">

            <HeaderTemplate>

                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">NASLOV</th>



                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>

            <ItemTemplate>


                <tr>
                    <th scope="row"><%#  Eval("IDBook")%></th>
                    <th scope="row"><%#  Eval("Title")%></th>

                    <td>

                        <asp:LinkButton Text="Kupi" runat="server" OnClick="lbtnKupi_Click" CommandArgument='<%#  Eval("IDBook")%>' />
                        <asp:LinkButton Text="Posudi" runat="server" OnClick="lbtnPosudi_Click" CommandArgument='<%#  Eval("IDBook")%>' />
                    </td>


                </tr>


            </ItemTemplate>

            <FooterTemplate>
                </tbody>
            </table>
            </FooterTemplate>

        </asp:Repeater>
    </asp:Panel>
</asp:Content>
