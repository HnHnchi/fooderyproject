﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="fooderyproject.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="style.css" />
    
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />



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
                        <a class="nav-link" href="partener.aspx"> Become a partener</a>
                    </li>
                    <li class="nav-item">
                      
                    </li>

                </ul>
            </div>
        </div>
    </nav>
    <br/>

        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Font-Names="myfont">
            <ContinueButtonStyle CssClass="btn btn-primary btn-lg btn-rounded gradient-custom text-body px-5" Font-Names="myfont" runat="server" />
            <CreateUserButtonStyle CssClass="btn btn-primary btn-lg btn-rounded gradient-custom text-body px-5" Font-Names="myfont" runat="server" />
            <TitleTextStyle Font-Names="myfont" />
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
            <HeaderStyle  />
            <NavigationButtonStyle CssClass="btn btn-primary btn-lg btn-rounded gradient-custom text-body px-5" Font-Names="myfont" runat="server" />
            <SideBarButtonStyle CssClass="btn btn-primary btn-lg btn-rounded gradient-custom text-body px-5" Font-Names="myfont" runat="server" />
            <SideBarStyle  />
            <StepStyle />
        </asp:CreateUserWizard>
   
    
  
    
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
