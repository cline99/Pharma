using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication21.View.User
{
    public partial class Userlogin : System.Web.UI.Page
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forgot.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            TextBox9.Visible = true;
            LinkButton1.Visible = true;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //
            if (TextBox9.Text == "")
            {
                TextBox9.Visible = false;
                LinkButton1.Visible = false;
            }
            else
            {
                Response.Redirect("search.aspx?word=" + TextBox9.Text);
                TextBox9.Visible = false;
                LinkButton1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("select * from userreg where email=@email and password=@password", con);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                Response.Write("Login Successful");
                Session["email"] = TextBox1.Text;
                //Response.Write("<script>alert('Data inserted successfully')</script>");
                //Response.Write(Session["email"]);
                Response.Redirect("index.aspx");
            }
            else
            {
                Label1.Text = "Incorrect Email or Password";
                
            }
        }
    }
}