@echo off
:menu
color 17
echo ===========================
echo	Instalador choco
echo ===========================
echo.
echo [1] - Instalar choco
echo [2] - Instalar programas
echo [3] - Sair
echo.
set /p opcao= Digite uma opcao :
if "%opcao%" == "1" goto :option1
if "%opcao%" == "2" goto :option2
if "%opcao%" == "3" goto :option3

:option1

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
echo.
echo Choco instalado!
echo.
pause

cls
goto :menu

:option2
echo.

choco install adobereader -y

choco install winrar -y

choco install avastfreeantivirus -y

choco install firefox -y

choco install googlechrome -y

choco install ie11 -y

echo.
echo Programas instalados!
echo.
pause

cls
goto :menu

:option3
exit