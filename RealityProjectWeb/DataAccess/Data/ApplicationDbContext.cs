using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using RealityProject.DataAccess.Repos.Adds;
using RealityProject.DataAccess.Repos.Images;
using RealityProject.DataAccess.Repos.Parameters;

namespace RealityProject.DataAccess.Data
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<Advertisement> Advertisements { get; set; } = null!;
        public DbSet<Parameter> Parameters { get; set; } = null!;
        public DbSet<Photo> Photos { get; set; } = null!;
        

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
            
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Advertisement>()
                .HasMany(x => x.Parameters)
                .WithMany(x => x.Advertisements)
                .UsingEntity(x => x.ToTable("tbParameterAdvertisement"));

            modelBuilder.Entity<Advertisement>()
                .HasMany(x => x.Gallery)
                .WithMany(x => x.Advertisements)
                .UsingEntity(x => x.ToTable("tbAdvertisementPhotos"));

            modelBuilder.Entity<Advertisement>()
                .HasOne(x => x.Photo).WithOne(x => x.MainPhoto);


        }
    }
}
