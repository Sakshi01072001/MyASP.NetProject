using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyASP.NetProject
{
    public partial class viewcart : System.Web.UI.Page
    {
        string strcon = "Data Source=SAKSHI;Initial Catalog=Myshop;Integrated Security=True;";
        SqlConnection con = null;
        SqlDataAdapter da = null;
        DataSet ds;
        int gtotal = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            string sid = Session["sid"].ToString();
            con = new SqlConnection(strcon);
            da = new SqlDataAdapter("select productid,productname,productprice,productimg,quantity,productprice*quantity as 'totalamount' from cart where sessionid='" + sid + "'", con);
            DataSet ds = new DataSet();
            int gtotal = 0;
            if (!Page.IsPostBack)
            {
                da.Fill(ds, "cart");
                foreach (DataRow dr in ds.Tables["cart"].Rows)
                {
                    gtotal = gtotal + Convert.ToInt32(dr["totalamount"].ToString());
                }
                grandtotal.Text = gtotal.ToString();
                DataList1.DataSource = ds.Tables["cart"];
                DataList1.DataBind();
                //  Response.Write("gtotal" + gtotal);
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("stationary.aspx");
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string res = e.CommandName.ToString();
            Response.Write(res);

            if (res == "plus")
            {
                TextBox txtBox = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("qty"));
                string qt = txtBox.Text;
                int cnt = Convert.ToInt32(qt) + 1;
                txtBox.Text = cnt.ToString();

            }
            if (res == "minus")
            {
                TextBox txtBox = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("qty"));
                string qt = txtBox.Text;
                int cnt = Convert.ToInt32(qt) - 1;
                txtBox.Text = cnt.ToString();

            }

            if (res == "update")
            {
                TextBox txtBox = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("qty"));
                string qt = txtBox.Text;
                Label prodid = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("pid"));
                string pi = prodid.Text;
                // Label1.Text = pi.ToString();
                string qr = "update cart set quantity=@t11 where productid=@pi and sessionid=@sid";
                SqlCommand com = new SqlCommand(qr, con);
                con.Open();
                com.Parameters.AddWithValue("@t11", qt);
                com.Parameters.AddWithValue("@pi", pi);
                string sid = Session["sid"].ToString();
                com.Parameters.AddWithValue("@sid", sid);
                com.ExecuteNonQuery();
                con.Close();
                Response.Redirect("viewcart.aspx");
            }
            else if (res == "delete")
            {
                Label prodid = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("pid"));
                string pi = prodid.Text;
                // Label1.Text = pi.ToString();
                string qr = "delete from cart  where productid=@pi and sessionid=@sid";
                SqlCommand com = new SqlCommand(qr, con);
                con.Open();
                com.Parameters.AddWithValue("@pi", pi);
                string sid = Session["sid"].ToString();
                com.Parameters.AddWithValue("@sid", sid);
                com.ExecuteNonQuery();
                con.Close();
                Response.Redirect("viewcart.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("proceedtobuy.aspx");

        }

    }
    }
