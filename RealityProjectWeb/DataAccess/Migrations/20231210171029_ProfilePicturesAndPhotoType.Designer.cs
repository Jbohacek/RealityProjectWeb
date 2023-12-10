﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using RealityProject.DataAccess.Data;

#nullable disable

namespace RealityProject.DataAccess.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20231210171029_ProfilePicturesAndPhotoType")]
    partial class ProfilePicturesAndPhotoType
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.25")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("AdvertisementParameter", b =>
                {
                    b.Property<Guid>("AdvertisementsId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("ParametersId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("AdvertisementsId", "ParametersId");

                    b.HasIndex("ParametersId");

                    b.ToTable("tbParameterAdvertisement", (string)null);
                });

            modelBuilder.Entity("AdvertisementPhoto", b =>
                {
                    b.Property<Guid>("AdvertisementsId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("GalleryId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("AdvertisementsId", "GalleryId");

                    b.HasIndex("GalleryId");

                    b.ToTable("tbAdvertisementPhotos", (string)null);
                });

            modelBuilder.Entity("RealityProject.DataAccess.DataModels.Adds.Advertisement", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Content")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Electricity")
                        .HasColumnType("int");

                    b.Property<int>("HomeType")
                        .HasColumnType("int");

                    b.Property<Guid?>("IdPhoto")
                        .HasColumnType("uniqueidentifier");

                    b.Property<double>("InsideSize")
                        .HasColumnType("float");

                    b.Property<bool>("IsLuxury")
                        .HasColumnType("bit");

                    b.Property<double?>("OutsideSize")
                        .HasColumnType("float");

                    b.Property<double>("Price")
                        .HasColumnType("float");

                    b.Property<Guid>("UserId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("Id");

                    b.HasIndex("IdPhoto")
                        .IsUnique()
                        .HasFilter("[IdPhoto] IS NOT NULL");

                    b.HasIndex("UserId");

                    b.ToTable("tbAdvertisements");
                });

            modelBuilder.Entity("RealityProject.DataAccess.DataModels.Adds.Request", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("AdvertisementId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Content")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Phone")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<Guid?>("UserId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("Id");

                    b.HasIndex("AdvertisementId");

                    b.HasIndex("UserId");

                    b.ToTable("tbRequest");
                });

            modelBuilder.Entity("RealityProject.DataAccess.DataModels.Images.Photo", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid?>("AdvertisementId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("FotoName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("FotoPath")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<double?>("Size")
                        .HasColumnType("float");

                    b.Property<int>("Type")
                        .HasColumnType("int");

                    b.Property<Guid?>("UserId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("Id");

                    b.HasIndex("UserId")
                        .IsUnique()
                        .HasFilter("[UserId] IS NOT NULL");

                    b.ToTable("tbPhotos");
                });

            modelBuilder.Entity("RealityProject.DataAccess.DataModels.Parameters.Parameter", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Value")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("tbParameters");
                });

            modelBuilder.Entity("RealityProject.DataAccess.DataModels.UserManagement.Role", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<bool>("IsValid")
                        .HasColumnType("bit");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("tbRoles");
                });

            modelBuilder.Entity("RealityProject.DataAccess.DataModels.UserManagement.User", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("FirstName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("IsBlocked")
                        .HasColumnType("bit");

                    b.Property<bool>("IsEmailConfirmed")
                        .HasColumnType("bit");

                    b.Property<bool>("IsValid")
                        .HasColumnType("bit");

                    b.Property<string>("LastName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Phone")
                        .HasColumnType("nvarchar(max)");

                    b.Property<Guid>("ProfilePicId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("RoleId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Username")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("tbUser");
                });

            modelBuilder.Entity("AdvertisementParameter", b =>
                {
                    b.HasOne("RealityProject.DataAccess.DataModels.Adds.Advertisement", null)
                        .WithMany()
                        .HasForeignKey("AdvertisementsId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("RealityProject.DataAccess.DataModels.Parameters.Parameter", null)
                        .WithMany()
                        .HasForeignKey("ParametersId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("AdvertisementPhoto", b =>
                {
                    b.HasOne("RealityProject.DataAccess.DataModels.Adds.Advertisement", null)
                        .WithMany()
                        .HasForeignKey("AdvertisementsId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("RealityProject.DataAccess.DataModels.Images.Photo", null)
                        .WithMany()
                        .HasForeignKey("GalleryId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("RealityProject.DataAccess.DataModels.Adds.Advertisement", b =>
                {
                    b.HasOne("RealityProject.DataAccess.DataModels.Images.Photo", "Photo")
                        .WithOne("MainPhoto")
                        .HasForeignKey("RealityProject.DataAccess.DataModels.Adds.Advertisement", "IdPhoto");

                    b.HasOne("RealityProject.DataAccess.DataModels.UserManagement.User", "Seller")
                        .WithMany("Advertisements")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Photo");

                    b.Navigation("Seller");
                });

            modelBuilder.Entity("RealityProject.DataAccess.DataModels.Adds.Request", b =>
                {
                    b.HasOne("RealityProject.DataAccess.DataModels.Adds.Advertisement", "Advertisement")
                        .WithMany("Requests")
                        .HasForeignKey("AdvertisementId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("RealityProject.DataAccess.DataModels.UserManagement.User", "User")
                        .WithMany("Requests")
                        .HasForeignKey("UserId");

                    b.Navigation("Advertisement");

                    b.Navigation("User");
                });

            modelBuilder.Entity("RealityProject.DataAccess.DataModels.Images.Photo", b =>
                {
                    b.HasOne("RealityProject.DataAccess.DataModels.UserManagement.User", "ProfilePicture")
                        .WithOne("ProfilePicture")
                        .HasForeignKey("RealityProject.DataAccess.DataModels.Images.Photo", "UserId");

                    b.Navigation("ProfilePicture");
                });

            modelBuilder.Entity("RealityProject.DataAccess.DataModels.UserManagement.User", b =>
                {
                    b.HasOne("RealityProject.DataAccess.DataModels.UserManagement.Role", "UserRole")
                        .WithMany("Users")
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("UserRole");
                });

            modelBuilder.Entity("RealityProject.DataAccess.DataModels.Adds.Advertisement", b =>
                {
                    b.Navigation("Requests");
                });

            modelBuilder.Entity("RealityProject.DataAccess.DataModels.Images.Photo", b =>
                {
                    b.Navigation("MainPhoto");
                });

            modelBuilder.Entity("RealityProject.DataAccess.DataModels.UserManagement.Role", b =>
                {
                    b.Navigation("Users");
                });

            modelBuilder.Entity("RealityProject.DataAccess.DataModels.UserManagement.User", b =>
                {
                    b.Navigation("Advertisements");

                    b.Navigation("ProfilePicture")
                        .IsRequired();

                    b.Navigation("Requests");
                });
#pragma warning restore 612, 618
        }
    }
}
