@ECHO OFF
echo 4chan Ripper v. 1.0 by Taylor Pinkham
SET /P url=Enter Thread URL:

SET /P type=Enter image/video type(s) to rip. Multiple types should be comma seperated with no spaces eg. webm,gif,jpg: 
SET /P d=Type the directory where you want to save the media. Directory will be created if it doesn't exit. The default is %cd%: 
IF /i "%d%" == "" GOTO default
IF /i NOT "%d%" == "" GOTO override
:default 
wget.exe -nd -r l 1 -H -D i.4cdn.org -A %type% %url%
wget.exe -nd -P %d% -r l 1 -H -D i.4cdn.org -A %type% %url%
echo Done. Media saved to %cd%
echo Have a nice day...or wank :3
rmdir -r /s /q
pause
exit



:override
wget.exe -nd -P %d% -r l 1 -H -D i.4cdn.org -A %type% %url%
echo Done. Media saved to %d%
echo Have a nice day...or wank :3
pause
exit