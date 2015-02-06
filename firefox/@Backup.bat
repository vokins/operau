@echo off
echo 即将终止Firefox/lawlietfox/palemoon进程并备份Firefox\profile配置文件
pause
taskkill /F /IM firefox.exe
taskkill /F /IM lawlietfox.exe
taskkill /F /IM palemoon.exe

:backup7z
rem 取得当前批处理所在路径
cd /d %~dp0
::设置要备份目标的路径
set ProfilesPath=..\..\
::设置备份存放的路径以及压缩包文件名，添加了时间月和日（通常使用的是长日期那么就是%date:~5,2%%date:~8,2%）
set ArchiveName=D:\Profile_%date:~5,2%%date:~8,2%.7z
::设置要打包的文件以及文件夹，请酌情自己添加
7z.exe u -up1q3r2x2y2z2w2 %ArchiveName% "%ProfilesPath%*adblockplus*" "%ProfilesPath%*extensions*" "%ProfilesPath%*mason*" "%ProfilesPath%Flashgot.exe" "%ProfilesPath%Plugins" "%ProfilesPath%cert8.db" "%ProfilesPath%chrome" "%ProfilesPath%cookies.sqlite" "%ProfilesPath%gm_scripts" "%ProfilesPath%key3.db" "%ProfilesPath%localstore.rdf" "%ProfilesPath%permissions.sqlite" "%ProfilesPath%places.sqlite" "%ProfilesPath%prefs.js" "%ProfilesPath%scriptish_scripts" "%ProfilesPath%search-metadata.json" "%ProfilesPath%searchplugins" "%ProfilesPath%secmod.db" "%ProfilesPath%signons.sqlite" "%ProfilesPath%stylish.sqlite" "%ProfilesPath%user.js"
ping -n 3 127.1>nul
echo 备份完成，请按任意键关闭窗口
pause&exit
goto:eof

:backuprar
rar.exe a -m5 -s -md4096 -idq -r -ed -ep1 -x*.mfl -x*.dat -x*\*cache* -x*\*thumbnails* -x*\*safebrowsing* -x*\*bak* -x*\*bookmarkbackups* -x*.bak -xpatterns-*.ini -xcompatibility.ini -xparent.lock -ag[YYYY-MM-DD,hh-mm-ss] profile_backup.rar profile\
echo 备份完成
goto:eof