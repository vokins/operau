@echo off
pushd "%~dp0"
set appPath=%~dp0
set urlC=simpleu.googlecode.com/svn/trunk/hosts
set urlP=203.208.46.200:80
set urlP1=203.208.46.170:80
set urlP2=203.208.46.202:80
set urlP3=203.208.46.207:80
set urlP4=203.208.46.222:80

copy /y hosts temp.dat>nul

echo.
echo 尝试以 谷歌代理 更新
echo.
wget -N -t 3 -e "http_proxy=http://%urlP%" http://%urlC% -o log.txt
findstr "saved" log.txt &&goto endR
findstr /c:"Server file no newer" log.txt &&goto end

wget -N -t 3 -e "http_proxy=http://%urlP1%" http://%urlC% -a log.txt
findstr "saved" log.txt &&goto endR
findstr /c:"Server file no newer" log.txt &&goto end

wget -N -t 3 -e "http_proxy=http://%urlP2%" http://%urlC% -a log.txt
findstr "saved" log.txt &&goto endR
findstr /c:"Server file no newer" log.txt &&goto end

wget -N -t 3 -e "http_proxy=http://%urlP3%" http://%urlC% -a log.txt
findstr "saved" log.txt &&goto endR
findstr /c:"Server file no newer" log.txt &&goto end

wget -N -t 3 -e "http_proxy=http://%urlP4%" http://%urlC% -a log.txt
findstr "saved" log.txt &&goto endR
findstr /c:"Server file no newer" log.txt &&goto end

echo.
echo 尝试以 https 更新
echo.
wget -N -t 3 --no-check-certificate https://%urlC% -a log.txt
findstr "saved" log.txt &&goto endR
findstr /c:"Server file no newer" log.txt &&goto end

echo.
echo 尝试以 http 更新
echo.
wget -N -t 3 http://%urlC% -a log.txt
findstr "saved" log.txt &&goto endR
findstr /c:"Server file no newer" log.txt &&goto end

echo.
echo 存在网络等问题。
echo.
echo 10秒后退出。
ping -n 10 127.1 >nul
exit

:end
echo.
echo 无需更新，10秒后退出。
echo.
ping -n 10 127.1 >nul
exit

:endR
echo.
copy /y temp.dat hosts备份 >nul
echo 已更新
echo.

保存为simpleu.host更新.bat

