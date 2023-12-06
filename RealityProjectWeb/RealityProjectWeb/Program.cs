using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using RealityProject.DataAccess.Data;
using RealityProject.DataAccess.Repository;

namespace RealityProjectWeb
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.
            builder.Services.AddControllersWithViews();

            builder.Services.AddDbContext<ApplicationDbContext>(options => options.UseSqlServer(
                builder.Configuration.GetConnectionString("AspifyConnection")
            ));

            builder.Services.AddScoped<UnitOfWork>();
            builder.Services.AddSession();

            var passwordKeys = builder.Configuration.GetSection("PasswordKeys");
            DataEncryption.SetKey(passwordKeys.GetSection("Key").Value);
            DataEncryption.SetIv(passwordKeys.GetSection("Iv").Value);

            var app = builder.Build();

            

            // Configure the HTTP request pipeline.
            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();
            app.UseSession();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "areas",
                    pattern: "Admin",
                    defaults: new { Controller = "LogIn", Action = "Index", Area = "Admin"}
                );
                app.MapControllerRoute(
                    name: "default",
                    pattern: "{area=User}/{controller=Home}/{action=Index}/{id?}");
            });

            app.Run();
        }
    }
}