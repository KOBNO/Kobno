<%@ Page Title="Azuriraj" Language="C#" MasterPageFile="~/SecretFiles/MASTERPAGESecret/Osnovna.Master" AutoEventWireup="true" CodeBehind="Azuriraj.aspx.cs" Inherits="GRUPA1PRA.SecretFiles.Azuriraj" %>
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

    <asp:Panel id="pnlPretraga" runat="server">

     <h2 class="auto-style1">PRETRAZI KNJIGU ZA AZURIRANJE</h2>

    <div style="padding-left:100px;/*position:relative; margin:auto; justify-content:center;*/">

        <asp:TextBox ID="tbnaslovzaPretragu" runat="server" Placeholder="Pretrazi naslov" CssClass="auto-style2"></asp:TextBox>
     </div>
      <div style="padding:20px" class="auto-style3">

      

        <asp:Button ID="btnPretrazi" runat="server" Text="Pretrazi" 
        CssClass="btn btn-primary" style="padding-right:25px; position: relative; left: 120px; top: 1px;" OnClick="btnPretrazi_Click" />
</div>
    </asp:Panel>

    <asp:Panel ID="pnlPogrijska" runat="server" Visible="false">

    <div class="alert alert-danger" role="alert">
  Pogriješan unos knjige ili je nema u bazi
</div>
    </asp:Panel>



    <asp:Panel ID="pnlAzuriranje" runat="server">
     <h2 class="auto-style1">AŽURIRAJ NOVU KNJIGU</h2>

    <div style="padding-left:100px;/*position:relative; margin:auto; justify-content:center;*/">

        <asp:TextBox ID="tbNaslov" runat="server" Placeholder="Azuriraj naslov" CssClass="auto-style2"></asp:TextBox>
       
     <asp:TextBox ID="tbAutorF" runat="server" Placeholder="Azuriraj Ime" CssClass="auto-style2"></asp:TextBox>
     <asp:TextBox ID="tbAutorL" runat="server" Placeholder="Azuriraj Prezime" CssClass="auto-style2"></asp:TextBox>
        
     <asp:TextBox ID="tbStanje" runat="server" Placeholder="Azurraj stanje" CssClass="auto-style2"></asp:TextBox>
      
     <asp:TextBox ID="tbIzdavac" runat="server" Placeholder="Azurraj Izdavaca" CssClass="auto-style2"></asp:TextBox>
       
     <asp:TextBox ID="tbCijenaKupo" runat="server" Placeholder="Azuriraj cijenu za Kupovinu" CssClass="auto-style2"></asp:TextBox>
      
         <asp:TextBox ID="tbCijena" runat="server" Placeholder="Azuriraj cijenu za posudbu" CssClass="auto-style2"></asp:TextBox>
        <br />

         Dodaj sliku knjige 

          <asp:FileUpload ID="FileUpload1" runat="server" />
           <asp:Button ID="btnChoose" runat="server" Text="Uploadaj" OnClick="btnChoose_Click"  CssClass="btn btn-warning" /> <asp:Label ID="lbStatus" runat="server" Text=""></asp:Label>
    </div>
  


    <div style="padding:20px" class="auto-style3">

      

        <asp:Button ID="btnAzuriraj" runat="server" Text="Azuriraj"  CssClass="btn btn-primary" style="padding-right:25px; position: relative; left: 120px; top: 1px;" OnClick="btnAzuriraj_Click" />
     <asp:Button ID="btnOdustani" runat="server" Text="Odustani"  CssClass="btn btn-primary" style="position: relative; left: 185px; top: 1px" OnClick="btnOdustani_Click" />
    </div>



    </asp:Panel>
   

</asp:Content>





