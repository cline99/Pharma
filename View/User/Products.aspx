<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication21.View.User.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pharmacy</title>
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

    <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
    <div class="site-navbar py-2">
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
          <ContentTemplate>
      <div class="">
        <div class="container">
            
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="search-close js-search-close" OnClick="LinkButton1_Click" Visible="False"><span class="icon-close2"></span></asp:LinkButton>
            <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" placeholder="Search keyword and click X..." Visible="False"></asp:TextBox>
        </div>
      </div>

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
                <li class="active"><a href="index.aspx">Home</a></li>
                
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
                  <li><a href="Userlogin.aspx">Login</a></li>
                  <li class="has-children">
                  <a href="#"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></a>
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
        <asp:Repeater ID="Repeater4" runat="server">
            <ItemTemplate>
                
          <div class="col-md-12 mb-0"><a href="index.aspx">Home</a> <span class="mx-2 mb-0">/</span> 
              <a href="Products.aspx">Products</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("mname")%>'></asp:Label>
                 </strong></div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
      </div>
    </div>
        <div class="site-section">
            <div class="container">
                <div class="row">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                           <div class="col-md-5 mr-auto">
                                <div class="border text-center">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img_link")%>' CssClass="img-fluid p-5" />
            </div>
          </div>
          <div class="col-md-6">
            <h2 class="text-black">
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("mname")%>'></asp:Label></h2>
               
                
                    <strong class="text-primary h4">INR.<asp:Label ID="Label3" runat="server" Text='<%# Eval("mprice")%>'></asp:Label></strong></p>
                    <div class="mb-5">
                        </ItemTemplate>
                    </asp:Repeater>
                     <div class="mb-5">
                    
                        
                        <div class="input-group mb-3" style="max-width: 220px;">
                        
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="input-group-prepend">
                                <asp:Button ID="button1" runat="server" Text="-" cssClass="btn btn-outline-primary js-btn-minus" OnClick="button1_Click"/>
                                </div>
                                <br />
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control text-center" Text="1" AutoPostBack="True"></asp:TextBox>
                                <br />
                                <div class="input-group-prepend">
                                <asp:Button ID="button2" runat="server" Text="+" cssClass="btn btn-outline-primary js-btn-plus" OnClick="button2_Click"/>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>  
                            </div>
                    
                 </div>

            <p>
                 <asp:Button ID="Button3" runat="server" Text="Add to Cart" CssClass="buy-now btn btn-sm height-auto px-4 py-3 btn-primary" OnClick="Button3_Click" />
                </p>
              <div class="mt-5">
                  <asp:Repeater ID="Repeater3" runat="server">
                      <ItemTemplate>
                  <asp:Label ID="Label4" runat="server" Text='<%# Eval("info")%>'></asp:Label>
                  
                    </ItemTemplate>
                    </asp:Repeater>
                  </div>
        </div>
      </div>
    </div>
        
        </div>
    <div>
    <div class="site-section bg-secondary bg-image" style="background-image: url('../../pharma/images/bg_2.jpg');">
      <div class="container">
        <div class="row align-items-stretch">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('../../pharma/images/bg_1.jpg');">
              <div class="banner-1-inner align-self-center">
                <h2>Pharma Products</h2>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestiae ex ad minus rem odio voluptatem.
                </p>
              </div>
            </a>
          </div>
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('../../pharma/images/bg_2.jpg');">
     
              <div class="banner-1-inner ml-auto  align-self-center">
                <h2>Rated by Experts</h2>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestiae ex ad minus rem odio voluptatem.
                </p>
              </div>
            </a>
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
