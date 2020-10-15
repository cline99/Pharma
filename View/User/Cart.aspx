<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication21.View.User.Cart" %>

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
            <strong class="text-black">Cart</strong>
          </div>
        </div>
      </div>
    </div>
    <div class="site-section">
      <div class="container">
        <div class="row mb-5">
            <div class="col-md-12">
            <div class="site-blocks-table">
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th class="product-thumbnail">Image</th>
                    <th class="product-name">Product</th>
                    <th class="product-price">Price</th>
                    <th class="product-quantity">Quantity</th>
                    <th class="product-remove">Remove</th>
                  </tr>
                </thead>
                  <tbody>
                    

                        
                      <asp:Repeater ID="Repeater1" runat="server">
                          <ItemTemplate>
                  <tr>
                      
                    <td class="product-thumbnail">
                      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("mid","~/View/User/Products.aspx?view={0}")%>'><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img_link")%>' Width="200" Height="250" /></asp:HyperLink>
                    </td>
                    <td class="product-name">
                      <h2 class="h5 text-black"><asp:Label ID="Label1" runat="server" Text='<%# Eval("mname")%>'></asp:Label></h2>
                    </td>
                    <td>INR. <asp:Label ID="Label2" runat="server" Text='<%# Eval("mprice")%>'></asp:Label></td>
                    <td>
                        
                      <div class="input-group mb-3" style="max-width: 120px;">
                           <asp:Label ID="Label3" runat="server" CssClass="form-control text-center quantityContainer" Text='<%# Eval("quan")%>'></asp:Label>  
                      </div>
                    </td>
                    
                    <td><asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-primary height-auto btn-sm" NavigateUrl='<%# Eval("tid","~/View/User/CartDel.aspx?tid={0}")%>'>X</asp:HyperLink></td>
                        
                  </tr>
                       </ItemTemplate>
                    </asp:Repeater>
                   
                  </tbody>
              </table>
                             </ContentTemplate>
                    </asp:UpdatePanel>
            </div>
        </div>
    </div>
    
          <div class="row">
          <div class="col-md-6">
            <div class="row mb-5">
              <div class="col-md-6 mb-3 mb-md-0">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-md btn-block" Text="Update Cart" OnClick="Button1_Click"/>
              </div>
              <div class="col-md-6">
                <asp:Button ID="Button2" runat="server" Text="Continue Shopping" CssClass="btn btn-outline-primary btn-md btn-block" OnClick="Button2_Click" />
              </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <label class="text-black h4" for="coupon">Coupon</label>
                <p>Enter your coupon code if you have one.<br />Add all you need in the cart and then apply the Coupon Code</p>
              </div>
              <div class="col-md-8 mb-3 mb-md-0">
                
                <asp:TextBox ID="coupon" runat="server" CssClass="form-control py-3" placeholder="Coupon Code"></asp:TextBox>
              </div>
              <div class="col-md-4">
                
                <asp:Button ID="Button4" runat="server" Text="Apply Coupon" CssClass="btn btn-primary btn-md px-4" />
              </div>
            </div>
          </div>
          <div class="col-md-6 pl-5">
            <div class="row justify-content-end">
              <div class="col-md-7">
                <div class="row">
                  <div class="col-md-12 text-right border-bottom mb-5">
                    <h3 class="text-black h4 text-uppercase">Cart Totals</h3>
                  </div>
                </div>
                <div class="row mb-3">
                  <div class="col-md-6">
                    <span class="text-black">Subtotal</span>
                  </div>
                  <div class="col-md-6 text-right">
                    <strong class="text-black"><asp:Label ID="Label4" runat="server" Text=""></asp:Label></strong>
                  </div>
                </div>
                <div class="row mb-5">
                  <div class="col-md-6">
                    <span class="text-black">Total</span>
                  </div>
                  <div class="col-md-6 text-right">
                    <strong class="text-black"><asp:Label ID="Label5" runat="server" Text=""></asp:Label></strong>

                  </div>
                </div>
    
                <div class="row">
                  <div class="col-md-12">
                        <asp:Button ID="Button3" runat="server" Text="Buy Now" CssClass="btn btn-primary btn-lg btn-block" OnClick="Button3_Click"/>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
       
      </div>
    </div>
   </div>
 </div>

    </form>
</body>
</html>
