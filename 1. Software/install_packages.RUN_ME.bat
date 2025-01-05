@echo on

SETLOCAL


powershell.exe -ExecutionPolicy Bypass -File "%~dp0_install_packages.ps1"

pause