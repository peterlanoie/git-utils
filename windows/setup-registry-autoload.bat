@echo off
SET GIT_ALIASES_SCRIPT_DIR=%~dp0

echo Loading git-utils command macros from %GIT_ALIASES_SCRIPT_DIR%
echo    (https://github.com/peterlanoie/git-utils)

reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun /d "doskey /macrofile=%GIT_ALIASES_SCRIPT_DIR%\macros.txt" /f