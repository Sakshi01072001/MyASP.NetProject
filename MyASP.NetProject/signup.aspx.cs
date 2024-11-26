using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyASP.NetProject
{
    public partial class signup : System.Web.UI.Page
    {
        string strcon = "Data Source=SAKSHI;Initial Catalog=Myshop;Integrated Security=True;";
        SqlConnection con = null;
        SqlCommand command = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(strcon);
                string qr = "insert into signin(username,email,gender,password) values(@un,@email,@gen,@pw)";
                command = new SqlCommand(qr, con);
                command.Parameters.AddWithValue("@un", TextBox1.Text);
                command.Parameters.AddWithValue("@email", TextBox2.Text);                
                string g = null;
                if (RadioButton1.Checked)
                {
                    g = "male";
                }
                else if (RadioButton2.Checked)
                {
                    g = "female";
                }
                else if(RadioButton3.Checked)
                {
                    g = "other";
                }
                command.Parameters.AddWithValue("@gen", g);
                command.Parameters.AddWithValue("@pw", TextBox3.Text);
                con.Open();
                command.ExecuteNonQuery();
                Label1.Text = "signup successfull";
                if(Label1.Text =="signup successfull")
                {
                    Response.Redirect("default.aspx");
                }
                cleartext();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();

            }
            finally
            {
                con.Close();
            }

        }

        public void cleartext()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            TextBox1.Focus();
        }


    }
}
