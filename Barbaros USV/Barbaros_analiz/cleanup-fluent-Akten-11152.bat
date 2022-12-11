echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent/ntbin/win64/winkill.exe"

"D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent\ntbin\win64\tell.exe" Akten 60336 CLEANUP_EXITING
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 15512) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 7928) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 9536) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 2944) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 11152) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 19408)
del "C:\Users\akten\Desktop\MST_UUV_2022\Barbaros USV\Barbaros_analiz\cleanup-fluent-Akten-11152.bat"
