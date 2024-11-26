using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace MyASP.NetProject
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            RegisterRoutes(RouteTable.Routes);
        }

        void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(
                "AdminRoute",//routename
                "admin",  //url pattern
                "~/admin.aspx" //physical file
                );
        }

        void Session_Start(object sender, EventArgs e)
        {
            Session["username"] = "Guest";
            //Session["password"] = "abcd";
        }
    }
}