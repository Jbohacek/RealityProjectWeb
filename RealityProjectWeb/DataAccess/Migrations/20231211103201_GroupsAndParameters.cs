using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RealityProject.DataAccess.Migrations
{
    public partial class GroupsAndParameters : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Name",
                table: "tbParameters");

            migrationBuilder.AlterColumn<Guid>(
                name: "ProfilePicId",
                table: "tbUser",
                type: "uniqueidentifier",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier");

            migrationBuilder.AddColumn<Guid>(
                name: "GroupId",
                table: "tbParameters",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateTable(
                name: "tbGroupParameters",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tbGroupParameters", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_tbParameters_GroupId",
                table: "tbParameters",
                column: "GroupId");

            migrationBuilder.AddForeignKey(
                name: "FK_tbParameters_tbGroupParameters_GroupId",
                table: "tbParameters",
                column: "GroupId",
                principalTable: "tbGroupParameters",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_tbParameters_tbGroupParameters_GroupId",
                table: "tbParameters");

            migrationBuilder.DropTable(
                name: "tbGroupParameters");

            migrationBuilder.DropIndex(
                name: "IX_tbParameters_GroupId",
                table: "tbParameters");

            migrationBuilder.DropColumn(
                name: "GroupId",
                table: "tbParameters");

            migrationBuilder.AlterColumn<Guid>(
                name: "ProfilePicId",
                table: "tbUser",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"),
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier",
                oldNullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Name",
                table: "tbParameters",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }
    }
}
