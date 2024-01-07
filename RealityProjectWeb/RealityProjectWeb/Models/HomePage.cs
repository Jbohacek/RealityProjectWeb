using System.Security.Cryptography.Xml;
using RealityProject.DataAccess.DataModels.Adds;
using RealityProject.DataAccess.Enums;
using RealityProject.DataAccess.Repository;

namespace RealityProjectWeb.Models
{
    public class HomePage
    {
        public List<Advertisement> BestOnes { get; set; } = new List<Advertisement>();

        public List<Advertisement> Flats { get; set; } = new List<Advertisement>();
        public List<Advertisement> Cottage { get; set; } = new List<Advertisement>();
        public List<Advertisement> Houses { get; set; } = new List<Advertisement>();
        public List<Advertisement> Luxury { get; set; } = new List<Advertisement>();

        public int CountFlats { get; set; }
        public int CountCottages { get; set; }
        public int CountHouses { get; set; }
        public int CountLuxury {get; set;}



        public HomePage()
        {

        }

        public HomePage(UnitOfWork database)
        {
            Flats = GetAdvertisements(HomeTypes.Flat,database);
            Houses = GetAdvertisements(HomeTypes.House, database);
            Cottage = GetAdvertisements(HomeTypes.Cottage, database);
            Luxury = database.Advertisements.GetAll("Gallery").Where(x => x.IsLuxury).Take(6).ToList();
            BestOnes = database.Advertisements.GetAll("Gallery").OrderBy(x => x.Price).Take(6).ToList();

            CountFlats = GetCount(HomeTypes.Flat, database);
            CountCottages = GetCount(HomeTypes.Cottage, database);
            CountHouses = GetCount(HomeTypes.House, database);
            CountLuxury = database.Advertisements.GetAll().Count(x => x.IsLuxury);
        }

        public List<Advertisement> GetAdvertisements(HomeTypes type, UnitOfWork database)
        {
            return database.Advertisements.GetAll("Gallery").Where(x => x.HomeType == type).Take(6).ToList();
        }

        public int GetCount(HomeTypes type, UnitOfWork database)
        {
            return database.Advertisements.GetAll().Count(x => x.HomeType == type);
        }
    }
}
