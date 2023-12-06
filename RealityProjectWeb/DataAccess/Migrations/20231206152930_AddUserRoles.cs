using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RealityProject.DataAccess.Migrations
{
    public partial class AddUserRoles : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_tbAdvertisementPhotos_tbAdvertisements_AdvertisementsAdvertisementId",
                table: "tbAdvertisementPhotos");

            migrationBuilder.DropForeignKey(
                name: "FK_tbAdvertisementPhotos_tbPhotos_GalleryPhotoId",
                table: "tbAdvertisementPhotos");

            migrationBuilder.DropForeignKey(
                name: "FK_tbParameterAdvertisement_tbAdvertisements_AdvertisementsAdvertisementId",
                table: "tbParameterAdvertisement");

            migrationBuilder.DropForeignKey(
                name: "FK_tbParameterAdvertisement_tbParameters_ParametersParameterId",
                table: "tbParameterAdvertisement");

            migrationBuilder.RenameColumn(
                name: "PhotoId",
                table: "tbPhotos",
                newName: "Id");

            migrationBuilder.RenameColumn(
                name: "ParameterId",
                table: "tbParameters",
                newName: "Id");

            migrationBuilder.RenameColumn(
                name: "ParametersParameterId",
                table: "tbParameterAdvertisement",
                newName: "ParametersId");

            migrationBuilder.RenameColumn(
                name: "AdvertisementsAdvertisementId",
                table: "tbParameterAdvertisement",
                newName: "AdvertisementsId");

            migrationBuilder.RenameIndex(
                name: "IX_tbParameterAdvertisement_ParametersParameterId",
                table: "tbParameterAdvertisement",
                newName: "IX_tbParameterAdvertisement_ParametersId");

            migrationBuilder.RenameColumn(
                name: "AdvertisementId",
                table: "tbAdvertisements",
                newName: "Id");

            migrationBuilder.RenameColumn(
                name: "GalleryPhotoId",
                table: "tbAdvertisementPhotos",
                newName: "GalleryId");

            migrationBuilder.RenameColumn(
                name: "AdvertisementsAdvertisementId",
                table: "tbAdvertisementPhotos",
                newName: "AdvertisementsId");

            migrationBuilder.RenameIndex(
                name: "IX_tbAdvertisementPhotos_GalleryPhotoId",
                table: "tbAdvertisementPhotos",
                newName: "IX_tbAdvertisementPhotos_GalleryId");

            migrationBuilder.CreateTable(
                name: "tbRoles",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    IsValid = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tbRoles", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "tbUser",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Username = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    FirstName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    LastName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Password = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Phone = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    IsEmailConfirmed = table.Column<bool>(type: "bit", nullable: false),
                    IsBlocked = table.Column<bool>(type: "bit", nullable: false),
                    RoleId = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tbUser", x => x.Id);
                    table.ForeignKey(
                        name: "FK_tbUser_tbRoles_RoleId",
                        column: x => x.RoleId,
                        principalTable: "tbRoles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_tbUser_RoleId",
                table: "tbUser",
                column: "RoleId");

            migrationBuilder.AddForeignKey(
                name: "FK_tbAdvertisementPhotos_tbAdvertisements_AdvertisementsId",
                table: "tbAdvertisementPhotos",
                column: "AdvertisementsId",
                principalTable: "tbAdvertisements",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_tbAdvertisementPhotos_tbPhotos_GalleryId",
                table: "tbAdvertisementPhotos",
                column: "GalleryId",
                principalTable: "tbPhotos",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_tbParameterAdvertisement_tbAdvertisements_AdvertisementsId",
                table: "tbParameterAdvertisement",
                column: "AdvertisementsId",
                principalTable: "tbAdvertisements",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_tbParameterAdvertisement_tbParameters_ParametersId",
                table: "tbParameterAdvertisement",
                column: "ParametersId",
                principalTable: "tbParameters",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_tbAdvertisementPhotos_tbAdvertisements_AdvertisementsId",
                table: "tbAdvertisementPhotos");

            migrationBuilder.DropForeignKey(
                name: "FK_tbAdvertisementPhotos_tbPhotos_GalleryId",
                table: "tbAdvertisementPhotos");

            migrationBuilder.DropForeignKey(
                name: "FK_tbParameterAdvertisement_tbAdvertisements_AdvertisementsId",
                table: "tbParameterAdvertisement");

            migrationBuilder.DropForeignKey(
                name: "FK_tbParameterAdvertisement_tbParameters_ParametersId",
                table: "tbParameterAdvertisement");

            migrationBuilder.DropTable(
                name: "tbUser");

            migrationBuilder.DropTable(
                name: "tbRoles");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "tbPhotos",
                newName: "PhotoId");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "tbParameters",
                newName: "ParameterId");

            migrationBuilder.RenameColumn(
                name: "ParametersId",
                table: "tbParameterAdvertisement",
                newName: "ParametersParameterId");

            migrationBuilder.RenameColumn(
                name: "AdvertisementsId",
                table: "tbParameterAdvertisement",
                newName: "AdvertisementsAdvertisementId");

            migrationBuilder.RenameIndex(
                name: "IX_tbParameterAdvertisement_ParametersId",
                table: "tbParameterAdvertisement",
                newName: "IX_tbParameterAdvertisement_ParametersParameterId");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "tbAdvertisements",
                newName: "AdvertisementId");

            migrationBuilder.RenameColumn(
                name: "GalleryId",
                table: "tbAdvertisementPhotos",
                newName: "GalleryPhotoId");

            migrationBuilder.RenameColumn(
                name: "AdvertisementsId",
                table: "tbAdvertisementPhotos",
                newName: "AdvertisementsAdvertisementId");

            migrationBuilder.RenameIndex(
                name: "IX_tbAdvertisementPhotos_GalleryId",
                table: "tbAdvertisementPhotos",
                newName: "IX_tbAdvertisementPhotos_GalleryPhotoId");

            migrationBuilder.AddForeignKey(
                name: "FK_tbAdvertisementPhotos_tbAdvertisements_AdvertisementsAdvertisementId",
                table: "tbAdvertisementPhotos",
                column: "AdvertisementsAdvertisementId",
                principalTable: "tbAdvertisements",
                principalColumn: "AdvertisementId",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_tbAdvertisementPhotos_tbPhotos_GalleryPhotoId",
                table: "tbAdvertisementPhotos",
                column: "GalleryPhotoId",
                principalTable: "tbPhotos",
                principalColumn: "PhotoId",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_tbParameterAdvertisement_tbAdvertisements_AdvertisementsAdvertisementId",
                table: "tbParameterAdvertisement",
                column: "AdvertisementsAdvertisementId",
                principalTable: "tbAdvertisements",
                principalColumn: "AdvertisementId",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_tbParameterAdvertisement_tbParameters_ParametersParameterId",
                table: "tbParameterAdvertisement",
                column: "ParametersParameterId",
                principalTable: "tbParameters",
                principalColumn: "ParameterId",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
