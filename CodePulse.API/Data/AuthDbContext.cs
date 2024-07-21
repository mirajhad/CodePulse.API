using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodePulse.API.Data
{
    public class AuthDbContext : IdentityDbContext
    {
        public AuthDbContext(DbContextOptions<AuthDbContext> options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            var readerRoleId = "7585ea42-d386-40fb-82b7-383a90ce3f15";
            var writerRoleId = "beae1eee-e704-4887-b576-c5c71a288e92";

            //create reader and writer role
            var roles = new List<IdentityRole>
            {
                new IdentityRole()
                {
                    Id = readerRoleId,
                    Name ="Reader",
                    NormalizedName="Reader".ToUpper(),
                    ConcurrencyStamp= readerRoleId,
                },
                new IdentityRole()
                {
                    Id = writerRoleId,
                    Name ="Writer",
                    NormalizedName="Writer".ToUpper(),
                    ConcurrencyStamp= writerRoleId,
                }
            };

            builder.Entity<IdentityRole>().HasData(roles);

            //create an Admin User
            var adminUserId = "ea74399e-c0c7-4941-b455-f8d5e5dbb690";
            var admin = new IdentityUser()
            {
                Id = adminUserId,
                UserName = "admin",
                Email = "admin@gmail.com",
                NormalizedEmail = "admin@gmail.com".ToUpper(),
                NormalizedUserName = "admin".ToUpper(),
            };

            admin.PasswordHash = new PasswordHasher<IdentityUser>().HashPassword(admin, "Admin123*");
            builder.Entity<IdentityUser>().HasData(admin);

            //give role to admin

            var adminRoles = new List<IdentityUserRole<string>>()
            {
                new()
                {
                    UserId = adminUserId,
                    RoleId = readerRoleId,
                },
                new()
                {
                    UserId = adminUserId,
                    RoleId = writerRoleId,
                }
            };
            builder.Entity<IdentityUserRole<string>>().HasData(adminRoles);
        }
    }
}
