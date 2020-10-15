using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication21
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton1.Visible = false;
            if (Session["email"] == null)
            {
                Label3.Text = "Not Logged In!";
            }
            else
            {
                Label3.Text = Session["email"].ToString();
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            LinkButton1.Visible = true;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //
            if (TextBox1.Text == "")
            {
                TextBox1.Visible = false;
                LinkButton1.Visible = false;
            }
            else
            {
                Response.Redirect("search.aspx?word=" + TextBox1.Text);
                TextBox1.Visible = false;
                LinkButton1.Visible = false;
            }
        }
    }
}