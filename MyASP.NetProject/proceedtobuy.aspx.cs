using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyASP.NetProject
{
    public partial class proceedtobuy : System.Web.UI.Page
    {
        string strcon = "Data Source=SAKSHI;Initial Catalog=Myshop;Integrated Security=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCartItems();
            }
        }

        private void BindCartItems()
        {
            DataTable dt = GetCartItems();
            GridView1.DataSource = dt;
            GridView1.DataBind();

            // Calculate Grand Total
            decimal grandTotal = 0;
            foreach (DataRow row in dt.Rows)
            {
                grandTotal += Convert.ToDecimal(row["productprice"]);
            }
            lblGrandTotal.Text = grandTotal.ToString();
        }

        public DataTable GetCartItems()
        {
            
            using (SqlConnection conn = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Cart", conn))
                {
                    conn.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    return dt;
                }
            }
        }

    }
}