using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using LocalVariables.Arbitrary;

namespace $rootnamespace$.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            ViewBag.SayMyName = ArbitraryClass.ArbitraryMethod("Josh");
            return View();
        }
    }
}
