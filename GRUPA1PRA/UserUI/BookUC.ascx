<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BookUC.ascx.cs" Inherits="UserUI.WebUserControl1" %>
<style>
#Image1{
width:30px;
}

</style>

<asp:Image ID="Image1" runat="server" Width="150px" />
<asp:Panel runat="server" ID="pnlKontejner">
<asp:Label ID="lbTitle" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="lbAuthor" runat="server" Text="Label"></asp:Label>
<br />
<asp:Label ID="lbStanje" runat="server" Text=""></asp:Label>
<br />

</asp:Panel>



