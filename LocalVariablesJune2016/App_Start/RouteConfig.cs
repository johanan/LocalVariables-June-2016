using System.Web.Mvc;
using System.Web.Routing;

[assembly: WebActivatorEx.PreApplicationStartMethod(typeof(LocalVariablesJune2016.App_Start.RouteConfig), "StartUpRoutes")]
namespace LocalVariablesJune2016.App_Start
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }

        public static void StartUpRoutes()
        {
            RouteConfig.RegisterRoutes(RouteTable.Routes);
        }
    }
}