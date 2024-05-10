<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="fooderyproject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <style>
        
        @font-face {
            font-family: 'myfont';
            src: url(fonto.ttf) format('truetype');
        }

        nav {
            font-family: 'myfont';
        }

        body {
            background-image: linear-gradient(rgba(238, 201, 152, 0.5), rgba(167, 126, 64, 0.5) ), url(bg1.jpg);
            background-attachment: scroll;
            background-size: auto;
        }

        a, ol {
            text-decoration: none;
            font-family: myfont;
            font-size: 1rem;
        }

        .mask-custom-1 {
            backdrop-filter: blur(15px);
            background-color: rgba(255, 255, 255, .2);
            border-radius: 3em;
            border: 2px solid rgba(255, 255, 255, .1);
            background-clip: padding-box;
            box-shadow: 10px 10px 10px rgba(46, 54, 68, 0.03);
        }

        @media (max-width: 767px) {
            .bg-image {
                height: 1400px !important;
            }
        }

        html,
        body {
            height: 100%;
        }

        @media (max-width: 767px) {

            html,
            body {
                height: 2600px;
            }
        }

        @media (min-width: 768px) and (max-width: 820px) {

            html,
            body {
                height: 1750px;
            }
        }

        @media (min-width: 821px) and (max-width: 1025px) {

            html,
            body {
                height: 954px;
            }
        }

        .phone {
            border-radius: 40px;
            min-height: 795px;
            color: #f8e4e3;
        }

        .fas {
            color: #e6cdce;
        }

        a {
            color: #993731;
        }

            a,
            a:hover {
                text-decoration:none;
                -webkit-transition: all .3s ease-in-out;
                transition: all .3s ease-in-out
            }

                a:hover {
                    color: rgba(248, 228, 227, .65)
                }

        .dots {
            cursor: pointer
        }

        .dot {
            height: 6px;
            width: 6px;
            background-color: #b9191e;
            border-radius: 50%
        }

        .dot-lg {
            height: 8px;
            width: 8px
        }

        .card {
            background-color: hsla(1, 42%, 45%, .5);
            border-radius: 10px
        }

            .card,
            .card:hover {
                -webkit-transition: all .3s ease-in-out;
                transition: all .3s ease-in-out
            }

                .card:hover {
                    -webkit-box-shadow: 0 10px 20px 0 rgba(0, 0, 0, .09);
                    box-shadow: 0 10px 20px 0 rgba(0, 0, 0, .09);
                    background-color: hsla(1, 42%, 45%, .4)
                }

        .mask-custom {
            backdrop-filter: blur(15px);
            background-color: rgba(255, 255, 255, .2);
            border: 2px solid rgba(255, 255, 255, .1);
            background-clip: padding-box;
            box-shadow: 10px 10px 10px rgba(46, 54, 68, 0.03);
            body{
                    font-family:myfont ;
                }
        }
    
        
    </style>

    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="style.css" />
    
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>first</title>
</head>
<body>
    <form runat="server">

    <nav id="navbar" class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.html">
                <img style="width: 100px " src="logo.png" />
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="login.aspx">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="offers.html"> Offers</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="partener.aspx"> Management</a>
                    </li>
                    <li class="nav-item">
                      
                    </li>

                </ul>
            </div>
        </div>
    </nav>
<br/>
  
     

    <script src="script.js"></script>
<section class="vh-100">
    <div class="container-fluid h-custom">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-md-9 col-lg-6 col-xl-5">
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
            class="img-fluid" alt="Sample image">
        </div>
        <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
          <form>
            <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
                <p class="lead fw-normal mb-0 me-3" style="font-family: myfont;">Sign in with</p>
                <button type="button" class="btn btn-primary btn-floating mx-1">
                  <i class="fab fa-facebook-f"></i>
                </button>
    
                <button type="button" class="btn btn-primary btn-floating mx-1">
                  <i class="fab fa-twitter"></i>
                </button>
    
                <button type="button" class="btn btn-primary btn-floating mx-1">
                  <i class="fab fa-linkedin-in"></i>
                </button>
              </div>
    
            <div class="divider d-flex align-items-center my-4">
              <p class="text-center fw-bold mx-3 mb-0">Or</p>
            </div>
  
            <!-- Email input -->
            <div class="form-outline mb-4">
              <!--<input type="email" id="form3Example3" class="form-control form-control-lg"
                placeholder="Enter a valid email address" /> <!-->
           <asp:Login ID="Login1" runat="server" CssClass="form-control form-control-lg" Font-Names="myfont" Font-Size="0.8em" OnLoggedIn="Login1_LoggedIn">
    <LoginButtonStyle CssClass="btn btn-primary btn-floating mx-1" Font-Names="myfont" />
    <TextBoxStyle Font-Size="1em" />
