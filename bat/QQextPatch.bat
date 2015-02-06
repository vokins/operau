set f=%AppData%\Tencent\Users
if not exist %f% md %f%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\qqsafeud.exe" /v debugger /t reg_sz /d %windir%\twunk_32.exe /f
DEL /F /Q /A -R -H -S -A "%appdata%\Tencent\QQ\SafeBase\*.*"
rd /s /q "%appdata%\Tencent\QQ\SafeBase"
echo .>"%appdata%\Tencent\QQ\SafeBase"
attrib +r +s +h "%appdata%\Tencent\QQ\SafeBase"
echo y| cacls "%appdata%\Tencent\QQ\SafeBase" /D everyone
DEL /F /Q /A -R -H -S -A "%Temp%\qqsafeud.exe"
md "%Temp%\qqsafeud.exe"
attrib +r +s +h "%Temp%\qqsafeud.exe"
echo y| cacls "%Temp%\qqsafeud.exe" /D everyone
md "%Temp%\Tencent"
attrib +r +s +h "%Temp%\Tencent"
echo y| cacls "%Temp%\Tencent" /D everyone
DEL /F /Q  %TMP%\*.tvl
DEL /F /Q  %TMP%\*.tsd
DEL /F /Q  %TMP%\*.dat
for /f "delims=" %%i in ('dir /b %AppData%\Tencent\Users /a-d /s "AFDataReport.db"') do del %%i &md %%i
for /f "delims=" %%i in ('dir /b %AppData%\Tencent\Users /a-d /s "Cache.db"') do del %%i &md %%i
for /f "delims=" %%i in ('dir /b %AppData%\Tencent\Users /a-d /s "Misc.db"') do del %%i &md %%i
for /f "delims=" %%i in ('dir /b %AppData%\Tencent\Users /a-d /s "MonetizationReport.db"') do del %%i &md %%i



