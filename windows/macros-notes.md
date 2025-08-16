@echo off
SET GIT_ALIASES_SCRIPT_DIR=%~dp0

echo Loading git-utils command aliases from %GIT_ALIASES_SCRIPT_DIR%
echo    (https://github.com/peterlanoie/git-utils)

REM Makes a commit with no content to provide an obvious bookmark for rebasing
REM This is useful when you have a series of commits that contribute to multiple PRs that you need 
REM to rebase before each separate PR
REM %DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%-%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2% 
REM DOSKEY bkm='timestamp=$(date +"%Y-%m-%d-%H-%M-%S") && git commit --no-verify --message ">>>> git bookmark - rebase to commits from below this - $timestamp <<<<" --allow-empty'

@REM # Utility scripts
@REM DOSKEY gbc="$GIT_DOSKEYES_SCRIPT_DIR/git-branch-checkout.sh"
@REM DOSKEY gbd="$GIT_ALIASES_SCRIPT_DIR/git-branch-delete.sh"



