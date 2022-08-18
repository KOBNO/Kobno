<%@ Page Title="O Knjizari" Language="C#" MasterPageFile="~/SecretFiles/MASTERPAGESecret/Osnovna.Master" AutoEventWireup="true" CodeBehind="AzurirajKnjizaru.aspx.cs" Inherits="GRUPA1PRA.SecretFiles.AzurirajKnjizaru" %>
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
            margin-top: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <br />
    <h2 class="auto-style1">AŽURIRAJ INFORMACIJE O KNJIŽARI</h2>

    <div style="padding-left:100px;/*position:relative; margin:auto; justify-content:center;*/">

        <asp:TextBox ID="tbNaZIV" runat="server" Placeholder="Ažuriraj naziv" CssClass="auto-style2"></asp:TextBox>
       
     <asp:TextBox ID="tbAdresa" runat="server" Placeholder="Ažuriraj Adresu središta" CssClass="auto-style2"></asp:TextBox>
     <asp:TextBox ID="tbOIB" runat="server" Placeholder="Ažuriraj OIB" CssClass="auto-style2"></asp:TextBox>
        
     <asp:TextBox ID="tbIban" runat="server" Placeholder="AžurirajIban" CssClass="auto-style2"></asp:TextBox>
      

        <br />

         Ažuriraj logo  
           <asp:FileUpload ID="FileUpload1" runat="server" />
           <asp:Button ID="btnChoose" runat="server" Text="Uploadaj" OnClick="btnChoose_Click"  CssClass="btn btn-warning" /> <asp:Label ID="lbStatus" runat="server" Text=""></asp:Label>
    </div>
  


    <div style="padding:20px" class="auto-style3">

      

        <asp:Button ID="btnDodaj" runat="server" Text="Ažuriraj"  CssClass="btn btn-primary" style="padding-right:25px; position: relative; left: 120px; top: 1px; " OnClick="btnDodaj_Click"  />
     <asp:Button ID="btnOdustani" runat="server" Text="Odustani"  CssClass="btn btn-primary" style="position: relative; left: 185px; top: 1px" OnClick="btnOdustani_Click" />
    </div>

</asp:Content>









