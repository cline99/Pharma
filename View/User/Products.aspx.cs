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
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Label7.Text = "Not Logged In!";
            }
            else
            {
                Label7.Text = Session["email"].ToString();
            }
            DataSet ds = GetData("select * from stock where mid="+Request.QueryString["view"].ToString());

            Repeater4.DataSource = ds;
            Repeater4.DataBind();
            Repeater2.DataSource = ds;
            Repeater2.DataBind();
            Repeater3.DataSource = ds;
            Repeater3.DataBind();

        }

        private DataSet GetData(string q)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand(q, con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            return ds;
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            int k = Convert.ToInt32(TextBox1.Text);
            if (k > 1)
            {
                k -= 1;
                TextBox1.Text = k.ToString();
            }
            else
            {
                TextBox1.Text = k.ToString();
            }
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            int k = Convert.ToInt32(TextBox1.Text);
            if (k <= 9)
            {
                k += 1;
                TextBox1.Text = k.ToString();
            }
            else
            {
                TextBox1.Text = k.ToString();
            }
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if(Session["email"] == null)
            {
                Response.Redirect("Userlogin.aspx");
            }

            else
            {
                int mid = Convert.ToInt32(Request.QueryString["view"].ToString());
                int quantity = Convert.ToInt32(TextBox1.Text);
                string email = Session["email"].ToString();

                
                
                
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("select quantity from stock where mid=@mid", con))
                    {
                        cmd.Parameters.AddWithValue("@mid", mid);

                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                int quantity_db = Convert.ToInt32(reader[0].ToString());
                                check_Quantity(quantity_db,mid);
                            }
                        }
                    }
                }

            }
        }

        void check_Quantity(int quantity_db,int mid)
        {
            int quan = Convert.ToInt32(TextBox1.Text);
            if(quantity_db < quan)
            {
                Response.Write("Only " + quantity_db + " product of this type are available in stock");
            }
            else
            {
                insert_data(mid,quan,quantity_db);
            }
        }
        
        void insert_data(int mid,int quan,int quantity_db)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string sql = "insert into usercart(mid,quan,c_email) Values(@mid,@quan,@c_email)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@mid",mid);
            cmd.Parameters.AddWithValue("@quan", quan);
            cmd.Parameters.AddWithValue("@c_email", Session["email"].ToString());
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Added to Your Cart");
            update_info(quan,quantity_db,mid);
        }

        void update_info(int quan,int quantity_db,int mid)
        {
            int new_quan = quantity_db - quan;
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string sql = "update stock set quantity=@new_quan where mid=@mid";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@new_quan", new_quan);
            cmd.Parameters.AddWithValue("@mid", mid);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

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
    }
}