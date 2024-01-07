using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace RealityProject.DataAccess.Enums
{
    public enum Kraj
    {
        HlavniMestoPraha,
        Stredocesky,
        Jihocesky,
        Plzensky,
        Karlovarsky,
        Ustecky,
        Liberecky,
        Kralovehradecky,
        Pardubicky,
        Vysocina,
        Olomoucky,
        Moravskoslezky,
        Jihomorovaský,
        Zlinsky,
        None
    }

    public static class Kraje
    {
        public static List<SelectListItem> GetKraje()
        {
            var ret = new List<SelectListItem>
            {
                new SelectListItem(@"Hlavní město Praha","0"),
                new SelectListItem(@"Středočeský kraj","1"),
                new SelectListItem(@"Jihočeský kraj","2"),
                new SelectListItem(@"Plzeňský kraj","3"),
                new SelectListItem(@"Karlovarský kraj","4"),
                new SelectListItem(@"Ústecký kraj","5"),
                new SelectListItem(@"Liberecký kraj","6"),
                new SelectListItem(@"Královéhradecký kraj","7"),
                new SelectListItem(@"Pardubický kraj","8"),
                new SelectListItem(@"Kraj Vysočina","9"),
                new SelectListItem(@"Jihomoravský kraj","10"),
                new SelectListItem(@"Olomoucký kraj","11"),
                new SelectListItem(@"Moravskoslezský kraj","12"),
                new SelectListItem(@"Zlínský kraj","13"),
            };

            return ret;
        }
    }
}
