<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BYUK_UI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <!--Logo web-->
   <link rel="shortcut icon" href="src/image/logoweb.png">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <title>Login</title>
  </head>
  <body>
    <!-- Image and text -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">
      <img src="src/image/logo.jpeg" style="width: 130px; height: 50px; margin-top: 5px; margin-bottom: 5px;"> </div>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#" style="font-size: 14pt">Daftar <span class="sr-only">(current)</span></a>
        </li>
      </ul>
      <span class="navbar-text" href="#" style="font-size: 14pt">
        Butuh Bantuan ?
      </span>
    </div>
  </nav>
  <div class="content" style="background-color: #FFA45B">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <img src="images/onlinelearning.svg" alt="Image" class="img-fluid">
        </div>
        <div class="col-md-5 contents offset-1" style="background-color: #FBF6F0;">
          <div class="row justify-content-center" style="padding-top: 50px;">
            <div class="col-md-10">
              <div class="mb-4">
              <br>
           <div class="mb-4">
              <br>
              <h3 class="form-signin-heading" style="text-align:center;">Login disini!</h3>
            </div>
           <form id="form1" runat="server" autocomplete="off">
                <div class="form-group first" style="border-color: #000;">
                <label for="email" style="font-size:16px;">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
               <br>
               <br>
             <div class="form-group last mb-4" style="border-color: #000;">
                <label for="password" style="font-size:16px;">Password</label>
                 <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
              </div>
               <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-block btn-primary" Style="background-color: #FFDA77;color: #000;" OnClick="btnLogin_Click" />
              <br><br>
              <p style="text-align:center; "> Belum punya akun? <a href="Login.aspx" style="color: #FFA45B;" > Daftar disini</a></p>
              <br>
            </form>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>
  </body>
</html>
