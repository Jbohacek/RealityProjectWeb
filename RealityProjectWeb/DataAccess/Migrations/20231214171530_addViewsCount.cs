using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RealityProject.DataAccess.Migrations
{
    public partial class addViewsCount : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "ViewsCount",
                table: "tbAdvertisements",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ViewsCount",
                table: "tbAdvertisements");
        }
    }
}
