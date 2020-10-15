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

namespace WebApplication21.View.Admin
{
    public partial class adminpannel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"]!=null)
            {
                Label1.Text = Session["id"].ToString();
                MultiView1.ActiveViewIndex = 0;

                
            }
            
            else
            {
                Response.Redirect("~/View/Admin/Login.aspx");
                
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //MultiView1.ActiveViewIndex = 1;
            Response.Redirect("Manage.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            float c = Convert.ToInt64(TextBox3.Text);
            int q = Convert.ToInt32(TextBox4.Text);
            int j = Convert.ToInt32(TextBox5.Text);
            Product p = new Product();
            p.mname = TextBox1.Text;
            p.mprice = c;
            p.quantity = q;
            p.info = TextBox2.Text;
            p.c_id = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
            p.img_link = img_upload(FileUpload1, Session["id"].ToString());
            
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                string sql = "insert into stock(mname,mprice,quantity,info,c_id,img_link,fam) Values(@mname,@mprice,@quantity,@info,@c_id,@img_link,@fam)";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@mname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@mprice", c);
                cmd.Parameters.AddWithValue("@quantity", q);
                cmd.Parameters.AddWithValue("@info", TextBox2.Text);
                cmd.Parameters.AddWithValue("@c_id", Convert.ToInt32(DropDownList1.SelectedValue.ToString()));
                cmd.Parameters.AddWithValue("@fam", j);
                cmd.Parameters.AddWithValue("@img_link", img_upload(FileUpload1, Session["id"].ToString()));
                
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();
            

        }


        public string img_upload(FileUpload FileUpload1,string id)
        {
            string s = " ";
            if (FileUpload1.HasFile)
            {
                // Get the file extension
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (fileExtension.ToLower() != ".png" && fileExtension.ToLower() != ".jpg")
                {
                    Label2.ForeColor = System.Drawing.Color.Red;
                    Label2.Text = "Only files with .jpg and extension are allowed";
                }
                else
                {
                    // Get the file size
                    int fileSize = FileUpload1.PostedFile.ContentLength;
                    // If file size is greater than 2 MB
                    if (fileSize > 209715200)
                    {
                        Label2.ForeColor = System.Drawing.Color.Red;
                        Label2.Text = "File size cannot be greater than 2 MB";
                    }
                    else
                    {
                        Random r = new Random();
                        int x= r.Next(0,100000);
                        //s="~/img/" + FileUpload1.FileName+id.ToString()+x.ToString();
                        s = "~/img/" + id.ToString() + x.ToString() + FileUpload1.FileName;
                        // Upload the file
                        FileUpload1.SaveAs(Server.MapPath(s));
                        Label2.ForeColor = System.Drawing.Color.Green;
                        Label2.Text = "File uploaded successfully";
                        
                      
                       
                    }
                }
            }
            else
            {
                Label2.ForeColor = System.Drawing.Color.Red;
                Label2.Text = "Please select a file";
            }

            return s;

        }

    }
}