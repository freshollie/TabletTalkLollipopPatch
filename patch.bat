@echo off

echo Tablet talk 5.0 patcher by freshollie

set /p apkfile= "Apk (not including.apk):  "

call apktool d %apkfile%.apk

copy assets\AcceptCallActivity$CallStateReceiver.smali %apkfile%\smali\com\apdroid\tabtalk
copy assets\AcceptCallActivity.smali %apkfile%\smali\com\apdroid\tabtalk
copy assets\ServicePhone.smali %apkfile%\smali\com\apdroid\tabtalk

call apktool b %apkfile%

call buildapk "%~dp0\%apkfile%"

echo Patched Succesfully

pause