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
    public partial class Search : System.Web.UI.Page
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
                DataSet ds = GetData();

                Repeater1.DataSource = ds;
                Repeater1.DataBind();
                

            }

            private DataSet GetData()
            {
                string word = Request.QueryString["word"];
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand("select * from stock where (mname LIKE '%' + @word + '%')", con);
            cmd.Parameters.AddWithValue("@word", word);
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                return ds;
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
