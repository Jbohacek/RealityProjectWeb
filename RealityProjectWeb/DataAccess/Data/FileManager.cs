using Microsoft.AspNetCore.Http;
using Microsoft.VisualBasic.FileIO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RealityProject.DataAccess.DataModels.Images;
using RealityProject.DataAccess.Enums;

namespace RealityProject.DataAccess.Data
{
    public class FileManager
    {
        private readonly string _wwwroot;

        public FileManager(string wwwroot)
        {
            this._wwwroot = wwwroot;
        }


        public Photo SaveImage(IFormFile file, PhotoTypes type)
        {
            var newPhoto = new Photo()
            {
                Type = type,
                Id = Guid.NewGuid()
            };


            var filename = newPhoto.Id+ ".png";
            var path = Path.Combine(_wwwroot + "\\Pictures\\" + type, filename);

            

            using (var fileSteam = new FileStream(path,FileMode.Create))
            {
                file.CopyTo(fileSteam);
            }




            //var filename = category.ToString() + "_" + Guid.NewGuid().ToString();
            //var Uploads = Path.Combine(wwwRootPath, "images\\" + category.ToString() + "Pics");
            //var extenstion = Path.GetExtension(file.FileName);

            //using (var filestream = new FileStream(Path.Combine(Uploads, filename + extenstion), FileMode.Create))
            //{
            //    file.CopyTo(filestream);
            //}

            //return @"\images\" + category.ToString() + @"Pics\" + filename + extenstion;

            return newPhoto;

        }

        public void RemovePhoto(Photo photo)
        {
            File.Delete(Path.Combine(_wwwroot + photo.GetPath()));
        }
    }
}
