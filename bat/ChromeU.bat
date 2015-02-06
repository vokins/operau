@echo off
del /f /q /s /a "%cd%\Profile\*Safe Browsing*" >nul 2>nul
del /f /q /s /a "%cd%\Profile\Default\Archived*" >nul 2>nul
del /f /q /s /a "%cd%\Profile\Default\Cookies*" >nul 2>nul
del /f /q /s /a "%cd%\Profile\Default\Favicons*" >nul 2>nul
del /f /q /s /a "%cd%\Profile\Default\History*" >nul 2>nul
del /f /q /s /a "%cd%\Profile\Default\Login*" >nul 2>nul
del /f /q /s /a "%cd%\Profile\Default\Shortcuts*" >nul 2>nul
del /f /q /s /a "%cd%\Profile\Default\Top Sites*" >nul 2>nul
del /f /q /s /a "%cd%\Profile\Default\Visited Links*" >nul 2>nul
del /f /q /s /a "%cd%\Profile\Default\Web Data*" >nul 2>nul
rd "%cd%\Profile\Default\Cache" /s /q
rd "%cd%\Profile\Default\Extension State" /s /q
rd "%cd%\Profile\Default\File System" /s /q
rd "%cd%\Profile\Default\GPUCache" /s /q
rd "%cd%\Profile\Default\Local Storage" /s /q
rd "%cd%\Profile\Default\Session Storage" /s /q
rd "%cd%\Profile\SwiftShader" /s /q
rd "%cd%\Profile\WidevineCDM" /s /q
rd "%cd%\Profile\pnacl" /s /q
pause


