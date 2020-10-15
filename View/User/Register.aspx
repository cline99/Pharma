<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication21.View.User.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pharmacy - Registration</title>
    <link href="../../pharma/css/aos.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet"/>
    <link href="../../pharma/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../pharma/css/jquery-ui.css" rel="stylesheet" />
    <link href="../../pharma/css/magnific-popup.css" rel="stylesheet" />
    <link href="../../pharma/css/owl.carousel.min.css" rel="stylesheet" />
    <link href="../../pharma/css/owl.theme.default.min.css" rel="stylesheet" />
    <link href="../../pharma/css/style.css" rel="stylesheet" />
    <link href="../../pharma/fonts/icomoon/style.css" rel="stylesheet" />
    <script src="../../js/bootstrap.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <script src="../../js/jquery-migrate-1.4.1.min.js"></script>
    <script src="../../js/jquery.js"></script>
    <script src="../../pharma/js/aos.js"></script>
    <script src="../../pharma/js/jquery-3.3.1.min.js"></script>
    <script src="../../pharma/js/jquery-ui.js"></script>
    <script src="../../pharma/js/jquery.magnific-popup.min.js"></script>
    <script src="../../pharma/js/main.js"></script>
    <script src="../../pharma/js/owl.carousel.min.js"></script>
    <script src="../../pharma/js/popper.min.js"></script>
    <script src="../../pharma/js/slick.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="site-wrap">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="site-navbar py-2">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
          <ContentTemplate>
      <div class="">
        <div class="container">
            
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="search-close js-search-close" OnClick="LinkButton1_Click"><span class="icon-close2"></span></asp:LinkButton>
            <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" placeholder="Search keyword and click X..." Visible="False"></asp:TextBox>
        </div>
      </div>
            <asp:Button ID="toggle" runat="server" Text="Button" />
      <div class="container">
        <div class="d-flex align-items-center justify-content-between">
          <div class="logo">
            <div class="site-logo">
              <a href="index.aspx" class="js-logo-clone">Pharma</a>
            </div>
          </div>
          <div class="main-nav d-none d-lg-block">
            <nav class="site-navigation text-right text-md-center" role="navigation">
              <ul class="site-menu js-clone-nav d-none d-lg-block">
                <li><a href="index.aspx">Home</a></li>
                
                <li class="has-children">
                  <a href="#">Medicines</a>
                  <ul class="dropdown">
                    <li><a href="Supplements.aspx">Supplements</a></li>
                    <li>
                      <a href="Antibiotics.aspx">Antibiotics</a>
                    </li>
                    <li><a href="Painkillers.aspx">Pain Killers</a></li>
                    <li><a href="Ointments.aspx">Ointments</a></li>
                      <li><a href="Others.aspx">Others</a></li>
                    
                  </ul>
                </li>
                <li><a href="About.aspx">About</a></li>
                <li><a href="Contact.aspx">Contact</a></li>
                  <li class="active"><a href="Userlogin.aspx">Login</a></li>
                  <li class="has-children">
                  <a href="#"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></a>
                    <ul class="dropdown">
                      <li><a href="logout.aspx">Logout</a></li>
                   </ul>
                      </li>
              </ul>
            </nav>
          </div>
          <div class="icons">
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="icons-btn d-inline-block js-search-open" OnClick="LinkButton2_Click"><span class="icon-search"></span></asp:LinkButton>
            <a href="cart.aspx" class="icons-btn d-inline-block bag">
              <span class="icon-shopping-bag"></span>
              
            </a>
            <a href="#" class="site-menu-toggle js-menu-toggle ml-3 d-inline-block d-lg-none"><span
                class="icon-menu"></span></a>
          </div>
        </div>
      </div>
        </ContentTemplate>
            </asp:UpdatePanel>
    </div>
        <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0">
            <a href="index.aspx">Home</a> <span class="mx-2 mb-0">/</span>
            <strong class="text-black">Register</strong>
          </div>
        </div>
      </div>
    </div>
         <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2 class="h3 mb-5 text-black">Register Here</h2>
          </div>
          <div class="col-md-12">
    
        <div class="p-3 p-lg-5 border">
                    <div class="form-group row">
                  <div class="col-md-6">
                    <label for="TextBox1" class="text-black">First Name<span class="text-danger">*</span></label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  </div>
                   <div class="col-md-6">
                    <label for="TextBox2" class="text-black">Last Name<span class="text-danger">*</span></label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="TextBox2" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  </div>
                 </div>
            <div class="form-group row">
                <div class="col-md-12">
                    <label for="TextBox3" class="text-black">E-mail<span class="text-danger">*</span></label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="TextBox3" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group row">
                <div class="col-md-6">
                    <label for="TextBox4" class="text-black">Password<span class="text-danger">*</span></label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="TextBox4" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                <div class="col-md-6">
                    <label for="TextBox5" class="text-black">Confirm Password<span class="text-danger">*</span></label>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="TextBox5" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords does'nt Match" ControlToCompare="TextBox5" ControlToValidate="TextBox4"></asp:CompareValidator>
                    </div>
                </div>
            <div class="form-group row">
                <div class="col-md-6">
                    <label for="DropDownList1" class="text-black">Gender<span class="text-danger">*</span></label>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="0">Not Selected</asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select Your Gender" ControlToValidate="DropDownList1" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <label for="TextBox8" class="text-black">Address<span class="text-danger">*</span></label><br />
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Required" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                    </div>
            </div>
          
        <div class="form-group row">
            <div class="col-md-6">
                <br />
                <label for="TextBox6" class="text-black">Date of Birth<span class="text-danger">*</span></label>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ControlToValidate="TextBox6" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-md-6">
                    <label for="DropDownList2" class="text-black">Security Question<span class="text-danger">*</span></label>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="0">Not Selected</asp:ListItem>
                        <asp:ListItem>Your grandfather&#39;s middle name?</asp:ListItem>
                        <asp:ListItem>Your first Cellphone brand?</asp:ListItem>
                        <asp:ListItem>Your favorite Food?</asp:ListItem>
                        <asp:ListItem>Your favorite TV Series/Movie</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                <div class="col-md-6">
                    <label for="TextBox6" class="text-black">Your Response<span class="text-danger">*</span></label>
                    <asp:TextBox ID="TextBox7" runat="server" placeholder="Remember the case"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required" ControlToValidate="TextBox7" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>   
             </div>
            
            <div class="form-group row">
                  <div class="col-lg-6">
                    <asp:Button ID="Button1" runat="server" Text="Register"  CssClass="btn btn-primary btn-lg btn-block" OnClick="Button1_Click"/>
                  </div>
                        </div>
                    </div>
                  
              </div>
            </div>
          </div>
             </div>
        <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">

            <div class="block-7">
              <h3 class="footer-heading mb-4">About Us</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius quae reiciendis distinctio voluptates
                sed dolorum excepturi iure eaque, aut unde.</p>
            </div>

          </div>
          <div class="col-lg-3 mx-auto mb-5 mb-lg-0">
            <h3 class="footer-heading mb-4">Quick Links</h3>
            <ul class="list-unstyled">
              <li><a href="Supplements.aspx">Supplements</a></li>
              <li><a href="Antibiotics.aspx">Antibiotics</a></li>
                <li><a href="PainKillers.aspx">Pain Killers</a></li>
              <li><a href="Ointments.aspx">Ointments</a></li>
              <li><a href="others.aspx">Others</a></li>
            </ul>
          </div>

          <div class="col-md-6 col-lg-3">
            <div class="block-5 mb-5">
              <h3 class="footer-heading mb-4">Contact Info</h3>
              <ul class="list-unstyled">
                <li class="address">Xavier Institute of Engineering, Mahim Causeway, Mumbai-400016</li>
                <li class="phone">8551078495</li>
                <li class="email">clinecolaco@gmail.com</li>
              </ul>
            </div>


          </div>
        </div>
      </div>
    </footer>
        </div>
        </form>
</body>
</html>
