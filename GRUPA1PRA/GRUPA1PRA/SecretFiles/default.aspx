<%@ Page Title="" Language="C#" MasterPageFile="~/SecretFiles/MASTERPAGESecret/Osnovna.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="GRUPA1PRA.SecretFiles._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

    <style>

    #pretraga{
    display:flex; 
    flex-direction: row;
    align-items:center; 
    justify-content:space-around;
    }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            width: 100%;
            height: 224px;
            border: 2px solid
        }
        .auto-style4 {
            width: 169px;
            text-align: center;
            background-color: #66FFFF;
        }
        .auto-style5 {
            width: 214px;
            text-align: center;
            background-color: #66FFFF;
        }
        .auto-style6 {
            text-align: center;
            background-color: #66FFFF;
        }
        .auto-style7 {
            width: 169px;
            text-align: center;
            height: 28px;
            background-color: #66FFFF;
            }
        .auto-style8 {
            width: 214px;
            text-align: center;
            height: 28px;
            background-color: #66FFFF;
            }
        .auto-style9 {
            text-align: center;
            height: 28px;
            background-color: #66FFFF;
            }
        .auto-style10 {
            float: right;
            width: 573px;
            text-align: center;
            height: 189px;
            position: relative;
            left: -97px;
            top: 22px;
        }
        td{
        border: 1px solid grey;
        }
        .auto-style11 {
            font-family: Arial;
            font-size: large;
            font-weight: bold;
            
        }
    </style>
    <div class="auto-style10">

        <h1>ONLINE KNJIŽARA</h1>

       
        <div id="pretraga"  class="auto-style2">

 

            <table class="auto-style3">
                <tr class="auto-style11">
                    <td class="auto-style7">Dodaj Novu knjigu</td>
                    <td class="auto-style8">Pretraži knjige i ažuriraj</td>
                    <td class="auto-style9">Ažuriraj podatke o knjižari</td>
                </tr>
                <tr style="padding: 0  0 150px 0;">
                    <td class="auto-style4">&nbsp; <asp:Button ID="btnDodaj" runat="server" Text="DODAJ" CssClass="btn btn-primary" OnClick="btnDodaj_Click" /></td>
                    <td class="auto-style5">&nbsp;  <asp:Button ID="btnPretrazi" runat="server" Text="PRETRAŽI"  CssClass="btn btn-primary" OnClick="btnPretrazi_Click"/></td>
                    <td class="auto-style6">   <asp:Button ID="btnriraj" runat="server" Text="AŽURIRAJ" CssClass="btn btn-success" OnClick="btnriraj_Click"  /></td>
                </tr>
            </table>

     




        </div>

    </div>
           <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

    </asp:Content>
