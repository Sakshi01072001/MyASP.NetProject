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
    public partial class signin : System.Web.UI.Page
    {
        string strcon = "Data Source=SAKSHI;Initial Catalog=Myshop;Integrated Security=True;";
        SqlConnection con = null;
        SqlCommand command = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                con = new SqlConnection(strcon);
                con.Open();
                string r = null;
                string qr = "select * from signin where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                command = new SqlCommand(qr, con);
                SqlDataReader dr = command.ExecuteReader();
                string un = null;

                if (dr.Read())
                {
                    r = dr["role"].ToString();
                    un = dr["username"].ToString();
                    Session["username"] = un;
                    //Label1.Text = "login successful";
                    //Response.Redirect("about.aspx");
                    if (r == "user")
                    {
                        Response.Redirect("default.aspx");
                        
                    }
                    else if (r == "admin")
                    {
                        Response.Redirect("admin.aspx");
                    }
                }
                else
                {
                    Label1.Text = "invalid username or password";
                }
                 
                dr.Close();
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
    }
    }
