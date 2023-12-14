using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RealityProject.DataAccess.Migrations
{
    public partial class AddLocations : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<Guid>(
                name: "AddressId",
                table: "tbAdvertisements",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateTable(
                name: "tbDistrict",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Kraj = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tbDistrict", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "tbCities",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PostCode = table.Column<string>(type: "nvarchar(6)", maxLength: 6, nullable: false),
                    DistrictId = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tbCities", x => x.Id);
                    table.ForeignKey(
                        name: "FK_tbCities_tbDistrict_DistrictId",
                        column: x => x.DistrictId,
                        principalTable: "tbDistrict",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "tbLocation",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Street = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Floor = table.Column<int>(type: "int", nullable: false),
                    CityId = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tbLocation", x => x.Id);
                    table.ForeignKey(
                        name: "FK_tbLocation_tbCities_CityId",
                        column: x => x.CityId,
                        principalTable: "tbCities",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_tbAdvertisements_AddressId",
                table: "tbAdvertisements",
                column: "AddressId");

            migrationBuilder.CreateIndex(
                name: "IX_tbCities_DistrictId",
                table: "tbCities",
                column: "DistrictId");

            migrationBuilder.CreateIndex(
                name: "IX_tbLocation_CityId",
                table: "tbLocation",
                column: "CityId");

            migrationBuilder.AddForeignKey(
                name: "FK_tbAdvertisements_tbLocation_AddressId",
                table: "tbAdvertisements",
                column: "AddressId",
                principalTable: "tbLocation",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_tbAdvertisements_tbLocation_AddressId",
                table: "tbAdvertisements");

            migrationBuilder.DropTable(
                name: "tbLocation");

            migrationBuilder.DropTable(
                name: "tbCities");

            migrationBuilder.DropTable(
                name: "tbDistrict");

            migrationBuilder.DropIndex(
                name: "IX_tbAdvertisements_AddressId",
                table: "tbAdvertisements");

            migrationBuilder.DropColumn(
                name: "AddressId",
                table: "tbAdvertisements");
        }
    }
}
