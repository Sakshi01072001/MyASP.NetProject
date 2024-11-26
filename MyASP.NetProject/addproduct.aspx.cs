using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyASP.NetProject
{
    public partial class addproduct : System.Web.UI.Page
    {
        string strcon = "Data Source=SAKSHI;Initial Catalog=Myshop;Integrated Security=True;";
        SqlConnection con = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fn = null;
            if (FileUpload1.HasFile)
            {
                fn = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(fn));
                con = new SqlConnection(strcon);
                //string qr = "insert into products values(@productname,@productprice,@categoryid,@imagename)";
                //cmd = new SqlCommand(qr, con);
                //cmd.Parameters.AddWithValue("@productname", TextBox1.Text);
                //cmd.Parameters.AddWithValue("@productprice", Convert.ToInt32(TextBox2.Text));
                //cmd.Parameters.AddWithValue("@categoryid", Convert.ToInt32(TextBox3.Text));
                //cmd.Parameters.AddWithValue("@imagename", fn);
                //con.Open();
                //cmd.ExecuteNonQuery();
                //con.Close();

                //Label1.Text = "Saved";
                //TextBox1.Text = "";
                //TextBox1.Focus();
                string query = "INSERT INTO products (productid,productname, productprice, categoryid, imagename) VALUES (@pi,@pn, @pr, @catid, @imgname)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@pi", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@pn", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@pr", Convert.ToInt32(TextBox2.Text));
                    cmd.Parameters.AddWithValue("@catid", Convert.ToInt32(TextBox3.Text));
                    cmd.Parameters.AddWithValue("@imgname", fn);
                    

                    con.Open();
                    cmd.ExecuteNonQuery();
                    cleartext();
                }

            }
            else
            {
                Label1.Text = "Please select a file to Uplode ";
            }
        }


        public void cleartext()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox1.Focus();
        }
    }
}