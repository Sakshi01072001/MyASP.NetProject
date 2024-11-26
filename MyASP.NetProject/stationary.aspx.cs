using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyASP.NetProject
{
    public partial class stationary : System.Web.UI.Page
    {
        string strcon = "Data Source=SAKSHI;Initial Catalog=Myshop;Integrated Security=True;";
        SqlConnection con = null;
        //SqlCommand command = null;
        SqlDataAdapter da = null;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(strcon);
            da = new SqlDataAdapter("select * from products", con);
            DataSet ds = new DataSet();
            if (!Page.IsPostBack)
            {
                da.Fill(ds, "products");
                DataList1.DataSource = ds.Tables["products"];
                DataList1.DataBind();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string pid = e.CommandArgument.ToString();
            Response.Redirect("viewdetails.aspx?pid=" + pid);
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pn = TextBox1.Text + "%";
            con = new SqlConnection(strcon);
            da = new SqlDataAdapter("select * from products where productname like @pn", con);
            da.SelectCommand.Parameters.AddWithValue("@pn", pn);
            DataSet ds = new DataSet();
            da.Fill(ds, "prod");
            DataList1.DataSource = ds.Tables["prod"];
            DataList1.DataBind();
        }
    }
}