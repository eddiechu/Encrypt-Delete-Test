# Really can protect from ransomware encryption?

###### Ransomware attack flow

[Campaign] -> [Infection] -> [Staging] -> [Scan] -> [Encrypt] -> [Payday]

We see many anti-virus / next generation endpoints claim ransomware protection, which can just detect and stop invasion, but CANNOT AWARE the encryption process.

Even those vendors sell high ranking, expensive, feature rich, detail EDR, heuristic detection, AI, ML and granular control, customers still got Ransomware, most of PC and servers were locked.

![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/screen40.gif)

Vendors usually advise you to turn on all block mode, make sure all computer have the endpoint software installed, keep computer patch up to date, review log regularly, follow up abnormal event, then MOST of invasion can be stopped.

How many companies in the world can make sure this?  Why can't it stop encryption after bypass invasion detection?

**Stop encryption is the last defense, which cannot be neglected.**

**Advanced penetration detection is important, but stop encryption is the last defense, which cannot be neglected.**


# Which brand can detect encryption operation?

That's why I developed this tool.  It is not to replicate found malware, not vendor test tool, no bias, no need to install, just do encrypt (in memory) - overwrite (original file) - rename (file extension), simulate the core operation of ransomware.

It is safe enough to run it on your working PC and server, let you see the fact in your environment.

I have helped people to test this after WannaCry outbreak.  Luckly, I found few brands can detect it, and one of them can stop ransomware encryption initiated from remote PC via file share and RDP as well.  I did see a real Ransomware incident, that endpoint really could stop encryption, no loss.

You can refer to the source code if you know programming or you can download the complied files.

Hope there is no more ransomware incident!  Please share this blog with friends if you found it is useful.


# This tool

This tool encrypts - overwrite - rename the files in the selected (local or network) folder and subfolder, you may create a temporary folder like C:\Encrypt-Delete-Test\, save this tool to there, then run it.  Be safe.

It tests if your endpoint can detect when encryption is happening (like base on the files change pattern), but NOT to test if your endpoint can prevent it from start.

It is great if you can share your test result with me for my record.

EncryptDelTestv4.jar
- runs on Windows and Mac OS
- requires at least Java 8, http://www.java.com
(usually java.exe or javaw.exe is a trusted software, it is more difficult for endpoint to detect)


EncryptDelTestv4.exe
- runs on Windows
- requires at least .NET Framework 4.0


EncryptDelTestv4.ps1
- runs on Windows
- requires PowerShell

| EncryptDelTestv4.jar | EncryptDelTestv4.exe | EncryptDelTestv4.ps1 | 
|---------------|---------------|---------------|
|![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/screen41.gif)|![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/screen40.gif)|![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/screen43.gif)|


# How it works

###### EncryptDelTestv4.ps1 (local drive)

| CANNOT detect | CAN detect |
|---------------|---------------|
|![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/screen43.gif)|![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/screen55.gif)|
| The tool encrypts all files, a red page is shown and all files are encrypted | The encryption operatoin is blocked, no red page is shown, few files are encrypted, but they are being restored |


#

###### EncryptDelTestv4.ps1 (remote attack)

| CAN detect |
|---------------|
|![alt text](https://raw.githubusercontent.com/eddiechu/Encrypt-Delete-Test/main/Image/screen56.gif)|
|The tool tries to encrypt files in network drive (N:\), the server the encryption operaton from remote, few files are encrypted, but they are being restored|








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
