echo 将此目录作为Profile目录
if exist firefox.exe set d=Mozilla&set e=Mozilla\Firefox
if exist lawlietfox.exe set d=Mozilla&set e=Mozilla\Firefox
if exist palemoon.exe set d=Moonchild Productions&set e=Moonchild Productions\Pale Moon
if not exist "%APPDATA%\%d%" (md "%APPDATA%\%d%")
if not exist "%APPDATA%\%e%" (md "%APPDATA%\%e%")
@echo [General] > "%APPDATA%\%e%\profiles.ini"
@echo StartWithLastProfile=1 >> "%APPDATA%\%e%\profiles.ini"
@echo [Profile0] >> "%APPDATA%\%e%\profiles.ini"
@echo Name=default >> "%APPDATA%\%e%\profiles.ini"
@echo Default=1 >> "%APPDATA%\%e%\profiles.ini"
@echo IsRelative=0 >> "%APPDATA%\%e%\profiles.ini"
@echo Path=%cd%\profile>> "%APPDATA%\%e%\profiles.ini"
