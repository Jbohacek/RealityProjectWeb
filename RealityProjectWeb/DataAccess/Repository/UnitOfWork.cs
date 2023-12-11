using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RealityProject.DataAccess.Data;
using RealityProject.DataAccess.DataModels.Parameters;
using RealityProject.DataAccess.Repository.Repos;

namespace RealityProject.DataAccess.Repository
{
    public class UnitOfWork
    {
        private readonly ApplicationDbContext _database;

        public AdvertisementRepository Advertisements;
        public PhotoRepository Photos;
        public ParameterRepository Parameters;
        public UserRepository Users;
        public RoleRepository Roles;
        public GroupRepository Groups;


        public UnitOfWork(ApplicationDbContext database)
        {
            this._database = database;

            Advertisements = new AdvertisementRepository(database);
            Photos = new PhotoRepository(database);
            Parameters = new ParameterRepository(database);
            Users = new UserRepository(database);
            Roles = new RoleRepository(database);
            Groups = new GroupRepository(database);
        }

        public void Save()
        {
            _database.SaveChanges();
        }
    }
}
