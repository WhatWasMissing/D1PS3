@echo off
setlocal EnableExtensions

set ROOT=%~dp0..\upstream
if not exist "%ROOT%" mkdir "%ROOT%"
pushd "%ROOT%"

echo === Destiny PS3 reference source fetch ===

echo [1/8] Blam-Network/rsat
call :clone https://github.com/Blam-Network/rsat.git rsat main

echo [2/8] v4nguard/tiger-pkg
call :clone https://github.com/v4nguard/tiger-pkg.git tiger-pkg main

echo [3/8] v4nguard/quicktag
call :clone https://github.com/v4nguard/quicktag.git quicktag main

echo [4/8] v4nguard/tiger-parse
call :clone https://github.com/v4nguard/tiger-parse.git tiger-parse main

echo [5/8] Blam-Network/web-tiger ^(REFERENCE ONLY - UNLICENSED^)
call :clone https://github.com/Blam-Network/web-tiger.git web-tiger main

echo [6/8] RPCS3/rpcs3
call :clone https://github.com/RPCS3/rpcs3.git rpcs3 master

echo [7/8] craftycodie/Xenia-WebServices feature/xhttp
call :clone https://github.com/craftycodie/Xenia-WebServices.git Xenia-WebServices feature/xhttp

echo [8/8] AdrianCassar/xenia-canary netplay_canary_experimental
call :clone https://github.com/AdrianCassar/xenia-canary.git xenia-canary netplay_canary_experimental

echo.
echo Finished. Upstreams are in: %ROOT%
popd
exit /b 0

:clone
set URL=%~1
set DIR=%~2
set BRANCH=%~3
if exist "%DIR%\.git" (
  echo Updating %DIR%...
  git -C "%DIR%" fetch --all --prune
  git -C "%DIR%" checkout "%BRANCH%"
  git -C "%DIR%" pull --ff-only
) else (
  git clone --branch "%BRANCH%" "%URL%" "%DIR%"
)
exit /b 0
