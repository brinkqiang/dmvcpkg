@echo off

chcp 65001 > nul

setx VCPKG_ROOT "%~dp0vcpkg" /m

pause
