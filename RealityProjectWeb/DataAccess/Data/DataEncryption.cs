using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Microsoft.IdentityModel.Tokens;
using BC = BCrypt.Net.BCrypt;

namespace RealityProject.DataAccess.Data
{
    public static class DataEncryption
    {


        public static string Crypt(this string text)
        {
            return BC.HashPassword(text);
        }

        public static bool Validate(this string hash, string text)
        {
            return BC.Verify(text, hash);
        }


    }
}
