<%@ Page  Async="true" Title="" Language="C#" MasterPageFile="~/MASTERPAGESecret/Osnovna.Master" AutoEventWireup="true" CodeBehind="Zaboravljena.aspx.cs" Inherits="UserUI.Zaboravljena" %>
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
        #Content2{
        background-color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
  <br />
  <div  runat="server" Class="alert alert-warning" role="alert" id="lbError"  >
  Došlo je do pogriješke
</div>
  <h2 class="auto-style1">UNESITE EMAIL ZA OBNOVU LOZINKE</h2>

    <div style="padding-left:100px; position:relative; margin:auto; justify-content:center;">

       
       
     <asp:TextBox ID="tbEmail" runat="server" Placeholder="Unesite Email za slanje privremene lozinke" CssClass="auto-style2"></asp:TextBox>
       <br />
     </div>
             <asp:Button ID="btSend" runat="server" Text="Pošalji"  CssClass="btn btn-primary" 
             style="padding-right:25px; position: relative; left: 120px; top: 1px;" OnClick="btSend_Click"  />

    <asp:Panel runat="server" Visible="false" ID="pnlUnesiLoz">

    <label> Unesite 4-ero znamenkasti broj koji je posalan na gornju email adresu </label>

         <asp:TextBox ID="tbCheck" runat="server"  CssClass="auto-style2"></asp:TextBox>
       <br />
    
             <asp:Button ID="btnCheck" runat="server" Text="Pošalji"  CssClass="btn btn-primary" 
             style="padding-right:25px; position: relative; left: 120px; top: 1px;" OnClick="btnCheck_Click"  />
    </asp:Panel>

     <asp:Panel runat="server" Visible="false" ID="pnlNovaLoz">

    <label> Unesite novu lozinku </label>

         <asp:TextBox ID="tbNovaLoz" runat="server"  CssClass="auto-style2"></asp:TextBox>
       <br />
    
             <asp:Button ID="Button1" runat="server" Text="Pošalji"  CssClass="btn btn-primary" 
             style="padding-right:25px; position: relative; left: 120px; top: 1px;" OnClick="Button1_Click"   />
    </asp:Panel>
</asp:Content>
