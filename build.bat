@echo off

set SolutionDir=%~dp0
set SolutionName=JetBrains.Annotations
set Project=JetBrains.Annotations

REM Cleanup output directory
rmdir /s/q "%SolutionDir%Output" 2> nul
mkdir "%SolutionDir%Output"

CALL %SolutionDir%tools\build.bat %SolutionDir% %SolutionName% %Project% net35-cf || EXIT /B 1

EXIT /B %ERRORLEVEL%
