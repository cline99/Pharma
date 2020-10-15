using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication21.Model;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

namespace WebApplication21.View.User
{
    public partial class Forgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            LinkButton1.Visible = false;
            if (Session["email"] == null)
            {
                Label3.Text = "Not Logged In!";
            }
            else
            {
                Label3.Text = Session["email"].ToString();
            }
            Label1.Text = "Security Question will appear Here";
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
           string em = TextBox1.Text;
           string res = TextBox2.Text;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT seca,password from userreg where email=@email", con))
                {
                    cmd.Parameters.AddWithValue("@email", em);

                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string seca = reader[0].ToString();
                            string pass = reader[1].ToString();
                            forgot(em, seca,res,pass);
                        }
                    }
                }
            }
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string em = TextBox1.Text;
            /*string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("select secq from userreg where email=@email", con);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                fillLabel(em);
            }*/
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT secq from userreg where email=@email", con))
                {
                    cmd.Parameters.AddWithValue("@email", em);
                    
                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string secq = reader[0].ToString();
                            
                            fillLabel(secq);
                        }
                    }
                }
            }
        }
        protected void fillLabel(string secq)
        {
            Label1.Text = secq.ToString();
        }

        protected void forgot(string em, string seca,string res,string pass)
        {
            if (seca.ToString() == res.ToString())
            {
                //try
               // {
                    MailMessage mail = new MailMessage();
                    SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                    mail.From = new MailAddress("clinecolaco@gmail.com");
                    mail.To.Add(em);
                    mail.Subject = "Your Password";
                    mail.Body = "Password for username " + em + " is " + pass;

                    SmtpServer.Port = 587;
                    SmtpServer.Credentials = new System.Net.NetworkCredential("epharmacyindianew@gmail.com", "Cline444");
                    SmtpServer.EnableSsl = true;

                    SmtpServer.Send(mail);
                    Response.Write("Mail Send");
               // }
               // catch
                //{
                    Response.Write("Internet not connected");
               // }
                
            }
            else
            {
                Response.Write("Incorrect Answer, try again");
            }
            
        }
    }
}