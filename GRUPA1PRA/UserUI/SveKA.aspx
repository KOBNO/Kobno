<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGESecret/Osnovna.Master" AutoEventWireup="true" CodeBehind="SveKA.aspx.cs" Inherits="UserUI.SveKA" %>
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
        h3{
        text-decoration:underline; 
        color:orange;
        padding:3px;
        margin:auto;
        text-align:center;
        text-transform:uppercase;
        }

         h1{
        
      
        padding:20px;
        margin:auto;
        text-align:center;
        text-transform:uppercase;
        font-weight:bold;
        }

        lbKup{
        text-decoration:wavy;
        font-weight:bold;
        }

        #ContentPlaceHolder1_pnlRegani{
        background-color:#aa6c39;
        }

        #ContentPlaceHolder1_tSearch{
        margin:auto;
        text-align:center;
        }
        #pnlPretraga{

          position: absolute;
          align-content:center;
          margin:auto;
        }
        .auto-style3 {
            text-align: center;
        }
       #ContentPlaceHolder1_i_Image1{
       width:100px;
       }
        </style>

        <link href="Content/bootstrap.min.css" rel="stylesheet" />


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<label id="lb1" runat="server"> </label>
<br />
   <div id="Div1"  class="alert alert-warning" role="alert" runat="server" visible="false">
Došlo je do pogriješke ili autor nema zabilježnih knjiga trenutno :(
</div>
<br />
    <asp:Panel runat="server" ID="pnlAllBooks">
    <asp:Repeater ID="rptK" runat="server" Visible="false" >

            <HeaderTemplate>

                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">NASLOV</th>
                            <th scope="col">Ime</th>
                            <th scope="col">Prezime</th>
                            <th scope="col">DESCRIPTION</th>



                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>

            <ItemTemplate>


                <tr>
                    <th scope="row"><%#  Eval("IDBook")%></th>
                    <th scope="row"><%#  Eval("Title")%></th>
                    <th scope="row"><%#  Eval("AuthorF")%></th>
                    <th scope="row"><%#  Eval("AuthorL")%></th>
                    <th scope="row"><%#  Eval("DescriptionBook")%></th>

                   

                </tr>


            </ItemTemplate>

            <FooterTemplate>
                </tbody>
            </table>
            </FooterTemplate>

        </asp:Repeater>



    </asp:Panel>
<br />
<br />

</asp:Content>
