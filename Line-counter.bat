@echo off
setlocal enabledelayedexpansion

echo.
echo ****************************************************
echo *    Script Name: Source Code File Lines Counter   *
echo *             Made by Ashutosh Yadav               *
echo *       Website: www.offensivekernel.com           *
echo *            GitHub: offensivekernel               *
echo ****************************************************
echo.

set /p "folder_path=Please enter the path of Source Code: "
set "total_count=0"

for /r "%folder_path%" %%f in (*) do (
    set "count=0"
    for /f %%a in ('find /c /v "" ^<"%%f"') do set /a count+=%%a
    echo "%%f": !count! lines
    set /a total_count+=count
)

echo.
echo Total number of lines (including blank lines): %total_count%
