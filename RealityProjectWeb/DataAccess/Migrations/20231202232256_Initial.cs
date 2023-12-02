using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RealityProject.DataAccess.Migrations
{
    public partial class Initial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "tbParameters",
                columns: table => new
                {
                    ParameterId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Value = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tbParameters", x => x.ParameterId);
                });

            migrationBuilder.CreateTable(
                name: "tbPhotos",
                columns: table => new
                {
                    PhotoId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    FotoName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    FotoPath = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Type = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    Size = table.Column<double>(type: "float", nullable: true),
                    AdvertisementId = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tbPhotos", x => x.PhotoId);
                });

            migrationBuilder.CreateTable(
                name: "tbAdvertisements",
                columns: table => new
                {
                    AdvertisementId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    HomeType = table.Column<int>(type: "int", nullable: false),
                    IsLuxury = table.Column<bool>(type: "bit", nullable: false),
                    InsideSize = table.Column<double>(type: "float", nullable: false),
                    OutsideSize = table.Column<double>(type: "float", nullable: true),
                    Price = table.Column<double>(type: "float", nullable: false),
                    Electricity = table.Column<int>(type: "int", nullable: false),
                    Content = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    IdPhoto = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tbAdvertisements", x => x.AdvertisementId);
                    table.ForeignKey(
                        name: "FK_tbAdvertisements_tbPhotos_IdPhoto",
                        column: x => x.IdPhoto,
                        principalTable: "tbPhotos",
                        principalColumn: "PhotoId");
                });

            migrationBuilder.CreateTable(
                name: "tbAdvertisementPhotos",
                columns: table => new
                {
                    AdvertisementsAdvertisementId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    GalleryPhotoId = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tbAdvertisementPhotos", x => new { x.AdvertisementsAdvertisementId, x.GalleryPhotoId });
                    table.ForeignKey(
                        name: "FK_tbAdvertisementPhotos_tbAdvertisements_AdvertisementsAdvertisementId",
                        column: x => x.AdvertisementsAdvertisementId,
                        principalTable: "tbAdvertisements",
                        principalColumn: "AdvertisementId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_tbAdvertisementPhotos_tbPhotos_GalleryPhotoId",
                        column: x => x.GalleryPhotoId,
                        principalTable: "tbPhotos",
                        principalColumn: "PhotoId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "tbParameterAdvertisement",
                columns: table => new
                {
                    AdvertisementsAdvertisementId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ParametersParameterId = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tbParameterAdvertisement", x => new { x.AdvertisementsAdvertisementId, x.ParametersParameterId });
                    table.ForeignKey(
                        name: "FK_tbParameterAdvertisement_tbAdvertisements_AdvertisementsAdvertisementId",
                        column: x => x.AdvertisementsAdvertisementId,
                        principalTable: "tbAdvertisements",
                        principalColumn: "AdvertisementId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_tbParameterAdvertisement_tbParameters_ParametersParameterId",
                        column: x => x.ParametersParameterId,
                        principalTable: "tbParameters",
                        principalColumn: "ParameterId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_tbAdvertisementPhotos_GalleryPhotoId",
                table: "tbAdvertisementPhotos",
                column: "GalleryPhotoId");

            migrationBuilder.CreateIndex(
                name: "IX_tbAdvertisements_IdPhoto",
                table: "tbAdvertisements",
                column: "IdPhoto",
                unique: true,
                filter: "[IdPhoto] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_tbParameterAdvertisement_ParametersParameterId",
                table: "tbParameterAdvertisement",
                column: "ParametersParameterId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "tbAdvertisementPhotos");

            migrationBuilder.DropTable(
                name: "tbParameterAdvertisement");

            migrationBuilder.DropTable(
                name: "tbAdvertisements");

            migrationBuilder.DropTable(
                name: "tbParameters");

            migrationBuilder.DropTable(
                name: "tbPhotos");
        }
    }
}
