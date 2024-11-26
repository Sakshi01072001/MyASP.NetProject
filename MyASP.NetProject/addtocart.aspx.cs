using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyASP.NetProject
{
    public partial class addtocart : System.Web.UI.Page
    {
        string strcon = "Data Source=SAKSHI;Initial Catalog=Myshop;Integrated Security=True;";
        SqlConnection con = null;
        string pid;
        protected void Page_Load(object sender, EventArgs e)
        {
            pid = Request.QueryString["pid"].ToString();
            Response.Write(pid);

            string sid = Session.SessionID;
            Session["sid"] = sid;

            int qty = 1;
            string pn = null;
            int pr = 0;
            string pimg = null;


            con = new SqlConnection(strcon);

            //checking the cart table whether items exist or not
            string qr1 = "select count(*) from cart where productid=@pid and sessionid=@sid";
            SqlCommand cmdc = new SqlCommand(qr1, con);
            cmdc.Parameters.AddWithValue("@pid", pid);
            cmdc.Parameters.AddWithValue("@sid", Session["sid"].ToString());
            con.Open();
            int res = Convert.ToInt32(cmdc.ExecuteScalar());
            con.Close();

            //insert record in cart table if does not exist
            if (res == 0)
            {

                string qr = "select * from products where productid=" + pid + "";
                SqlCommand cmd1 = new SqlCommand(qr, con);
                cmd1.Parameters.AddWithValue("@pid", pid);
                con.Open();
                SqlDataReader dr = cmd1.ExecuteReader();
                while (dr.Read())
                {
                    pn = dr["productname"].ToString();
                    pr = Convert.ToInt32(dr["productprice"].ToString());
                    pimg = dr["imagename"].ToString();
                    sid = Session["sid"].ToString();

                }
                dr.Close();
                con.Close();
                qr = "insert into cart values(@pid,@pn,@pr,@pimg,@sid,@qty)";
                SqlCommand cmd = new SqlCommand(qr, con);
                cmd.Parameters.AddWithValue("@pid", pid);
                cmd.Parameters.AddWithValue("@pn", pn);
                cmd.Parameters.AddWithValue("@pr", pr);
                cmd.Parameters.AddWithValue("@pimg", pimg);
                cmd.Parameters.AddWithValue("@sid", Session["sid"].ToString());
                cmd.Parameters.AddWithValue("@qty", qty);

                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("saved");
                con.Close();
                Response.Redirect("viewcart.aspx");
            }
            else
            {
                //if record exist in cart then update the column
                string qr = "update cart set quantity=quantity+1  where productid=@pid and sessionid=@sid";
                SqlCommand cmd1 = new SqlCommand(qr, con);
                cmd1.Parameters.AddWithValue("@pid", pid);
                cmd1.Parameters.AddWithValue("@sid", Session["sid"].ToString());
                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();

                Response.Redirect("viewcart.aspx");
            }

        }
    }
}