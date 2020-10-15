using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication21.View.User
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Session["email"] = null;
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("You need to login first");
                Response.Redirect("Userlogin.aspx");
            }
        }
    }
}