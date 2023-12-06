using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using RealityProject.DataAccess.DataModels.UserManagement;
using RealityProject.DataAccess.Enums;
using JsonSerializer = System.Text.Json.JsonSerializer;

namespace RealityProject.DataAccess.Models
{
    public class Credentials
    {
        public Results Result { get; set; }
        public Guid UserId { get; set; }
        public Role UserRole { get; set; } = null!;
        public DateTime CreationDate { get; set; }
        public string UserName { get; set; } = string.Empty;


        public Credentials(Results result,Role userRole, User user)
        {
            Result = result;
            UserRole = userRole;
            CreationDate = DateTime.Now;
            UserId = user.Id;
            UserName = user.Username;
        }

        public Credentials(Results result)
        {
            Result = result;
        }

        public Credentials()
        {
            
        }



        

    }
}
