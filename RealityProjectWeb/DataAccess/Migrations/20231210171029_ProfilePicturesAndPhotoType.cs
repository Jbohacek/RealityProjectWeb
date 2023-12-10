using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RealityProject.DataAccess.Migrations
{
    public partial class ProfilePicturesAndPhotoType : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<Guid>(
                name: "ProfilePicId",
                table: "tbUser",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AlterColumn<int>(
                name: "Type",
                table: "tbPhotos",
                type: "int",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(10)",
                oldMaxLength: 10);

            migrationBuilder.AddColumn<Guid>(
                name: "UserId",
                table: "tbPhotos",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_tbPhotos_UserId",
                table: "tbPhotos",
                column: "UserId",
                unique: true,
                filter: "[UserId] IS NOT NULL");

            migrationBuilder.AddForeignKey(
                name: "FK_tbPhotos_tbUser_UserId",
                table: "tbPhotos",
                column: "UserId",
                principalTable: "tbUser",
                principalColumn: "Id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_tbPhotos_tbUser_UserId",
                table: "tbPhotos");

            migrationBuilder.DropIndex(
                name: "IX_tbPhotos_UserId",
                table: "tbPhotos");

            migrationBuilder.DropColumn(
                name: "ProfilePicId",
                table: "tbUser");

            migrationBuilder.DropColumn(
                name: "UserId",
                table: "tbPhotos");

            migrationBuilder.AlterColumn<string>(
                name: "Type",
                table: "tbPhotos",
                type: "nvarchar(10)",
                maxLength: 10,
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int");
        }
    }
}
