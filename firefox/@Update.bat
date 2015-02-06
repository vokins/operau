wget -c -N --no-check-certificate -i uc.txt
7z x swf.rar -y
7z x youkuantiads_with_player.xpi -y
move /y "%cd%\content\swf\*.swf" "%cd%\swf"
move /y "%cd%\swf\*.swf" "%~dp0..\swf"
del /f swf.rar youkuantiads_with_player.xpi bootstrap.js chrome.manifest install.rdf content\youkuantiads.js
rd /s /q content
rd /s /q swf
move /y "%cd%\speedyfox.exe" "%~dp0.."
move /y "%cd%\*.uc.js" "%~dp0..\SubScript"
move /y "%cd%\*.uc.xul" "%~dp0..\xul"
SyncTime.vbs
exit


rem wget -e "http_proxy=http://127.0.0.1:8087" -N -r http://haoutil.googlecode.com/svn/trunk/player/ -nH -np
rem http://203.208.46.170:80
rem move /y "%cd%\svn\trunk\player\testmod\*.swf" "%cd%\svn\trunk\player"
rem move /y "%cd%\svn\trunk\player\*.swf" "%cd%\swf"


move /y "%cd%\urlfilter.ini" "%~dp0.."
move /y "%cd%\_uAutoPagerize.js" "%~dp0.."
cd /d %~dp0
::¸üÐÂ½Å±¾
set dd=wget.exe -N -P ..\UserScriptLoader\
%dd% http://userscripts.org:8080/scripts/source/39167.user.js

pushd "%~dp0"
set urlC=haoutil.googlecode.com/svn/trunk/player/testmod/
set urlD=haoutil.googlecode.com/svn/trunk/player/
set urlE=haoutil.googlecode.com/svn/trunk/youku/
set urlP=127.0.0.1:8087
wget -N -t 3 -e "http_proxy=http://%urlP%" http://%urlC%iqiyi.swf
move /y "%cd%\_showFlagS.js" "%~dp0..\lib"
move /y "%cd%\FireSpider.uc.js" "%~dp0.."
move /y "%cd%\000-AutoHideBar.uc.js" "%~dp0.."
move /y "%cd%\userChrome.css" "%~dp0.."
move /y "%cd%\userContent.css" "%~dp0.."
cd /d %~dp0
set pf=..\..\
move /y "%cd%\stylish.sqlite" "%pf%"
move /y "%cd%\permissions.sqlite" "%pf%"
https://raw.githubusercontent.com/defpt/userChromeJs/master/quickProxyMod.uc.js
https://raw.githubusercontent.com/jiayiming/FireLocalSWF/master/YoukuAntiADs@harv.c.uc.js
http://code.taobao.org/svn/simpleu/trunk/firefox/urlfilter.ini
https://raw.githubusercontent.com/lastdream2013/userChrome/master/urlfilterfast.uc.js
https://raw.githubusercontent.com/feiruo/userChromeJS/master/UserAgentChange/UserAgentChanger.uc.js
https://raw.githubusercontent.com/ywzhaiqi/userChromeJS/master/ExternalVideoPlayer/ExternalVideoPlayer.uc.js
https://raw.githubusercontent.com/Drager-oos/userChrome/master/userMenu/AutoSelectPopup.uc.js
https://raw.githubusercontent.com/defpt/userChromeJs/master/KeyChanger/KeyChanger.uc.js
https://raw.githubusercontent.com/ywzhaiqi/userChromeJS/master/moveButton/moveButton.uc.js
http://code.taobao.org/svn/simpleu/trunk/firefox/permissions.sqlite
http://code.taobao.org/svn/simpleu/trunk/firefox/stylish.sqlite
https://raw.githubusercontent.com/linusyu/FireSpider/master/FireSpider.uc.js
http://code.taobao.org/svn/simpleu/trunk/firefox/userChrome.css
http://lkytal.qiniudn.com/FireMenu.uc.xul
https://raw.githubusercontent.com/feiruo/userChromeJS/master/starClickMod.uc.js
http://code.taobao.org/svn/simpleu/trunk/firefox/userContent.css
https://raw.githubusercontent.com/feiruo/userChromeJS/master/showFlagS/_showFlagS.js
https://raw.githubusercontent.com/defpt/userChromeJs/master/AutoHideBar/000-AutoHideBar.uc.js
https://raw.githubusercontent.com/feiruo/userChromeJS/master/MouseGestures/MouseGestures.uc.js
https://raw.githubusercontent.com/nightson/userChromeJS/master/AboutConfigMultipleSelection.uc.js
https://raw.githubusercontent.com/lastdream2013/userChrome/master/qrCreator.uc.js
https://raw.githubusercontent.com/defpt/userChromeJs/master/Sidebar/Sidebar_S.uc.js
https://raw.githubusercontent.com/defpt/userChromeJs/master/MemoryMonitor.uc.js
https://raw.githubusercontent.com/feiruo/userChromeJS/master/AwesomeBookmarkbar.uc.js
https://raw.githubusercontent.com/ywzhaiqi/userChromeJS/master/UserScriptLoaderPlus/UserScriptLoaderPlus.uc.js
https://raw.githubusercontent.com/defpt/userChromeJs/master/Translator/JsTranslator.uc.js
https://raw.githubusercontent.com/defpt/userChromeJs/master/Translator/gTranslator.uc.js
https://raw.githubusercontent.com/ywzhaiqi/userChromeJS/master/YoukuantiadsModY/youkuantiadsModY.uc.js
https://raw.githubusercontent.com/ywzhaiqi/userChromeJS/master/contextProxySwitch.uc.xul