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
    public partial class CartDel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fetch_mid(Request.QueryString["tid"].ToString());
        }
       void fetch_mid(string tid)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select mid from usercart where tid=@tid", con))
                {
                    cmd.Parameters.AddWithValue("@tid", tid);

                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string mid = reader[0].ToString();
                            fetch_quan_stock(tid, mid);
                        }
                    }
                }
            }
            
        }

        

        void fetch_quan_stock(string tid,string mid)
        {
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
                            fetch_quan_cart(quantity_db, tid,mid);
                        }
                    }
                }
            }
        }
        void fetch_quan_cart(int quantity_db,string tid,string mid)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select quan from usercart where tid=@tid", con))
                {
                    cmd.Parameters.AddWithValue("@tid", tid);

                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            int quan = Convert.ToInt32(reader[0].ToString());
                            addQuan(quan, quantity_db,tid,mid);
                        }
                    }
                }
            }

        }

        void addQuan(int quan,int quantity_db,string tid,string mid)
        {
            int up_quantity = quan + quantity_db;
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string sql = "update stock set quantity=@up_quantity where mid=@mid";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@up_quantity", up_quantity);
            cmd.Parameters.AddWithValue("@mid", mid);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            Delete_Cart_Element(tid);


        }

        void Delete_Cart_Element(string tid)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string sql = "delete from usercart where tid=@tid";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@tid", tid);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("cart.aspx");

        }
    }
}