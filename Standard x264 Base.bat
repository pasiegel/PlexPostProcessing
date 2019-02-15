@echo off 
if exist "C:\Input\*.m*" (
FOR %%i IN ("c:\Input\*.m*") DO (
REM ECHO %%~ni - This is the filename without the ext for the new file
HandBrakeCLI.exe --preset-import-file presets.json -Z "standard" -i "%%i" -o "c:\unsorted\%%~ni.mp4" 
del "%%i"
) 
)
