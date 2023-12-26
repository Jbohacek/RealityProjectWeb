using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Migrations.Operations;
using RealityProject.DataAccess.Data;
using RealityProject.DataAccess.DataModels.UserManagement;
using RealityProject.DataAccess.Enums;
using RealityProject.DataAccess.Models;

namespace RealityProject.DataAccess.Repository.Repos
{
    public class UserRepository : Repo<User>
    {
        public UserRepository(ApplicationDbContext data) : base(data)
        {
        }

        public Credentials LogIn(string userName, string password)
        {
            

            var users = base.GetAll("UserRole").Where(x => x.Username == userName).ToList();


            if (!users.Any())
            {
                return new Credentials(Results.WrongUserName);
            }

            var selectedUser = users.FirstOrDefault(x => x.Password.Validate(password));

            if (selectedUser == null)
            {
                return new Credentials(Results.WrongPassword);
            }

            if (selectedUser.UserRole.Name == "User")
            {
                return new Credentials(Results.NoAdmin);
            }

            return new Credentials(Results.Success, selectedUser.UserRole, selectedUser);
        }

        public new void Add(User user)
        {
            var detect = base.GetAll().Where(x => x.Username == user.Username);
            if (detect.Any())
            {
                throw new NotImplementedException("V databazi jiz existuje");
            }

            user.Password = user.Password.Crypt();
            base.Add(user);
        }

        public new void Update(User user)
        {
            user.Password = user.Password.Crypt();
            base.Update(user);
        }


        public User? GetAllInformation(Guid id)
        {
            var dat = base.GetAll("UserRole,Advertisements,Requests,ProfilePicture").FirstOrDefault(x => x.Id == id);

            if (dat != null)
                dat.Password = string.Empty;

            return dat;
        }

        public void ResetUserPassword()
        {
            var everyUser = base.GetAll().ToList();

            foreach (var user in everyUser)
            {
                user.Password = "123465".Crypt();
            }

            


        }
    }
}
