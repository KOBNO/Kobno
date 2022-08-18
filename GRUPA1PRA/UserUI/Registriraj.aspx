<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registriraj.aspx.cs" Inherits="UserUI.Registriraj" %>--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGESecret/Osnovna.Master" AutoEventWireup="true" CodeBehind="Registriraj.aspx.cs" Inherits="UserUI.Registriraj" %>


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
        div{
        text-align:center
        }
    </style>

    <script>    
        $("#btnPosalji").click(function (e) {
// some actions here
 e.preventDefault();
}

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

     <br />
  <div  runat="server" Class="alert alert-warning" role="alert" id="lbError" visible="false"  >
  Došlo je do pogriješke
</div>
        <div>
       
    <h1>   </h1>
    <br />
    <h1 style="text-align: center">REGISTRACIJA</h1>
  
    <%--    <h1 style="text-align: center">Registration</h1>--%>

        <div style="text-align: center; ">
            <hr />
            
     <div style="padding:5px">
     <%--ime--%>
                <asp:Label ID="lbIme" runat="server" Text="Ime" CssClass="form-label"></asp:Label>
         <br />
                <asp:TextBox ID="tbIme" runat="server"></asp:TextBox>
         <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tbIme" runat="server"  ForeColor="Red">* Niste Upisali Ime</asp:RequiredFieldValidator>
            </div>

<%--prezime--%>

   <asp:Label ID="Label1" runat="server" Text="Prezime" CssClass="form-label"></asp:Label>
         <br />
                <asp:TextBox ID="tbPrezime" runat="server"></asp:TextBox>
         <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="tbPrezime" runat="server"  ForeColor="Red">* Niste Upisali Prezime</asp:RequiredFieldValidator>
            </div>

    <div style="padding:5px">

                <asp:Label ID="Label2" runat="server" Text="Email: " CssClass="form-label"></asp:Label>
        <br />
                <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
        <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tbEmail" runat="server"  ForeColor="Red">* Niste Upisali Email</asp:RequiredFieldValidator>
            </div>


         <div style="padding:5px">

                <asp:Label ID="Label3" runat="server" Text="Password: " CssClass="form-label"></asp:Label>
             <br />
             
                <asp:TextBox ID="tbPass1" runat="server"  TextMode="Password"></asp:TextBox>
             <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tbPass1" runat="server"  ForeColor="Red">* Niste Upisali Password</asp:RequiredFieldValidator>
            </div>


            <div style="padding:5px">

                <asp:Label ID="Label4" runat="server" Text="Ponovi Password" CssClass="form-label"></asp:Label>
                <br />
                <asp:TextBox ID="tbPass2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPass1" ControlToValidate="tbPass2" ForeColor="red">* Lozinke se ne slažu </asp:CompareValidator>

            </div>

<%--adresa--%>


            <div style="padding:5px">

                <asp:Label ID="Label6" runat="server" Text="Adress: " CssClass="form-label"></asp:Label>
                <br />
                <asp:TextBox ID="tbAdress" runat="server"></asp:TextBox>
                <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="tbAdress" runat="server"  ForeColor="Red"> *Niste Upisali Adresu</asp:RequiredFieldValidator>
              
            </div>

                   <div style="padding:5px">
                       <asp:Label ID="Label7" runat="server" Text="Uvjeti korištenja: prilikom posudbe knjige zakasnina se naplaćuje 1kn po danu. Klinom na Pošakji prihvačate ove uvjete korištenja! "></asp:Label>
                      
                   </div>
            <br />
            <hr />


              <asp:Button ID="btnPosalji" runat="server"  CssClass="btn - btn-primary" Text="pošalji" OnClick="btnPosalji_Click" />
            <%--<asp:Button ID="btnPosalji" runat="server" Text="Button" OnClick="btnPosalji_Click"/>--%>
              <asp:Button ID="btnOdustani"  runat="server"  CssClass="btn - btn-warning" Text="Odustani" OnClick="btnOdustani_Click"   />
        </div>



   


    <asp:Panel ID="panelIspis" runat="server" Visible="false">
   <div class="alert alert-success" role="alert" style="text-align: center">
Registracija je uspješna!
</div>

    </asp:Panel>




        </div>

</asp:Content>

