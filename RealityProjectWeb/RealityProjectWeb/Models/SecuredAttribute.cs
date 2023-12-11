using System.Security.Policy;
using System.Text.Json;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.AspNetCore.Mvc;
using RealityProject.DataAccess.Models;
using Results = RealityProject.DataAccess.Enums.Results;

namespace RealityProjectWeb.Models
{
    public class SecuredAttribute : Attribute, IActionFilter
    {
        public SecuredAttribute()
        {
            _role = "Admin";
        }

        public SecuredAttribute(string role)
        {
            _role = role;
        }

        private readonly string _role;

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

            if (ctrl.Credential.UserRole.Name != "Admin")
            {
                if (ctrl.Credential.UserRole.Name != _role)
                {
                    context.Result = new RedirectToActionResult("Index", "LogIn", "");
                }
            }

            


        }
    }
}
