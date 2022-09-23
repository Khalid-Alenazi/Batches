@echo off
cls
color 0E
@echo  [91m%date%--%time%[0m
@echo [30m   [0m
@echo off
REM 



:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto menuLOOP )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
title HWID Checker By B7
Set mycmdWidth=75
Set mycmdHeight=40

   


                               

   



@echo [30m   [0m
@echo [30m   [0m
@echo [30m   [0m
setlocal
call :colorEZ
cls

SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION

:menuLOOP
cls
                                 @echo  [91m%date%--%time%[0m                                  
@echo [30m   [0m
@echo [30m   [0m
@echo                                [92m  BBBBBBBBBBBBBBBBB   77777777777777777777
@echo                                 B::::::::::::::::B  7::::::::::::::::::7
@echo                                 B::::::BBBBBB:::::B 7::::::::::::::::::7
@echo                                 BB:::::B     B:::::B777777777777:::::::7
@echo                                 B::::B     B:::::B           7::::::7 
@echo                                  B::::B     B:::::B          7::::::7  
@echo                                  B::::BBBBBB:::::B          7::::::7   
@echo                                  B:::::::::::::BB          7::::::7    
@echo                                  B::::BBBBBB:::::B        7::::::7     
@echo                                  B::::B     B:::::B      7::::::7      
@echo                                  B::::B     B:::::B     7::::::7       
@echo                                  B::::B     B:::::B    7::::::7        
@echo                                 BB:::::BBBBBB::::::B   7::::::7         
@echo                                 B:::::::::::::::::B   7::::::7          
@echo                                 B::::::::::::::::B   7::::::7           
@echo                                 BBBBBBBBBBBBBBBBB   77777777            
@echo  [91m   


echo.
for /f "tokens=1,2,* delims=_ " %%A in ('"findstr /b /c:":menu_" "%~f0""') do echo.  %%B  %%C
set choice=
echo.&set /p choice= [96m Please select your choice:  ||GOTO:EOF
echo.&call:menu_%choice%

GOTO:menuLOOP

::-----------------------------------------------------------
:: menu functions follow below here
::-----------------------------------------------------------
  
:menu_1   Check HWIDs
cls
                                 @echo  [91m%date%--%time%[0m    
@echo off



@echo  [93mBIOS
@echo off 
@echo  [91m  

wmic bios get serialnumber 


@echo  [93m [0m
@echo off


@echo  [93mMOTHERBOARD
@echo off 
@echo  [91m
wmic baseboard get serialnumber

@echo  [93mChassis
@echo off
@echo  [91m
wmic systemenclosure get serialnumber

@echo  [93mCPU
@echo off 
@echo  [91m
wmic cpu get serialnumber

@echo  [93mSystem Family ID
@echo off
@echo  [91m
Reg query "HKLM\HARDWARE\DESCRIPTION\System\BIOS" /v SystemFamily

@echo  [93mSystem SKU ID
@echo off
@echo  [91m
Reg query "HKLM\HARDWARE\DESCRIPTION\System\BIOS" /v SystemSKU

@echo  [93mMachineGuid
@echo off
@echo  [91m
Reg query "HKLM\SOFTWARE\Microsoft\Cryptography" /v MachineGuid

@echo  [93mPropertyGuid
@echo off
@echo  [91m
Reg query "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e965-e325-11ce-bfc1-08002be10318}\Configuration\Variables\BusDeviceDesc" /v PropertyGuid

@echo  [93mHwProfileGuid
@echo off
@echo  [91m
Reg query "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware Profiles\0001" /v HwProfileGuid


@echo  [93mHDD/SSD
@echo off 
@echo  [91m
wmic diskdrive get serialnumber

@echo  [93mVOLUME
@echo off 
@echo  [91m
vol c:
vol d:
vol e:
vol f:
echo.

@echo  [93mRAM
@echo off 
@echo  [91m
wmic memorychip get serialnumber


@echo  [93mWINDOWS PRODUCT ID
@echo off 
@echo  [91m
wmic os get serialnumber

@echo  [93mUser Name[0m
@echo off 
@echo  [91m
@echo %username%
@echo [30m   [0m

@echo  [93mComputerName[0m
@echo off 
@echo  [91m
echo %computername%
@echo [30m   [0m

@echo  [93mComputer Full Name[0m
@echo off 
@echo  [91m
wmic computersystem get name
@echo [30m   [0m

@echo  [93mMAC ADRESSES
@echo off 
@echo  [91m
getmac
echo.
@echo off

@echo  [93m [0m


pause
cls
GOTO:EOF



:menu_2   Clean Traces

cls

cls

echo [92m------------------------
echo [92m   Clean Traces 
echo [92m------------------------

echo [96m


pause

taskkill /f /im epicgameslauncher.exe
taskkill /f /im FortniteClient-Win64-Shipping_EAC.exe
taskkill /f /im FortniteClient-Win64-Shipping.exe
taskkill /f /im FortniteClient-Win64-Shipping_BE.exe
taskkill /f /im FortniteLauncher.exe
taskkill /f /im EpicGamesLauncher.exe
taskkill /f /im FortniteClient-Win64-Shipping.exe
taskkill /f /im EpicGamesLauncher.exe

del "C:\Windows\TEMP\206F3FDC-B1A8-4FD6-BDB8-6CFE76122873",
del "C:\ProgramData\Microsoft\Windows\WER\Temp\WER95DF.tmp.mdmp",
del "C:\Windows.old\Users\All Users\Microsoft\Windows\WER\Temp\WER95DF.tmp.mdmp",
del "C:\Users\All Users\Microsoft\Windows\WER\Temp\WER95DF.tmp.mdmp",
del "C:\Windows\CbsTemp\30780525_1668355464",
del "C:\Windows\TEMP\6E04EF32-0387-48B1-B812-AC2BBA90A8D0",
del "C:\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Cookies",
del "C:\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FORTNI~1.LOG",
del "C:\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\siphon-1024x512-4cc0ff3407053325e353c4aea55fb30316e6ecf6.jpg",
del "C:\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\Fortnite%2Ffortnite-game%2Ftournaments%2F11BR_Arena_ModeTiles_Squad_ModeTile-1024x512-c543a187ce733be5ee9f6d17bfb74fb1f2e15f4a.jpg",
del "C:\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\Fortnite%2Ffortnite-game%2Ftournaments%2F11BR_Arena_ModeTiles_Solo_ModeTile-1024x512-6cee09d7bcf82ce3f32ca7c77ca04948121ce617.jpg",
del "C:\Users\%username%\AppData\Local\Microsoft\Windows\WebCache\V0100024.log",
del "C:\Users\All Users\Microsoft\Windows\WER\Temp\WER5CC2.tmp.xml",
del "C:\Windows.old\Users\All Users\Microsoft\Windows\WER\Temp\WER6D21.tmp.WERInternalMetadata.xml",
del "C:\Users\%username%\AppData\Local\Temp\ecache.bin",
del "C:\Users\%username%\AppData\Local\CrashDumps\BACKGR~2.DMP",
del "C:\Windows\prefetch\ATTRIB.EXE-58A07CAF.pf",
del "C:\Windows\prefetch\AgRobust.db",
del "C:\Users\%username%\AppData\Local\Microsoft\Feeds Cache",
del "C:\Windows\prefetch\CEPHTMLENGINE.EXE-E15640BA.pf",
del "C:\Windows\prefetch\CMD.EXE-0BD30981.pf",
del "C:\Windows\prefetch\CLIPUP.EXE-4C5C7B66.pf",
del "C:\Windows\prefetch\D3D9TEST.EXE-1B86F3FC.pf",
del "C:\Windows\prefetch\DISCORD.EXE-6BEBC47C.pf",
del "C:\Windows\prefetch\EPICGAMESLAUNCHER.EXE-FAB85FF0.pf",
del "C:\Windows\prefetch\EPICGAMESLAUNCHER.EXE-018FC121.pf",
del "C:\Windows\prefetch\GET-GRAPHICS-OFFSETS64.EXE-2BCB2EA4.pf",
del "C:\Windows\prefetch\GET-GRAPHICS-OFFSETS32.EXE-D4C865E3.pf",
del "C:\Windows\prefetch\OBS64.EXE-2B6570C7.pf",
del "C:\Windows\prefetch\OBS-FFMPEG-MUX.EXE-1C01271A.pf",
del "C:\Windows\prefetch\OBS-FFMPEG-MUX.EXE-1C01271A.pf",
cd C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\
cd D:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\
cd E:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\
cd F:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\
del /f /s /q "C:\Users\%username%\Desktop\test\*.*"
@del /s /f /a:h /a:a /q "C:\Users\All Users\NVIDIA\*.*"
@del /s /f /a:h /a:a /q "C:\ProgramData\NVIDIA\*.*"
@del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Logs\*.*"
@del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Cache\*.*"
@del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\*.*"
@del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\*.*"
@del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent\*.*"
@del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\lockfile"
@del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\BrowserMetrics\*.*"
@del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Config\CrashReportClient\*.*"
@del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Local\FortniteGame\Saved\Logs\*.*"
@del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\*.*"
@del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\*.*"
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\UnrealEngine\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Logs\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\GPUCache\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Demos\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Recovery\ntuser.sys\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\Public\Libraries\collection.dat\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\MSOCache\{71230000-00E2-0000-1000-00000000}\Setup.dat\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\WebCache\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Feeds\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\NetworksCache\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\Rules\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\History\History.IE5\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Speech Graphics\Carnival\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\WER\Temp\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCache\Content.IE5\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCookies\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*.*" >nul 2>&1
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\UnrealEngine\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Logs\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\GPUCache\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\*.*
del /f /s /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\*.*
del /f /s /q "%systemdrive%\Recovery\ntuser.sys\*.*
del /f /s /q "%systemdrive%\Users\Public\Libraries\collection.dat\*.*
del /f /s /q "%systemdrive%\MSOCache\{71230000-00E2-0000-1000-00000000}\Setup.dat\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\WebCache\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Feeds\*.*"
del /f /s /q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\NetworksCache\*.*
del /f /s /q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\Rules\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\History\History.IE5\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\Speech Graphics\Carnival\*.*
del /f /s /q "%systemdrive%\ProgramData\Microsoft\Windows\WER\Temp\*.*
del /f /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCache\Content.IE5\*.*
del /f /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCookies\*.*
del /f /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*.*
del /f /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*.*
del /s /f /q %systemdrive%\Windows\Public\Libraries\*.*
del /s /f /q %systemdrive%\Windows\Prefetch\*.*
del /f /s /q %systemdrive%\Intel\*.*"
del /f /s /q %systemdrive%\\desktop.ini\*.*"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\UnrealEngine"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Logs"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\GPUCache"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient"
rmdir /s /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud"
rmdir /s /q "%systemdrive%\Recovery\ntuser.sys"
rmdir /s /q "%systemdrive%\Users\Public\Libraries\collection.dat"
rmdir /s /q "%systemdrive%\MSOCache\{71230000-00E2-0000-1000-00000000}\Setup.dat"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\WebCache"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Feeds"
rmdir /s /q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\NetworksCache"
rmdir /s /q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\Rules"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\History\History.IE5"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Speech Graphics\Carnival"
rmdir /s /q "%systemdrive%\ProgramData\Microsoft\Windows\WER\Temp"
rmdir /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCache\Content.IE5"
rmdir /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCookies"
rmdir /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData"
rmdir /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content"
rmdir /s /q "%systemdrive%\Windows\Public\Libraries"
rmdir /s /q "%systemdrive%\Windows\Prefetch"
rmdir /s /q "%systemdrive%\Intel"
rmdir /s /q "%systemdrive%\desktop.ini"
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCache\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.dat\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.jfm\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\Common Files\BattlEye\BEDaisy.sys\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\Videos\Captures\desktop.ini\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AC\AppCache\YVV2MEXU\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AC\INetCache\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\AC\INetCookies\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\AC\Microsoft\CryptnetUrlCache\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\AC\INetHistory\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\TempState\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.dat\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Internet Explorer\CacheStorage\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\AMD\DxCache\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\AMD\CNext\CCCSlim\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\GPUCache\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\XboxLive\NSALCache\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\PlaceholderTileLogoFolder\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\LocalLow\Microsoft\CryptnetUrlCache\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\WebCache\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Themes\CachedFiles\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\ServiceProfiles\LocalService\AppData\Local\FontCache\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\CloudStore\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\Prefetch\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Diagnosis\EventStore.db-wal\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\perfc009.dat\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\perfh009.dat\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\INF\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\PerfStringBackup.TMP\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\PerfStringBackup.INI\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\ntuser.dat.LOG2\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\Settings\settings.dat.LOG1\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\wbem\Performance\WmiApRpl.ini\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\TEMP\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\SoftwareDistribution\DataStore\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\WDI\LogFiles\StartupInfo\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Logs\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\State\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\SysWOW64\Gms.log\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\spp\store\2.0\cache\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\USOShared\Logs\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.ZuneVideo_8wekyb3d8bbwe\LocalState\Database\anonymous\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\WER\ERC\*.*
del /s /q /f /a ".\desktop.ini" 
del /s /ah desktop.ini.
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\SettingSync\remotemetastore\v1\edb.log\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\SettingSync\metastore\edb.log\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\Logs\CBS\CBS.log\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Comms\Unistore\data\3\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Comms\Unistore\data\temp\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AppData\User\Default\Indexed DB\edb.log\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\SettingSync\metastore\meta.edb\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations\b05132b02959bc64.automaticDestinations-ms\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\appcompat\Programs\Amcache.hve\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\LogFiles\WMI\RtBackup\EtwRTGraphicsPerfMonitorSession.etl\*.*
del /f /s /q "@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\*.*"
rmdir /s /q "@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame"  
@RD /S /Q "%localappdata%\FortniteGame"
@RD /S /Q "%localappdata%\EpicGamesLauncher"
@RD /S /Q "%localappdata%\UnrealEngine"
@RD /S /Q "%localappdata%\UnrealEngineLauncher"
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\MicrosoftEdge\User\Default\Recovery\Active\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!002\MicrosoftEdge\User\Default\AppCache\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent\Autom\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\rescache\_merged\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\ntuser.dat.LOG1\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\ntuser.dat.LOG2\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\OneDrive\settings\Personal\logUploaderSettings_temp.ini\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\OneDrive\settings\Personal\logUploaderSettings.ini\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\sru\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\OneDrive\logs\Common\DeviceHealthSummaryConfiguration.ini\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.dat\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\config\systemprofile\AppData\Local\Microsoft\XboxLive\AuthStateCache.dat\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\config\BBI.LOG1\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\config\BBI.LOG2\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\config\DEFAULT.LOG2\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\Logs\MoSetup\UpdateAgent.log\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\SoftwareDistribution\PostRebootEventCache.V2\{323558A6-0300-4C3E-97A0-EDEDFEB96B00}.bin\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\TempState\CortanaUnifiedTileModelCache.dat\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\SettingSync\metastore\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AC\INetCache\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AppData\Indexed DB\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\LogFiles\WMI\RtBackup\EtwRTGraphicsPerfMonitorSession.etl\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\SoftwareDistribution\DataStore\Logs\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\Logs\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Comms\Unistore\data\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Comms\UnistoreDB\USS.jtx\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Feeds\*.*" >nul 2>&1\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\AppRepository\Packages\Microsoft.XboxGameOverlay_1.42.4001.0_x64__8wekyb3d8bbwe\ActivationStore.dat\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.SkypeApp_kzf8qxf38zg5c\LocalState\DiagOutputDir\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\WebCache\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AppData\Indexed DB\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\ServiceState\EventLog\Data\lastalive0.dat\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\UsrClass.dat.LOG2\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\UsrClass.dat.LOG1\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\Safety\edge\remote\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\WindowsUpdate.log\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\SoftwareDistribution\DataStore\DataStore.edb\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\SoftwareDistribution\DataStore\Logs\edb.log\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\Safety\edge\remote\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\Settings\settings.dat.LOG1\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\SoftwareDistribution\DataStore\Logs\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\config\DEFAULT.LOG2\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\config\SYSTEM.LOG2\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\UsrClass.dat.LOG1\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\OneDrive\logs\Common\DeviceHealthSummaryConfiguration.ini\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\appcompat\appraiser\AltData\Appraiser_Data.ini\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\Logs\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\System Volume Information\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\State\dosvcState.dat.LOG1\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\appcompat\Programs\Amcache.hve.LOG1\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\ClipSVC\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\CloudStore\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Program Files\WindowsApps\Microsoft.LanguageExperiencePacken-GB_17763.9.22.0_neutral__8wekyb3d8bbwe\Windows\System32\driverstore\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\Logs\CBS\CBS.log\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\History\History.IE5\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\OneDrive\logs\Common\DeviceHealthSummaryConfiguration.ini\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\Logs\MoSetup\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AppData\Indexed DB\edb.log\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AC\INetCache\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\Common Files\BattlEye\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\AMD\DxCache\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\AC\INetCookies\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\config\BBI.LOG2\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\UsrClass.dat.LOG1\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\LogFiles\WMI\LwtNetLog.etl\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\ntuser.dat.LOG1\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\Notepad++\backup\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\temp\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\INF\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\ProgramData\Microsoft\Windows\WER\Temp\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\Shared Files\*.*
rmdir /s /q "%systemdrive%\ProgramData\Microsoft\Windows\WER\Temp"
rmdir /s /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\Shared Files"
rmdir /s /q "%systemdrive%\Windows\temp"
rmdir /s /q "%systemdrive%\Windows\Logs"
rmdir /s /q "%systemdrive%\Windows\SoftwareDistribution\DataStore\Logs"
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\LocalCache\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\AC\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Packages\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\LocalState\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\config\BBI.LOG2\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\OneDrive\logs\*.*
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\TempState"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Roaming\EasyAntiCheat"
@del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.sys\*.*
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\GPUCache"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe\LocalCache"
rmdir /s /q "%systemdrive%\Program Files (x86)\Common Files\BattlEye"
@del /s /f /a:h /a:a /q "%systemdrive%\Users%username%\AppData\Local\Microsoft\OneDrive\settings\Personal\logUploaderSettings_temp.ini\*.*
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\OneDrive\settings\Personal"
rmdir /s /q "%systemdrive%\Windows\Logs"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\9f92640e32874a76bb46156d11ae5fcf\"
rmdir /s /q "%systemdrive%\ProgramData\AMD\PPC\apprecord.csv\"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AppData\Indexed DB"
rmdir /s /q "%systemdrive%\ProgramData\Microsoft\Diagnosis\EventStore.db-wal"
rmdir /s /q "%systemdrive%\ProgramData\Microsoft\Diagnosis\DownloadedSettings"
rmdir /s /q "%systemdrive%\ProgramData\Microsoft\Diagnosis\EventStore.db-wal"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\AW1C2HQS\"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Temp\VSRemoteControl\efe1e93f8bdd406aa6f0a42171c129a4"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Temp\VSRemoteControl\282fb338dbd04a7fbe725354ebc71bdf"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Temp\VSRemoteControl\efe1e93f8bdd406aa6f0a42171c129a4"
@del /s /f /q "%systemdrive%\Users\%username%\AppData\Local\AMD\DxCache\aa997381d1f6ca216f40b98a2d90cb44070036078e091a27.bin"
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\LogFiles\WMI\RtBackup" >nul 2>&1
rmdir /s /q "%systemdrive%\Windows\System32\LogFiles\WMI\RtBackup"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\9f92640e32874a76bb46156d11ae5fcf\"
rmdir /s /q "%systemdrive%\ProgramData\AMD\PPC\apprecord.csv\"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AppData\Indexed DB"
rmdir /s /q "%systemdrive%\ProgramData\Microsoft\Diagnosis\EventStore.db-wal"
rmdir /s /q "%systemdrive%\ProgramData\Microsoft\Diagnosis\DownloadedSettings"
rmdir /s /q "%systemdrive%\ProgramData\Microsoft\Diagnosis\EventStore.db-wal"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\AW1C2HQS\"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Temp\VSRemoteControl\efe1e93f8bdd406aa6f0a42171c129a4"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Temp\VSRemoteControl\282fb338dbd04a7fbe725354ebc71bdf"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Temp\VSRemoteControl\efe1e93f8bdd406aa6f0a42171c129a4"
@del /s /f /q "%systemdrive%\Users\Outbuilt\AppData\Local\AMD\DxCache\aa997381d1f6ca216f40b98a2d90cb44070036078e091a27.bin"
@del /s /f /a:h /a:a /q "%systemdrive%\Windows\System32\LogFiles\WMI\RtBackup" >nul 2>&1
rmdir /s /q "%systemdrive%\Windows\System32\LogFiles\WMI\RtBackup"
rmdir /s /q "%systemdrive%\Windows\SoftwareDistribution\PostRebootEventCache.V2"
rmdir /s /q "%systemdrive%\Windows\INF"
reg delete "HKEY_LOCAL_MACHINE\Software\Epic Games" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f
reg delete "HKEY_LOCAL_MACHINE\Software\Epic Games" /f
rd /q /s %systemdrive%\$Recycle.Bin
rd /q /s d:\$Recycle.Bin
rd /q /s e:\$Recycle.Bin
rd /q /s f:\$Recycle.Bin
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Temp"
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\Temp\*.*
@del /s /f /a:h /a:a /q "%systemdrive%\Users\%username%\AppData\Local\Temp\*.*" >nul 2>&1
@del /s /f /a:h /a:a /q "%systemdrive%\Program Files (x86)\Common Files\BattlEye\*.*
del /f /s /q "C:\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\Manifest.sav\*.*"
del /f /s /q "C:\MSOCache\*.*"
del /f /s /q "C:\Users\Public\*.*"
del /f /s /q "C:\Recovery\*.*"
del /f /s /q "C:\Amd\*.*"
del /f /s /q "C:\Intel\*.*"
del /f /s /q "C:\Users\Public\*.*"
del /f /s /q "C:\MSOCache\*.*"
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\*.*
del /f /s /q "%systemdrive%\Recovery\ntuser.sys\*.*
del /f /s /q "%systemdrive%\Users\Public\Libraries\collection.dat\*.*
del /f /s /q "%systemdrive%\MSOCache\{71230000-00E2-0000-1000-00000000}\Setup.dat\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\WebCache\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Feeds\*.*"
del /f /s /q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\NetworksCache\*.*
del /f /s /q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\Rules\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\History\History.IE5\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\Speech Graphics\Carnival\*.*
del /f /s /q "%systemdrive%\ProgramData\Microsoft\Windows\WER\Temp\*.*
del /f /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCache\Content.IE5\*.*
del /f /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCookies\*.*
del /f /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*.*
del /f /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*.*
del /s /f /q %systemdrive%\Windows\Public\Libraries\*.*
del /s /f /q %systemdrive%\Windows\Prefetch\*.*
del /f /s /q %systemdrive%\Intel\*.*"
del /f /s /q %systemdrive%\\desktop.ini\*.*"
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\UnrealEngine\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Logs\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\GPUCache\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient\*.*
del /f /s /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS\*.*
del /f /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud\*.*
del /f /s /q "C:\Users\%username%\AppData\Local\Microsoft\Feeds\*.*"
del /f /s /q "C:\Users\%username%\AppData\Local\FortniteGame\*.*"
RD /s /q "C:\Users\%Username%\AppData\Local\BattlEye"
RD /s /q "C:\Users\%Username%\AppData\Local\CEF"
RD /s /q "C:\Users\%Username%\AppData\Local\ConnectedDevicesPlatform"
RD /s /q "C:\Users\%Username%\AppData\Local\Comms"
RD /s /q "C:\Users\%Username%\AppData\Local\UnrealEngine"
RD /s /q "C:\Users\%Username%\AppData\Local\UnrealEngineLauncher"
RD /s /q "C:\Users\%Username%\AppData\Local\FortniteGame"
RD /s /q "C:\Users\%Username%\AppData\Local\Microsoft\Feeds"
RD /s /q "C:\Users\%Username%\AppData\Local\Publishers"
RD /s /q "C:\Users\%Username%\AppData\Local\Programs\Common"
RD /s /q "C:\Users\%Username%\AppData\Roaming\EasyAntiCheat"
rmdir /s /q "C:\Users\%username%\AppData\Local\FortniteGame" 
rmdir /s /q "C:\Users\Public\Libraries" 
rmdir /s /q "C:\MSOCache" 
rmdir /s /q "C:\Users\Public"
rmdir /s /q "C:\Intel"
rmdir /s /q "C:\Recovery"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\UnrealEngine"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\Logs"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Service Worker\CacheStorage"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\GPUCache"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Config\WindowsClient"
rmdir /s /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\LMS"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\FortniteGame\Saved\Cloud"
rmdir /s /q "%systemdrive%\Recovery\ntuser.sys"
rmdir /s /q "%systemdrive%\Users\Public\Libraries\collection.dat"
rmdir /s /q "%systemdrive%\MSOCache\{71230000-00E2-0000-1000-00000000}\Setup.dat"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\WebCache"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Feeds"
rmdir /s /q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\NetworksCache"
rmdir /s /q "%systemdrive%\ProgramData\Microsoft\DataMart\PaidWiFi\Rules"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Microsoft\Windows\History\History.IE5"
rmdir /s /q "%systemdrive%\Users\%username%\AppData\Local\Speech Graphics\Carnival"
rmdir /s /q "%systemdrive%\ProgramData\Microsoft\Windows\WER\Temp"
rmdir /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCache\Content.IE5"
rmdir /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\INetCookies"
rmdir /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData"
rmdir /s /q "%systemdrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content"
rmdir /s /q "%systemdrive%\Windows\Public\Libraries"
rmdir /s /q "%systemdrive%\Windows\Prefetch"
rmdir /s /q "%systemdrive%\Intel"
rmdir /s /q "%systemdrive%\desktop.ini"
rmdir /s /q "%systemdrive%\ProgramData\Microsoft\Windows\WER\Temp"
rmdir /s /q "%systemdrive%\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\Shared Files"
rmdir /s /q "%systemdrive%\Windows\temp"
rmdir /s /q "%systemdrive%\Windows\Logs"
rmdir /s /q "%systemdrive%\Windows\SoftwareDistribution\DataStore\Logs"
echo 1
del "C:\Windows\TEMP\206F3FDC-B1A8-4FD6-BDB8-6CFE76122873",
del "C:\ProgramData\Microsoft\Windows\WER\Temp\WER95DF.tmp.mdmp",
del "C:\Windows.old\Users\All Users\Microsoft\Windows\WER\Temp\WER95DF.tmp.mdmp",
del "C:\Users\All Users\Microsoft\Windows\WER\Temp\WER95DF.tmp.mdmp",
del "C:\Windows\CbsTemp\30780525_1668355464",
del "C:\Windows\TEMP\6E04EF32-0387-48B1-B812-AC2BBA90A8D0",
del "C:\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Cookies",
del "C:\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FORTNI~1.LOG",
del "C:\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\siphon-1024x512-4cc0ff3407053325e353c4aea55fb30316e6ecf6.jpg",
del "C:\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\Fortnite%2Ffortnite-game%2Ftournaments%2F11BR_Arena_ModeTiles_Squad_ModeTile-1024x512-c543a187ce733be5ee9f6d17bfb74fb1f2e15f4a.jpg",
del "C:\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\Fortnite%2Ffortnite-game%2Ftournaments%2F11BR_Arena_ModeTiles_Solo_ModeTile-1024x512-6cee09d7bcf82ce3f32ca7c77ca04948121ce617.jpg",
del "C:\Users\%username%\AppData\Local\Microsoft\Windows\WebCache\V0100024.log",
del "C:\Users\All Users\Microsoft\Windows\WER\Temp\WER5CC2.tmp.xml",
del "C:\Windows.old\Users\All Users\Microsoft\Windows\WER\Temp\WER6D21.tmp.WERInternalMetadata.xml",
del "C:\Users\%username%\AppData\Local\Temp\ecache.bin",
del "C:\Users\%username%\AppData\Local\CrashDumps\BACKGR~2.DMP",
del "C:\Windows\prefetch\ATTRIB.EXE-58A07CAF.pf",
del "C:\Windows\prefetch\AgRobust.db",
del "C:\Users\%username%\AppData\Local\Microsoft\Feeds Cache",
del "C:\Windows\prefetch\CEPHTMLENGINE.EXE-E15640BA.pf",
del "C:\Windows\prefetch\CMD.EXE-0BD30981.pf",
del "C:\Windows\prefetch\CLIPUP.EXE-4C5C7B66.pf",
del "C:\Windows\prefetch\D3D9TEST.EXE-1B86F3FC.pf",
del "C:\Windows\prefetch\DISCORD.EXE-6BEBC47C.pf",
del "C:\Windows\prefetch\EPICGAMESLAUNCHER.EXE-FAB85FF0.pf",
del "C:\Windows\prefetch\EPICGAMESLAUNCHER.EXE-018FC121.pf",
del "C:\Windows\prefetch\GET-GRAPHICS-OFFSETS64.EXE-2BCB2EA4.pf",
del "C:\Windows\prefetch\GET-GRAPHICS-OFFSETS32.EXE-D4C865E3.pf",
del "C:\Windows\prefetch\OBS64.EXE-2B6570C7.pf",
del "C:\Windows\prefetch\OBS-FFMPEG-MUX.EXE-1C01271A.pf",
del "C:\Windows\prefetch\OBS-FFMPEG-MUX.EXE-1C01271A.pf",
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardManufacturer /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardProduct /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardVersion /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BIOSVersion /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemFamily /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemManufacturer /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemProductName /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemSKU /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemVersion /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemProductName /t REG_SZ /d opensource-%random% /f

pause
cls
GOTO:EOF


:colorEZ
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
  
  
  pause
cls
GOTO:EOF

  
  
  



:menu_3   Apps running in Background
SetLocal EnableDelayedExpansion
@echo [92m
TASKLIST /FI "USERNAME ne NT AUTHORITY\SYSTEM" /FI "STATUS eq running"
@echo.
set /p Appname=[90mEnter the name off app that you want to terminate Without * exe * :[92m
@echo [93m  

taskkill /IM %Appname%.exe /F




if %ERRORLEVEL% EQU 0 (cls)
if %ERRORLEVEL% EQU 0 (echo [92m  %appname% Has Terminated Successfully)
if %ERRORLEVEL% EQU 0 (echo [92m  %appname% Has Terminated Successfully)
if %ERRORLEVEL% EQU 0 (echo [92m  %appname% Has Terminated Successfully)
if %ERRORLEVEL% EQU 0 (echo [92m  %appname% Has Terminated Successfully)
@echo [90m
pause
if %ERRORLEVEL% EQU 0 (cls)
if %ERRORLEVEL% EQU 0 (GOTO :menuLOOP)
if %ERRORLEVEL% EQU 1 (echo [91m Please Enter a Correct App Name * Without exe *)

set /p Appname=[90mEnter the name off app that you want to terminate Without * exe * :[92m
@echo [93m  

taskkill /IM %Appname%.exe /F




if %ERRORLEVEL% EQU 0 (cls)
if %ERRORLEVEL% EQU 0 (echo [92m  %appname% Has Terminated Successfully)
if %ERRORLEVEL% EQU 0 (echo [92m  %appname% Has Terminated Successfully)
if %ERRORLEVEL% EQU 0 (echo [92m  %appname% Has Terminated Successfully)
if %ERRORLEVEL% EQU 0 (echo [92m  %appname% Has Terminated Successfully)
@echo [90m
pause
if %ERRORLEVEL% EQU 0 (cls)
if %ERRORLEVEL% EQU 0 (GOTO :menuLOOP)
if %ERRORLEVEL% EQU 1 (echo [91m Please Enter a Correct App Name * Without exe *)

set /p Appname=[90mEnter the name off app that you want to terminate Without * exe * :[92m
@echo [93m  

taskkill /IM %Appname%.exe /F




if %ERRORLEVEL% EQU 0 (cls)
if %ERRORLEVEL% EQU 0 (echo [92m  %appname% Has Terminated Successfully)
if %ERRORLEVEL% EQU 0 (echo [92m  %appname% Has Terminated Successfully)
if %ERRORLEVEL% EQU 0 (echo [92m  %appname% Has Terminated Successfully)
if %ERRORLEVEL% EQU 0 (echo [92m  %appname% Has Terminated Successfully)
@echo [90m
pause
if %ERRORLEVEL% EQU 0 (cls)
if %ERRORLEVEL% EQU 0 (GOTO :menuLOOP)
if %ERRORLEVEL% EQU 1 (echo [91m Please Enter a Correct App Name * Without exe *)








pause

:menu_4   Change  Mac Address
cls

@echo  [93m NetworkAddress
@echo off
@echo  [96m
getmac
@echo.


@echo  [90m


set /p menu="Do You Want To Generate a New MacAddress ? (Y/N): "

if %menu%==Y goto Yes1
if %menu%==y goto Yes1
if %menu%==N goto No1
if %menu%==n goto No1

:Yes1

@echo Your old Network Address Is : 
getmac

@echo.
@ECHO OFF &SET /A RLINE=1 &SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
FOR /F "tokens=3*" %%I IN ('REG QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards" /S^|FINDSTR /I /L "REG_SZ"') DO (
SET /A RLINE+=1 &SET /A PARITY=!RLINE!^%%2
IF !PARITY! EQU 0 (SET "ADAPTERGUID=%%I") ELSE (
SET "ADAPTERNAME=%%I %%J"
FOR /F %%A IN ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}" /F "!ADAPTERGUID!" /D /E /S ^|FINDSTR /I /L /V "Linkage"^|FINDSTR /I /L "\\Class\\"') DO SET "REGPATH=%%A"
CLS &echo    [96m    Change MAC script by B7 &echo. &echo     RegPath = !REGPATH!  &echo     GUID = !ADAPTERGUID!  &echo     Adapter name = !ADAPTERNAME!
REG QUERY "!REGPATH!" /V "NetworkAddress" 2>&1 |FINDSTR /I /L "NetworkAddress"
SET "CHANGEMAC=" &SET "RESETMAC="
echo. &echo  Enter MAC address for this adapter [0 to reset it] or press [Enter] to skip * 12 Digits * Ex 1A-2B-3C-4D-5D-6E: &SET /P "CHANGEMAC="
IF "!CHANGEMAC!"=="0" (SET "RESETMAC=Y" &SET "CHANGEMAC=") ELSE SET "RESETMAC="
IF DEFINED CHANGEMAC SET "CHANGEMAC=!CHANGEMAC: =!" &FOR %%I IN (: ^< ^> { } [ ] - ^( ^) .) DO SET "CHANGEMAC=!CHANGEMAC:%%I=!"
IF DEFINED CHANGEMAC REG ADD "!REGPATH!" /F /V NetworkAddress /T REG_SZ /D !CHANGEMAC! >nul 2>&1
IF DEFINED RESETMAC REG DELETE "!REGPATH!" /F /V NetworkAddress >nul 2>&1
))
IF DEFINED CHANGEMAC FOR /F "tokens=2,4*" %%I IN ('netsh interface show interface^|FINDSTR /I /L "Enabled"') DO (
netsh interface set interface %%J DISABLED
netsh interface set interface %%J ENABLED
)
pause
@echo.
timeout /t 8 /nobreak

@echo Your New Mac Address is 
@echo.

getmac
pause
cls
goto menuLOOP
:No1
  
getmac
 @pause
 cls
goto menuLOOP 


)


:menu_5   Change Windows Product ID

cls

@echo off
Setlocal EnableDelayedExpansion
:: First Generator ----------------------------------
set AlphanumericWin=ABCDEF0123456789


set /a TestlngthWin= 5 
:Top_G_Win

:: replace 62 with the amount of letters in the Dictionary

set /a RndWin=%random% %% 16-0
if %RndWin% gtr 16 goto Top_G_Win


set WinGen=%WinGen%!AlphanumericWin:~%RndWin%%,1!

set /a LengthWin=%lengthWin% +1

if %lengthWin% lss %TestlngthWin% goto Top_G_Win


::Secound Generator ------------------------------------


@echo off
Setlocal EnableDelayedExpansion

set AlphanumericWin1=ABCDEF0123456789


set /a TestlngthWin1= 5
:Top_G_Win1

:: replace 62 with the amount of letters in the Dictionary

set /a RndWin1=%random% %% 16-0
if %RndWin1% gtr 16 goto Top_G_Win1


set WinGen1=%WinGen1%!AlphanumericWin1:~%RndWin1%%,1!

set /a LengthWin1=%lengthWin1% +1

if %lengthWin1% lss %TestlngthWin1% goto Top_G_Win1



::Third Generator ------------------------------------


@echo off
Setlocal EnableDelayedExpansion

set AlphanumericWin2=ABCDEF0123456789


set /a TestlngthWin2= 5
:Top_G_Win2

:: replace 62 with the amount of letters in the Dictionary

set /a RndWin2=%random% %% 16-0
if %RndWin2% gtr 16 goto Top_G_Win2


set WinGen2=%WinGen2%!AlphanumericWin2:~%RndWin2%%,1!

set /a LengthWin2=%lengthWin2% +1

if %lengthWin2% lss %TestlngthWin2% goto Top_G_Win2






::Forth Generator ------------------------------------


@echo off
Setlocal EnableDelayedExpansion

set AlphanumericWin3=ABCDEF0123456789


set /a TestlngthWin3= 5
:Top_G_Win3

:: replace 62 with the amount of letters in the Dictionary

set /a RndWin3=%random% %% 16-0
if %RndWin3% gtr 16 goto Top_G_Win3


set WinGen3=%WinGen3%!AlphanumericWin3:~%RndWin3%%,1!

set /a LengthWin3=%lengthWin3% +1

if %lengthWin3% lss %TestlngthWin3% goto Top_G_Win3





::Starting Commands



@echo  [93mWINDOWS PRODUCT ID
@echo off 
@echo  [91m
wmic os get serialnumber
echo.
@pause
echo [96m
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductId /d %WinGen3%-%WinGen2%-%WinGen1%-%WinGen%
echo.
echo.
@echo Your new Product ID is :
@echo.

wmic os get serialnumber

@pause
goto menuLOOP



:menu_6   Change HardDisk Volume ID
cls
@echo off
Setlocal EnableDelayedExpansion

:: "Set Alphanumeric=" you can define the Dictionary


set Alphanumeric8=ABCDEF0123456789


set /a Testlngth8= 4 
:Top_G_8

:: replace 62 with the amount of letters in the Dictionary

set /a Rnd8=%random% %% 16-0
if %Rnd8% gtr 16 goto Top_G_8


set Output8=%Output8%!Alphanumeric8:~%Rnd8%,1!

set /a Length8=%length8% +1

if %length8% lss %Testlngth8% goto Top_G_8






set Alphanumeric7=ABCDEF0123456789


set /a Testlngth7= 4 
:Top_G_7

:: replace 62 with the amount of letters in the Dictionary

set /a Rnd7=%random% %% 16-0
if %Rnd7% gtr 16 goto Top_G_7


set Output7=%Output7%!Alphanumeric7:~%Rnd7%%,1!

set /a Length7=%length7% +1

if %length7% lss %Testlngth7% goto Top_G_7





@echo [93m
:ChoseDisk
set /p ChoseVol= Enter Disk Name that u want to Change ( Ex: C )   
@echo [91m
vol %ChoseVol%:
if %ERRORLEVEL% EQU 1 (echo Error , Please Enter Disk Name that You want to change without : like D )
if %ERRORLEVEL% EQU 1 (pause)
if %ERRORLEVEL% EQU 1 (cls)
if %ERRORLEVEL% EQU 1 ( goto ChoseDisk)
echo.
echo.
echo.
echo.



cd %~dp0




@echo [93m
Volumeid64 %ChoseVol%: %Output8%-%Output7%
@echo.
@echo.
@echo.
if %ERRORLEVEL% EQU 1 (echo Error Please Try Again )
if %ERRORLEVEL% EQU 0 (echo [92m  Your Volume ID Has Been Changed Successfully )
@pause

set /p menu="Do u want To Continue Change Volume ID ? (Y/N): "

if %menu%==Y goto Volumeid1
if %menu%==y goto Volumeid1
if %menu%==N goto menuLOOP
if %menu%==n goto menuLOOP
:Volumeid1
@echo.
@echo.
@echo Please Colse The Script And Try Again
@pause
exit
:menu_7   Change HWIDs
cls
@echo off
Setlocal EnableDelayedExpansion

:: First Gen With 8 Digits


set Alphanumeric=ABCDEF0123456789


set /a Testlngth= 8 
:Top_G_1

:: replace 62 with the amount of letters in the Dictionary

set /a Rnd=%random% %% 16-0
if %Rnd% gtr 16 goto Top_G_1


set MotherBoardSN=%MotherBoardSN%!Alphanumeric:~%Rnd%,1!

set /a Length=%length% +1

if %length% lss %Testlngth% goto Top_G_1




:: Secound Gen With 6 Digits



set Alphanumeric1=ABCDEF0123456789


set /a Testlngth1= 6 
:Top_G_2

:: replace 62 with the amount of letters in the Dictionary

set /a Rnd1=%random% %% 16-0
if %Rnd1% gtr 16 goto Top_G_2


set ChasisSN=%ChasisSN%!Alphanumeric1:~%Rnd1%%,1!

set /a Length1=%length1% +1

if %length1% lss %Testlngth1% goto Top_G_2




:: Third Gen (/SS)System Serial number

set Alphanumeric2=ABCDEF0123456789


set /a Testlngth2= 8
:Top_G_3

:: replace 62 with the amount of letters in the Dictionary

set /a Rnd2=%random% %% 16-0
if %Rnd2% gtr 16 goto Top_G_3


set SystemSN=%SystemSN%!Alphanumeric2:~%Rnd2%%,1!

set /a Length2=%length2% +1

if %length2% lss %Testlngth2% goto Top_G_3





:: Forth Gen (/PSN)Processor Serial Num.
set Alphanumeric3=ABCDEF0123456789


set /a Testlngth3= 15
:Top_G_4



set /a Rnd3=%random% %% 16-0
if %Rnd3% gtr 16 goto Top_G_4


set CPUSN=%CPUSN%!Alphanumeric3:~%Rnd3%%,1!

set /a Length3=%length3% +1

if %length3% lss %Testlngth3% goto Top_G_4




:: Fifth Gen (/SK)System SKU number



set Alphanumeric4=ABCDEF0123456789


set /a Testlngth4= 6
:Top_G_5

:: replace 62 with the amount of letters in the Dictionary

set /a Rnd4=%random% %% 16-0
if %Rnd4% gtr 16 goto Top_G_5


set SystemSKUn=%SystemSKUn%!Alphanumeric4:~%Rnd4%%,1!

set /a Length4=%length4% +1

if %length4% lss %Testlngth4% goto Top_G_5







:: sixth Gen (/SF)System Family




set Alphanumeric5=ABCDEF0123456789


set /a Testlngth5= 6
:Top_G_6

:: replace 62 with the amount of letters in the Dictionary

set /a Rnd5=%random% %% 16-0
if %Rnd5% gtr 16 goto Top_G_6


set SystemFamily=%SystemFamily%!Alphanumeric5:~%Rnd5%%,1!

set /a Length5=%length5% +1

if %length5% lss %Testlngth5% goto Top_G_6






::Starting Commands
cd %~dp0

@echo [93m


set /p menu="Are You Sure ? Do You Want To Change ALL HWIDs ? (Y/N): "

if %menu%==Y goto ChangeMenu
if %menu%==y goto ChangeMenu
if %menu%==N goto menuLOOP
if %menu%==n goto menuLOOP

:ChangeMenu


@echo [91m
AMIDEWINx64.EXE /SU AUTO 
@echo [92m
if %ERRORLEVEL% EQU 1 (echo Error Please Try Again )
if %ERRORLEVEL% EQU 0 (echo System UUID Has Been Changed Successfully )
@echo [91m
AMIDEWINx64.EXE /BS %MotherBoardSN%
@echo [92m
if %ERRORLEVEL% EQU 1 (echo Error Please Try Again )
if %ERRORLEVEL% EQU 0 (echo MotherBoard Serial number Has Been Changed Successfully )
@echo [91m
AMIDEWINx64.EXE /CS %ChasisSN%
@echo [92m
if %ERRORLEVEL% EQU 1 (echo Error Please Try Again )
if %ERRORLEVEL% EQU 0 (echo Chassis Serial number Has Been Changed Successfully )
@echo [91m
AMIDEWINx64.EXE /SS %SystemSN%
@echo [92m
if %ERRORLEVEL% EQU 1 (echo Error Please Try Again )
if %ERRORLEVEL% EQU 0 (echo System Serial number Has Been Changed Successfully )
@echo [91m
AMIDEWINx64.EXE /PSN %CPUSN%
@echo [92m
if %ERRORLEVEL% EQU 1 (echo Error Please Try Again )
if %ERRORLEVEL% EQU 0 (echo CPU Serial number Has Been Changed Successfully )
@echo [91m
AMIDEWINx64.EXE /SF %SystemFamily%
@echo [92m
if %ERRORLEVEL% EQU 1 (echo Error Please Try Again )
if %ERRORLEVEL% EQU 0 (echo System Family Number Has Been Changed Successfully )
@echo [91m
AMIDEWINx64.EXE /SK %SystemSKUn%
@echo [92m
if %ERRORLEVEL% EQU 1 (echo Error Please Try Again )
if %ERRORLEVEL% EQU 0 (echo System SKU number Has Been Changed Successfully )


net stop winmgmt /y
timeout /t 3 /nobreak
net start winmgmt /y
timeout /t 3 /nobreak
sc stop winmgmt
timeout /t 3 /nobreak
sc start winmgmt
timeout /t 3 /nobreak


@pause
cls

@echo [92m




