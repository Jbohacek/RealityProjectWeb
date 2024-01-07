using RealityProject.DataAccess.DataModels.Adds;

namespace RealityProjectWeb.Areas.User.Models
{
    public class FindPage
    {
        public SearchModel SearchModel { get; set; } = new SearchModel();
        public List<Advertisement> Advertisements { get; set; } = new List<Advertisement>();

        public int Page { get; set; } = 0;
        public int TotalCount { get; set; } = 0;
        public int TotalPages { get; set; } = 1;

        public int ShowCount { get; set; } = 10;

        public bool PreviousPage { get; set; } = false;
        public bool NextPage { get; set; } = false;

        

    }
}
