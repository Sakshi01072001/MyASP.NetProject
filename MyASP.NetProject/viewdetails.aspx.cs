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
    public partial class viewdetails : System.Web.UI.Page
    {
        string strcon = "Data Source=SAKSHI;Initial Catalog=Myshop;Integrated Security=True;";
        SqlConnection con = null;
        SqlDataAdapter da = null;
        DataSet ds;
        string pid;
        protected void Page_Load(object sender, EventArgs e)
        {
            pid = Request.QueryString["pid"].ToString();
            // Response.Write(pid);
            con = new SqlConnection(strcon);
            da = new SqlDataAdapter($"select * from products where productid={pid}", con);

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

        }

        protected void unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("stationary.aspx");

        }

        protected void unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("addtocart.aspx?pid=" + pid);

        }

        protected void unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("proceedtobuy.aspx");
        }
    }

}
    
