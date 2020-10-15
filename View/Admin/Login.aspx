<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication21.View.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link href="../../css/bootstrap-theme.css" rel="stylesheet" />
    <link href="../../css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../../css/bootstrap.css" rel="stylesheet" />
    <link href="../../css/bootstrap.min.css" rel="stylesheet" />

    	<style>

     #box{

  border: 1px solid black ;
  height: 100%;

}
#main-div{

height: 900px;
background-image: url("../../img/hero_1.jpg");
background-size:100% 900px;    

}
.insidebox{
    border: 1px solid black;
    margin: 10% auto 10% auto;
 max-width: 500px;
min-width: 200px; 
   padding-left: 60px;
   padding-right: 60px;
    
     border-radius:10px;
    
    background-color: whitesmoke;
}
div h1{
    text-align: center;
   
   
    
}
p#para{
    text-align: center;
    font-size: 14px;
}

	</style>



    <title></title>


</head>
<body>
    <form id="form1" runat="server">
    <div>
    <script src="js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery.js"></script>

    <div id="main-div">
	<div id="box" class="img-responsive">

		<div class="insidebox">
         <div> <h1>Admin Login</h1></div>
         
       
                   <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                          <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Username/E-mail" required="required"></asp:TextBox>
                         
                      </div>
                       <span>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Your Email has invalid Format" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="^(?(&quot;&quot;)(&quot;&quot;.+?&quot;&quot;@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&amp;'\*\+/=\?\^`\{\}\|~\w])*)(?&lt;=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$">

        </asp:RegularExpressionValidator>
                         </span>
     
                     </div>

                       <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                       <asp:TextBox ID="txtpassword" runat="server" class="form-control" placeholder="Password" TextMode="Password" required="required"></asp:TextBox>
                         
                      </div>
     
                     </div>


            
                       <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></div>
                       <asp:TextBox ID="txtphone" runat="server" class="form-control" placeholder="Phone" required="required"></asp:TextBox>
                         
                      </div>
     
                     </div>
                      <div class="form-group"  >
                          <asp:Button ID="Button1" runat="server" Text="Log In"  class="form-control  btn-success" OnClick="Button1_Click" OnClientClick="retrun(passwordmatchfunc())" />
                       
                            
                         </div>
              

                      <div class="form-group"  >
                          <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                         </div>
              

           
           
		</div>
	</div>


</div>
    </div>
    </form>
</body>
</html>
