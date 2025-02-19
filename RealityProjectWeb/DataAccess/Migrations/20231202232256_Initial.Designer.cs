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
    [Migration("20231202232256_Initial")]
    partial class Initial
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
                    b.Property<Guid>("AdvertisementsAdvertisementId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("ParametersParameterId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("AdvertisementsAdvertisementId", "ParametersParameterId");

                    b.HasIndex("ParametersParameterId");

                    b.ToTable("tbParameterAdvertisement", (string)null);
                });

            modelBuilder.Entity("AdvertisementPhoto", b =>
                {
                    b.Property<Guid>("AdvertisementsAdvertisementId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("GalleryPhotoId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("AdvertisementsAdvertisementId", "GalleryPhotoId");

                    b.HasIndex("GalleryPhotoId");

                    b.ToTable("tbAdvertisementPhotos", (string)null);
                });

            modelBuilder.Entity("RealityProject.DataAccess.Repos.Adds.Advertisement", b =>
                {
                    b.Property<Guid>("AdvertisementId")
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

                    b.HasKey("AdvertisementId");

                    b.HasIndex("IdPhoto")
                        .IsUnique()
                        .HasFilter("[IdPhoto] IS NOT NULL");

                    b.ToTable("tbAdvertisements");
                });

            modelBuilder.Entity("RealityProject.DataAccess.Repos.Images.Photo", b =>
                {
                    b.Property<Guid>("PhotoId")
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

                    b.Property<string>("Type")
                        .IsRequired()
                        .HasMaxLength(10)
                        .HasColumnType("nvarchar(10)");

                    b.HasKey("PhotoId");

                    b.ToTable("tbPhotos");
                });

            modelBuilder.Entity("RealityProject.DataAccess.Repos.Parameters.Parameter", b =>
                {
                    b.Property<Guid>("ParameterId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Value")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ParameterId");

                    b.ToTable("tbParameters");
                });

            modelBuilder.Entity("AdvertisementParameter", b =>
                {
                    b.HasOne("RealityProject.DataAccess.Repos.Adds.Advertisement", null)
                        .WithMany()
                        .HasForeignKey("AdvertisementsAdvertisementId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("RealityProject.DataAccess.Repos.Parameters.Parameter", null)
                        .WithMany()
                        .HasForeignKey("ParametersParameterId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("AdvertisementPhoto", b =>
                {
                    b.HasOne("RealityProject.DataAccess.Repos.Adds.Advertisement", null)
                        .WithMany()
                        .HasForeignKey("AdvertisementsAdvertisementId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("RealityProject.DataAccess.Repos.Images.Photo", null)
                        .WithMany()
                        .HasForeignKey("GalleryPhotoId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("RealityProject.DataAccess.Repos.Adds.Advertisement", b =>
                {
                    b.HasOne("RealityProject.DataAccess.Repos.Images.Photo", "Photo")
                        .WithOne("MainPhoto")
                        .HasForeignKey("RealityProject.DataAccess.Repos.Adds.Advertisement", "IdPhoto");

                    b.Navigation("Photo");
                });

            modelBuilder.Entity("RealityProject.DataAccess.Repos.Images.Photo", b =>
                {
                    b.Navigation("MainPhoto");
                });
#pragma warning restore 612, 618
        }
    }
}
