echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent/ntbin/win64/winkill.exe"

"D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent\ntbin\win64\tell.exe" Akten 53688 CLEANUP_EXITING
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 20776) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 16736) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 15048) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 16264) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 17264) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 916)
del "C:\Users\akten\Desktop\MST_UUV_2022\Barbaros USV\Barbaros_analiz\cleanup-fluent-Akten-17264.bat"
