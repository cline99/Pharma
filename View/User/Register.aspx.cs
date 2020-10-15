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
    public partial class Register : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
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
        public void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("select * from userreg where email=@email", con);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                Response.Write("<a href='Userlogin.aspx'>This E-mail is already registered.Click Here to Login</a>");
                System.Threading.Thread.Sleep(5000);
                //Response.Redirect("Userlogin.aspx");
            }
            else
            {
                InsertData();
            }
        }
        protected void InsertData()
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string sql = "insert into userreg(fname,lname,email,password,dob,gender,secq,seca,addr) Values(@fname,@lname,@email,@password,@dob,@gender,@secq,@seca,@addr)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@fname",TextBox1.Text);
            cmd.Parameters.AddWithValue("@lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@password", TextBox4.Text);
            cmd.Parameters.AddWithValue("@dob", TextBox6.Text);
            cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@secq", DropDownList2.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@seca", TextBox7.Text);
            cmd.Parameters.AddWithValue("@addr", TextBox8.Text);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Userlogin.aspx");

        }
    }
}