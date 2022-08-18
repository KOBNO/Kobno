<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGESecret/Osnovna.Master" AutoEventWireup="true" CodeBehind="UrediProfil.aspx.cs" Inherits="UserUI.UrediProfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">
        .auto-style2 {
            position: relative;
            left: 0px;
            top: 0px;
            width: 550px;
            padding:10px;
        }
        .auto-style3 {
            position: relative;
            margin-top: 9px;
        }
    </style>
     <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<br />
 <div id="DivNije"  class="alert alert-warning" role="alert" runat="server" visible="false">
Upozorenje! Profil Nije Ažuriran!!
</div>
 <div id="DivJe"  class="alert alert-warning" role="alert" runat="server" visible="false">
Profil je Ažuriran!
</div>
<label>Ime:</label>
<br />
     <asp:TextBox ID="tbIme" runat="server" Placeholder="Ažuriraj Ime" CssClass="auto-style2"></asp:TextBox>
     <br />
<label>Prezime:</label>
<br />
     <asp:TextBox ID="tbPrezime" runat="server" Placeholder="Ažuriraj Prezime" CssClass="auto-style2"></asp:TextBox>
     <br />
<label>Adresa:</label>
<br />
     <asp:TextBox ID="tbAdresa" runat="server" Placeholder="Ažuriraj Adresu" CssClass="auto-style2"></asp:TextBox>
     <br />
<label>lozinka:</label>
<br />
     <asp:TextBox ID="tbPass" runat="server" Placeholder="Ažuriraj Password" CssClass="auto-style2" TextMode="Password"></asp:TextBox>

     <br />


       <div style="padding:20px" class="auto-style3">

      

        <asp:Button ID="btnažuriraj" runat="server" Text="Ažuriraj"  CssClass="btn btn-primary" style="padding-right:25px; position: relative; left: 120px; top: 1px; " OnClick="btnažuriraj_Click" />
     <asp:Button ID="btnOdustani" runat="server" Text="Odustani"  CssClass="btn btn-primary" style="position: relative; left: 185px; top: 1px" OnClick="btnOdustani_Click"  />
     <asp:Button ID="btnObrisi" runat="server" Text="Obriši profil"  CssClass="btn btn-danger" style="position: relative; left: 185px; top: 1px" OnClick="btnObrisi_Click"  />
    </div>
</asp:Content>
