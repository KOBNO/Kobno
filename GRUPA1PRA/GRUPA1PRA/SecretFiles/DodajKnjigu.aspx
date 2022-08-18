<%@ Page Title="" Language="C#" MasterPageFile="~/SecretFiles/MASTERPAGESecret/Osnovna.Master" AutoEventWireup="true" CodeBehind="DodajKnjigu.aspx.cs" Inherits="GRUPA1PRA.SecretFiles.DodajKnjigu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            text-align: center;
            padding:10px;
        }
        .auto-style2 {
            position: relative;
            left: 0px;
            top: 0px;
            width: 550px;
            padding:10px;
        }
        .auto-style3 {
            position: relative;
            margin-top: 9;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <br />
    <h2 class="auto-style1">DODAJ NOVU KNJIGU</h2>

    <div style="padding-left:100px;/*position:relative; margin:auto; justify-content:center;*/">

        <asp:TextBox ID="tbNaslov" runat="server" Placeholder="Dodaj naslov" CssClass="auto-style2"></asp:TextBox>
       
     <asp:TextBox ID="tbAutorF" runat="server" Placeholder="Dodaj autoru Ime" CssClass="auto-style2"></asp:TextBox>
     <asp:TextBox ID="tbAutorL" runat="server" Placeholder="Dodaj autoru Prezime" CssClass="auto-style2"></asp:TextBox>
        
     <asp:TextBox ID="tbStanje" runat="server" Placeholder="Dodaj stanje" CssClass="auto-style2"></asp:TextBox>
      
     <asp:TextBox ID="tbIzdavac" runat="server" Placeholder="Dodaj Izdavaca" CssClass="auto-style2"></asp:TextBox>
       
     <asp:TextBox ID="tbCijenaKupo" runat="server" Placeholder="Dodaj cijenu za Kupovinu" CssClass="auto-style2"></asp:TextBox>
      
         <asp:TextBox ID="tbCijena" runat="server" Placeholder="Dodaj cijenu za posudbu" CssClass="auto-style2"></asp:TextBox>
        <br />

         Dodaj sliku knjige 
           <asp:FileUpload ID="FileUpload1" runat="server" />
           <asp:Button ID="btnChoose" runat="server" Text="Uploadaj" OnClick="btnChoose_Click"  CssClass="btn btn-warning" /> <asp:Label ID="lbStatus" runat="server" Text=""></asp:Label>
    </div>
  


    <div style="padding:20px" class="auto-style3">

      

        <asp:Button ID="btnDodaj" runat="server" Text="Dodaj"  CssClass="btn btn-primary" style="padding-right:25px; position: relative; left: 120px; top: 1px; " OnClick="btnDodaj_Click1"  />
     <asp:Button ID="btnOdustani" runat="server" Text="Odustani"  CssClass="btn btn-primary" style="position: relative; left: 185px; top: 1px" OnClick="btnOdustani_Click" />
    </div>

</asp:Content>





