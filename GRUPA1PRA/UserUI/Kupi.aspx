<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGESecret/Osnovna.Master" AutoEventWireup="true" CodeBehind="Kupi.aspx.cs" Inherits="UserUI.Kupi" %>

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
Upozorenje! Samo registrirani korisnici mogu kupovati i posuđivati knjige
</div>
<br />
<uc1:BookUC runat="server" ID="UC11" />
<br />
<br />
<asp:Button runat="server" Text="Kupi"  ID="btnLogin"  CssClass="btn btn-primary" OnClick="btnLogin_Click"/>
</asp:Content>
