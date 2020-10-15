using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

namespace WebApplication21.View.User
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton1.Visible = false;
            if (Session["email"] == null)
            {
                Label3.Text = "Not Logged In!";
                Response.Redirect("userlogin.aspx");
            }
            else
            {
                Label3.Text = Session["email"].ToString();
            }
            DataSet ds = GetData();
            

            Repeater1.DataSource = ds;
            Repeater1.DataBind();

            int[] price_list = new int[100];
            int[] quantity_list = new int[100];
            int i = 0;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select S.mprice, C.quan from usercart C inner join stock S on C.mid=S.mid where C.c_email=@email", con))
                {
                    cmd.Parameters.AddWithValue("@email", Session["email"].ToString());

                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            price_list[i] = Convert.ToInt32(reader[0].ToString());
                            quantity_list[i] = Convert.ToInt32(reader[1].ToString());
                            i += 1;
                        }
                    }
                }
            }
            calc_total(price_list, quantity_list);
        }
        private DataSet GetData()
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("select * from usercart C inner join stock S on C.mid=S.mid where C.c_email=@email", con);
            cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            return ds;
        }

       public void calc_total(int[] price_list,int[] quantity_list)
        {
            int[] prc = new int[price_list.Length];
            int sum_=0;
            for(int i = 0; i < price_list.Length; i += 1)
            {
                prc[i] = price_list[i] * quantity_list[i];
                sum_ += prc[i];
            }
            Label4.Text = "INR."+sum_.ToString();
            Label5.Text = Label4.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int[] price_list = new int[100];
            int[] quantity_list = new int[100];

            int i = 0;
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select S.mprice, C.quan from usercart C inner join stock S on C.mid=S.mid where C.c_email=@email", con))
                {
                    cmd.Parameters.AddWithValue("@email", Session["email"].ToString());

                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            price_list[i] = Convert.ToInt32(reader[0].ToString());
                            quantity_list[i] = Convert.ToInt32(reader[1].ToString());
                            i += 1;
                        }
                    }
                }
            }
            calc_total(price_list, quantity_list);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(),"Scripts", "<Script>alert('');</Script>");    
            send_mail(Session["email"].ToString());
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string sql = "delete from usercart where c_email=@c_email";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@c_email", Session["email"].ToString());
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("thankyou.aspx");
            
            
        }
        
        void send_mail(string send_em)
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("clinecolaco@gmail.com");
                mail.To.Add(send_em);
                mail.Subject = "Your Order has been Placed successfully";
                mail.Body = "Your Order has been placed and with delivered to the address provided by you within 3-4 Working days";

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("epharmacyindianew@gmail.com", "Cline444");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
                return;
            }
            catch
            {
                Response.Write("<script>alert('Check your internet connection');</script>");
            }
            
            
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            if(coupon.Text == "CLINE14")
            {
                int[] price_list = new int[100];
                int[] quantity_list = new int[100];

                int i = 0;
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("select S.mprice, C.quan from usercart C inner join stock S on C.mid=S.mid where C.c_email=@email", con))
                    {
                        cmd.Parameters.AddWithValue("@email", Session["email"].ToString());

                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                price_list[i] = Convert.ToInt32(reader[0].ToString());
                                quantity_list[i] = Convert.ToInt32(reader[1].ToString());
                                i += 1;
                            }
                        }
                    }
                }
                int[] prc = new int[price_list.Length];
                int sum_ = 0;
                for (i = 0; i < price_list.Length; i += 1)
                {
                    prc[i] = price_list[i] * quantity_list[i];
                    sum_ += prc[i];
                }
                sum_ /= 2;
                Label5.Text = "INR " + sum_.ToString(); 
            }
        }
    }
}