</asp:Login>

<script runat="server">
    protected void Login1_LoggedIn(object sender, EventArgs e)
    {
        // Redirect the user to another page after successful login
        Response.Redirect("~/post.html");
    }
</script>
                       
            
              
            </div>
  
            <!-- Password input
            <div class="form-outline mb-3">
              <input type="password" id="form3Example4" class="form-control form-control-lg"
                placeholder="Enter password" />
              <label class="form-label" for="form3Example4" style="font-family: myfont;">Password</label>
            </div>
  
            <div class="d-flex justify-content-between align-items-center">
              <!-- Checkbox -->
              
              <a href="register.aspx" class="text-body">No Account Yet?</a>
            </div>
  
           
  
          </form>
        </div>
      </div>
    </div>
    
  
      <!-- Right -->
     
  </section>
  <br/>








    <div class= "container-fluid" style="padding: 0%;">

        <footer class="text-white text-center text-lg-start" style="background-color: #23242a;">
          <!-- Grid container -->
          <div class=" container pt-5">
            <!--Grid row-->
            <div class="row mt-6">
              <!--Grid column-->
              <div class="col-lg-4 col-md-12 mb-4 mb-md-0">
                <h5 class="text-uppercase mb-4">About company</h5>
      
                <p>
                    We take pride in our commitment to sustainability and quality. Our ingredients come straight from local farms, ensuring not only the freshest produce but also supporting our community. Taste the difference that thoughtfully sourced ingredients make in every bite.
                </p>
      
               
      
                <div class="mt-4">
                  <!-- Facebook -->
                  <a type="button" class="btn btn-floating btn-warning btn-lg"><i class="fab fa-facebook-f"></i></a>
                  <!-- Dribbble -->
                  <a type="button" class="btn btn-floating btn-warning btn-lg"><i class="fab fa-dribbble"></i></a>
                  <!-- Twitter -->
                  <a type="button" class="btn btn-floating btn-warning btn-lg"><i class="fab fa-twitter"></i></a>
                  <!-- Google + -->
                  <a type="button" class="btn btn-floating btn-warning btn-lg"><i class="fab fa-google-plus-g"></i></a>
                  <!-- Linkedin -->
                </div>
              </div>
              <!--Grid column-->
      
              <!--Grid column-->
              <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                
      
                <ul class="fa-ul" style="margin-left: 1.65em;">
                  <li class="mb-3">
                    <span class="fa-li"><i class="fas fa-home"></i></span><span class="ms-2">Alex, Eqypt</span>
                  </li>
                  <li class="mb-3">
                    <span class="fa-li"><i class="fas fa-envelope"></i></span><span class="ms-2">info@example.com</span>
                  </li>
                  <li class="mb-3">
                    <span class="fa-li"><i class="fas fa-phone"></i></span><span class="ms-2">+ 01 234 567 88</span>
                  </li>
                  <li class="mb-3">
                    <span class="fa-li"><i class="fas fa-print"></i></span><span class="ms-2">+ 01 234 567 89</span>
                  </li>
                </ul>
              </div>
              <!--Grid column-->
      
              <!--Grid column-->
              <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase mb-4">Offers hours</h5>
      
                <table class="table text-center text-white">
                  <tbody class="font-weight-normal">
                    <tr>
                      <td>Mon - Thu:</td>
                      <td>8am - 9pm</td>
                    </tr>
                    <tr>
                      <td>Fri - Sat:</td>
                      <td>8am - 1am</td>
                    </tr>
                    <tr>
                      <td>Sunday:</td>
                      <td>9am - 10pm</td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!--Grid column-->
            </div>
            <!--Grid row-->
          </div>
          <!-- Grid container -->
      
          <!-- Copyright -->
          <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2024 Copyright:
            
          <!-- Copyright -->
        </footer>
        
      </div>
    
  </div>
</form>
</body>
</html>
