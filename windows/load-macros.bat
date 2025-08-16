@echo off
SET GIT_ALIASES_SCRIPT_DIR=%~dp0

echo Loading git-utils command aliases from %GIT_ALIASES_SCRIPT_DIR%
echo    (https://github.com/peterlanoie/git-utils)

DOSKEY /MACROFILE="%GIT_ALIASES_SCRIPT_DIR%/macros.txt" /OVERSTRIKE

ECHO.
ECHO Installed Macros:
ECHO -------------------
DOSKEY /MACROS