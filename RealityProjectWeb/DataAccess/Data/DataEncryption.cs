using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Microsoft.IdentityModel.Tokens;

namespace RealityProject.DataAccess.Data
{
    public static class DataEncryption
    {
        public static byte[] Key = new byte[8] ;
        public static byte[] Iv = new byte[8] ;

        public static string Crypt(this string text)
        {
            SymmetricAlgorithm algorithm = DES.Create();
            ICryptoTransform transform = algorithm.CreateEncryptor(Key, Iv);
            byte[] inputBuffer = Encoding.Unicode.GetBytes(text);
            byte[] outputBuffer = transform.TransformFinalBlock(inputBuffer, 0, inputBuffer.Length);
            return Convert.ToBase64String(outputBuffer);
        }

        public static string Decrypt(this string text)
        {
            SymmetricAlgorithm algorithm = DES.Create();
            ICryptoTransform transform = algorithm.CreateDecryptor(Key, Iv);
            byte[] inputBuffer = Convert.FromBase64String(text);
            byte[] outputBuffer = transform.TransformFinalBlock(inputBuffer, 0, inputBuffer.Length);
            return Encoding.Unicode.GetString(outputBuffer);
        }

        public static void SetKey(string key)
        {
            Key = key.Split(';').Select(x => Convert.ToByte(x)).ToArray();
        }

        public static void SetIv(string iv)
        {
            Iv = iv.Split(';').Select(x => Convert.ToByte(x)).ToArray();
        }
    }
}
