<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGESecret/Osnovna.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UserUI.Default1" %>
<%@ Register Src="~/BookUC.ascx" TagPrefix="uc1" TagName="BookUC" %> 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">
        
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
        #ContentPlaceHolder1_i_Image1{
       width:100px;
       }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="../Content/bootstrap.min.css" rel="stylesheet" />
 <asp:Panel ID="pnlRegani" runat="server">
     <asp:Button Text="UREDI PROFIL" runat="server" OnClick="Unnamed1_Click" />
     <br />
         <div id="lbS"  class="alert alert-warning" role="alert" runat="server" visible="false">
Došlo je do pogriješke ili ne postoji ta knjiga/autor!!
</div>
        <asp:Label runat="server" ID="lbPozdrav"></asp:Label>
        <h3> Posudene knjige:  </h3>
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


    <h3> Kupljene:  </h3>
     <label id="lbKup" runat="server" visible="false"  >  Do sada nisu kupio niti jednu knjigu, VRIJEME JE DA KUPIŠ NOVI KNJIGU </label>
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

<asp:Panel runat="server" ID="pnlBookContainer" Wrap="false">
<br />
       <div id="Div1"  class="alert alert-warning" role="alert" runat="server" visible="false">
Došlo je do pogriješke ili ne postoji ta knjiga/autor!!
</div>
<br />
<br />
<uc1:BookUC  runat="server" ID="b1"/>
<uc1:BookUC  runat="server" ID="b2"/>
<br />
<uc1:BookUC  runat="server" ID="b3"/>
<uc1:BookUC  runat="server" ID="b4"/>
<br />
<uc1:BookUC  runat="server" ID="b5" />
</asp:Panel>
</asp:Content>
