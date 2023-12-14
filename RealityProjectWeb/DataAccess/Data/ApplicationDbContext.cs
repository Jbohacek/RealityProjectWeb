using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using RealityProject.DataAccess.DataModels.Adds;
using RealityProject.DataAccess.DataModels.Images;
using RealityProject.DataAccess.DataModels.Location;
using RealityProject.DataAccess.DataModels.Parameters;
using RealityProject.DataAccess.DataModels.UserManagement;

namespace RealityProject.DataAccess.Data
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<Advertisement> Advertisements { get; set; } = null!;
        public DbSet<Parameter> Parameters { get; set; } = null!;
        public DbSet<Group> Groups { get; set; } = null!;
        public DbSet<Request> Requests { get; set; } = null!;

        public DbSet<Photo> Photos { get; set; } = null!;

        public DbSet<User> Users { get; set; } = null!;
        public DbSet<Role> Roles { get; set; } = null!;

        public DbSet<Address> Addresses { get; set; } = null!;
        public DbSet<City> Cities { get; set; } = null!;
        public DbSet<District> Districts { get; set; } = null!;


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

            modelBuilder.Entity<User>()
                .HasOne(x => x.UserRole)
                .WithMany(x => x.Users)
                .HasForeignKey("RoleId");

            modelBuilder.Entity<Advertisement>()
                .HasOne(x => x.Seller)
                .WithMany(x =>x.Advertisements)
                .HasForeignKey("UserId");

            modelBuilder.Entity<Request>()
                .HasOne(x => x.Advertisement)
                .WithMany(x => x.Requests)
                .HasForeignKey("AdvertisementId");

            modelBuilder.Entity<Request>()
                .HasOne(x => x.User)
                .WithMany(x => x.Requests)
                .HasForeignKey("UserId")
                .IsRequired(false);

            modelBuilder.Entity<User>()
                .HasOne(x => x.ProfilePicture).WithOne(x => x.ProfilePicture);
        }
    }
}
