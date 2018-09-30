using System.Web;
using System.Web.Optimization;

namespace WebApplication4
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            /* Bundle Format
                                                  Name                      Location
                                                   |                            |
                                                  \|/                          \|/
             bundles.Add(new ScriptBundle("~/bundles/jquery").Include("~/Scripts/jquery-{version}.js"));

            */

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.

            //Default bundles
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include("~/Scripts/jquery-{version}.js"));
            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include("~/Scripts/jquery.validate*"));
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include("~/Scripts/modernizr-*"));
            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include("~/Scripts/bootstrap.js"));

            //Angular bundles
            bundles.Add(new ScriptBundle("~/bundles/angular").Include("~/Scripts/angular.js"));
            bundles.Add(new ScriptBundle("~/bundles/smart-table").Include("~/Scripts/smart-table.js"));
            bundles.Add(new ScriptBundle("~/bundles/application-controller").Include("~/Angular/ApplicationController.js"));
            bundles.Add(new ScriptBundle("~/bundles/angular-validator").Include("~/Angular/AngularValidator.js"));

            //JS Libraries
            bundles.Add(new ScriptBundle("~/bundles/underscore").Include("~/Scripts/underscore.js"));
            bundles.Add(new ScriptBundle("~/bundles/validate").Include("~/Scripts/validate.js"));
            bundles.Add(new ScriptBundle("~/bundles/moment").Include("~/Scripts/moment.js"));


            bundles.Add(new StyleBundle("~/Content/css").Include(
           "~/Content/bootstrap.css",
           "~/Content/site.css"));
        }
    }
}
