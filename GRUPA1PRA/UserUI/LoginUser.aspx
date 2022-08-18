<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginUser.aspx.cs" Inherits="UserUI.LoginUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    
    <style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

#btnHome{

  background-color: #cf245f;
  background-image: linear-gradient(to bottom right, #fcd34d, #ef4444, #ec4899);
  border: 0;
  border-radius: .25rem;
  box-sizing: border-box;
  color: #fff;
  cursor: pointer;
  font-family: ui-sans-serif,system-ui,-apple-system,system-ui,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
  font-size: 1.125rem; /* 18px */
  font-weight: 600;
  line-height: 1.75rem; /* 28px */
  padding: 1rem 1.25rem;
  text-align: center;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-76:hover {
  box-shadow: none;
}

@media (min-width: 1024px) {
  .button-76 {
    font-size: 1.5rem; /* 24px */
    padding: 1rem 1.5rem;
    line-height: 2rem; /* 32px */
  }

}
/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
         <div class="imgcontainer">
    
           
   <img src="images/bavatar.JPG" alt="Avatar" class="avatar"/>
     <div>
              <asp:Label ID="lbError" runat="server" Text="" CssClass="alert alert-danger"></asp:Label>
              
              <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Nastavi bez registracije" />
              
             </div>
  </div>

  <div class="container">
   <asp:Label runat="server" Text="" ID="Label1" ></asp:Label>
    <asp:Label runat="server" Text="Username: "></asp:Label><br />
 
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
     <asp:Label runat="server" Text="Password: "></asp:Label><br />
    <asp:Label runat="server" Text="" ></asp:Label>
    <input id="txtPass" type="password" runat="server" /><br /><br />
    <asp:Button runat="server" Text="Send"  ID="btnLogin" OnClick="btnLogin_Click" CssClass="btn btn-primary"/>
  </div>

  <div class="container" style="background-color:#f1f1f1">
      <%--    <button type="button" class="cancelbtn">Cancel</button>--%>
    <span class="psw">Forgot <a href="Zaboravljena.aspx">Zaboravio si lozinku </a></span>
    <span class="psw">Forgot <a href="Registriraj.aspx">Registriraj se </a></span>
  </div>
    </form>
</body>

</html>

