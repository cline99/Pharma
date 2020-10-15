<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="WebApplication21.View.Admin.Manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pharmacy - Antibiotics</title>
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
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/View/Admin/adminpannel.aspx">Back To Main page</asp:HyperLink>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="title-section text-center col-12">
            <h2 class="text-uppercase">Antibiotics</h2>
          </div>
        </div>
    
          <div class="row">
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
                <div class="col-sm-6 col-lg-4 text-center item mb-4">
                    
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img_link")%>' Width="200" Height="250" />
                    <h3 class="text-dark"><%--<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("mid","~/View/Admin/Delete.aspx?select={0}")%>'>--%>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("mname")%>'></asp:Label></asp:HyperLink></h3>
                    <p class="price">INR. <asp:Label ID="Label2" runat="server" Text='<%# Eval("mprice")%>'></asp:Label></p>
                    <p class="price">Quantity: <asp:Label ID="Label3" runat="server" Text='<%# Eval("quantity")%>'></asp:Label></p>
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# Eval("mid","~/View/Admin/Delete.aspx?select={0}")%>'>Delete</asp:HyperLink>
                </div>
            </ItemTemplate>
        </asp:Repeater>
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
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
