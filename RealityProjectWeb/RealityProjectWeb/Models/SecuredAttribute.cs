using System.Text.Json;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.AspNetCore.Mvc;
using RealityProject.DataAccess.Models;
using Results = RealityProject.DataAccess.Enums.Results;

namespace RealityProjectWeb.Models
{
    public class SecuredAttribute : Attribute, IActionFilter
    {
        public void OnActionExecuted(ActionExecutedContext context)
        {

        }

        public void OnActionExecuting(ActionExecutingContext context)
        {
            BaseController ctrl = (BaseController)context.Controller;

            if (ctrl.Credential.Result != Results.Success)
            {
                //string c = ctrl.ControllerContext.RouteData.Values["controller"].ToString();
                //string a = ctrl.ControllerContext.RouteData.Values["action"].ToString();

                context.Result = new RedirectToActionResult("Index", "LogIn","");
            }
        }
    }
}
