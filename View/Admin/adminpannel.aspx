
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpannel.aspx.cs" Inherits="WebApplication21.View.Admin.adminpannel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"  
type="text/javascript"></script>   
<!--include jQuery Validation Plugin-->  
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.12.0/jquery.validate.min.js"  
type="text/javascript"></script>  
    <link href="../../css/bootstrap-theme.css" rel="stylesheet" />
    <link href="../../css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../../css/bootstrap.css" rel="stylesheet" />
    <link href="../../css/bootstrap.min.css" rel="stylesheet" />



     <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.2s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
    <title>Admin Panel</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Insert New Products</asp:LinkButton>
 <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">View or Manage Products</asp:LinkButton>
 
 
  
</div>

      <h3 Style="float:right"> <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#33CC33" ></asp:Label></h3>
    <center><h2>Admin Panel </h2></center>
<p></p>
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <div style=";width:500px; height:700px;margin:0 auto;">
                    <h1> Insert New Product</h1>

                     <table class="auto-style1 table table-bordered table-responsive progress-striped">
            <tr>
                <td>Select Category</td>
                <td><asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="130px" DataSourceID="SqlDataSource1" DataTextField="c_name" DataValueField="c_id"></asp:DropDownList></td>
                
               
            </tr>
            <tr>
                <td>Product Name</td>
                <td>
               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </td>
                 
            </tr>
         
            <tr>
                <td>Description</td>
                <td>
               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> </td>
                 
            </tr>

            <tr>
                <td>Product Price</td>
                <td>
               <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> </td>
                 
            </tr>

            <tr>
                <td>Quantity</td>
                <td>
               <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox> </td>
                 
            </tr>
                         <tr>
                <td>Is Popular</td>
                <td>
               <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox> </td>
                 
            </tr>

            <tr>
                <td>Uplaod Image</td>
                <td>
               
                     <asp:FileUpload ID="FileUpload1" runat="server" />
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
               
                     </td>
     
            </tr>

                         <tr>
                             
                             <td> <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                                 
                             </td>
                             <td>
                                 <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
                             </td>
                         </tr>


        </table>






        </div>

            </asp:View>

            <asp:View ID="View2" runat="server">

                <div style="background-color:white;width:500px; height:700px;margin:0 auto;">

                    <h1>Manage Medicines</h1>
        </div>

            </asp:View>
            

        </asp:MultiView>
        


    </div>
    </form>


    
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
</body>
</html>
