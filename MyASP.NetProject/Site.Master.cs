using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyASP.NetProject
{
    public partial class SiteMaster : MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string u = Session["username"].ToString();


            if (u == "Guest")
            {
                Label1.Text = "Guest";
            }
            else
            {
                Label1.Text = u;
                
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
        }
    }
}