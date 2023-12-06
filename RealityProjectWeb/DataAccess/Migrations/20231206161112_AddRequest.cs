using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RealityProject.DataAccess.Migrations
{
    public partial class AddRequest : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "IsValid",
                table: "tbUser",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<Guid>(
                name: "UserId",
                table: "tbAdvertisements",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateTable(
                name: "tbRequest",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    UserId = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    AdvertisementId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Content = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Phone = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tbRequest", x => x.Id);
                    table.ForeignKey(
                        name: "FK_tbRequest_tbAdvertisements_AdvertisementId",
                        column: x => x.AdvertisementId,
                        principalTable: "tbAdvertisements",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_tbRequest_tbUser_UserId",
                        column: x => x.UserId,
                        principalTable: "tbUser",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateIndex(
                name: "IX_tbAdvertisements_UserId",
                table: "tbAdvertisements",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_tbRequest_AdvertisementId",
                table: "tbRequest",
                column: "AdvertisementId");

            migrationBuilder.CreateIndex(
                name: "IX_tbRequest_UserId",
                table: "tbRequest",
                column: "UserId");

            migrationBuilder.AddForeignKey(
                name: "FK_tbAdvertisements_tbUser_UserId",
                table: "tbAdvertisements",
                column: "UserId",
                principalTable: "tbUser",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_tbAdvertisements_tbUser_UserId",
                table: "tbAdvertisements");

            migrationBuilder.DropTable(
                name: "tbRequest");

            migrationBuilder.DropIndex(
                name: "IX_tbAdvertisements_UserId",
                table: "tbAdvertisements");

            migrationBuilder.DropColumn(
                name: "IsValid",
                table: "tbUser");

            migrationBuilder.DropColumn(
                name: "UserId",
                table: "tbAdvertisements");
        }
    }
}
