<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication21.View.User.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pharmacy</title>
    <script src="../../js/angular.min.js"></script>
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
            
            <asp:LinkButton ID="LinkButton1" runat="server" Class="search-close js-search-close" OnClick="LinkButton1_Click"><span class="icon-close2"></span></asp:LinkButton>
            <asp:TextBox ID="TextBox1" runat="server" Class="form-control" placeholder="Search keyword and click X..." Visible="False"></asp:TextBox>
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
              <%--<span class="number">2</span>--%>
            </a>
            <%--<a href="#" class="">--%>
                 <asp:LinkButton ID="toggle_resp_menu" runat="server" CssClass="site-menu-toggle js-menu-toggle ml-3 d-inline-block d-lg-none" OnClientClick="siteMenuClone()">
                  <span class="icon-menu"></span></asp:LinkButton>
          </div>
        </div>
      </div>
        </ContentTemplate>
            </asp:UpdatePanel>
    </div>

    <div class="site-blocks-cover">
      <div class="container">
        <div class="row">
          <div class="col-lg-7 mx-auto order-lg-2 align-self-center">
            <div class="site-block-cover-content text-center">
              <h2 class="sub-title">Effective Medicine, New Medicine Everyday</h2>
              <h1>Welcome To Pharma</h1>
              <p>
                <a href="#" class="btn btn-primary px-5 py-3">Shop Now</a>
                  
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row align-items-stretch section-overlap">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap bg-primary h-100">
              <a href="#" class="h-100">
                <h5>Free <br/> Shipping</h5>
                <p>
                 All over India
                  <strong>Pay only for your medicine, no extra charges.....  </strong>
                </p>
              </a>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap h-100">
              <a href="#" class="h-100">
                <h5>Season <br/> Sale 50% Off</h5>
                <p>
                  On selected products 
                  <strong>Enjoy flat 50% off till Jan 31 2020 </strong>
                </p>
              </a>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap bg-warning h-100">
              <a href="#" class="h-100">
                <h5>Buy <br/> A Gift Card</h5>
                <p>
                  Starting from 500 Rs 
                  <strong>Send your loved ones a gift card for their medical needs......</strong>
                </p>
              </a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="title-section text-center col-12">
            <h2 class="text-uppercase">Popular Products</h2>
          </div>
        </div>
    
        
    
          <div class="row">
          <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="col-sm-6 col-lg-4 text-center item mb-4">
                    <span class="tag">Sale</span>
                    <%--<a href="shop-single.html"><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img_link")%>' Width="200" Height="250" /></a>--%>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("mid","~/View/User/Products.aspx?view={0}")%>'><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img_link")%>' Width="200" Height="250" /></asp:HyperLink>
                    <h3 class="text-dark"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("mid","~/View/User/Products.aspx?view={0}")%>'>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("mname")%>'></asp:Label></asp:HyperLink></h3>
                    <p class="price">
                        INR. <asp:Label ID="Label2" runat="server" Text='<%# Eval("mprice")%>'></asp:Label></p>
                </div>
            </ItemTemplate>
        </asp:Repeater>
          </div>
      </div>

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
</div>
    </form>
    <script>
function openNav() {
    document.getElementsByClassName(".site-mobile-menu").style.width = "250px";
}

function closeNav() {
    document.getElementsByClassName(".site-mobile-menu").style.width = "0";
}
</script>
</body>
</html>
