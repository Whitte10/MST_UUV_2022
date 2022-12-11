echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent/ntbin/win64/winkill.exe"

"D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent\ntbin\win64\tell.exe" Akten 57019 CLEANUP_EXITING
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 21272) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 13212) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 20608) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 20088) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 10448) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 17948)
del "C:\Users\akten\Desktop\MST_UUV_2022\Barbaros USV\Barbaros_analiz\cleanup-fluent-Akten-10448.bat"
