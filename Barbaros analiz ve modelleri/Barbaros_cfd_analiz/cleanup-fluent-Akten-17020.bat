echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent/ntbin/win64/winkill.exe"

"D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent\ntbin\win64\tell.exe" Akten 57372 CLEANUP_EXITING
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 20400) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 21448) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 16188) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 11012) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 17020) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 8208)
del "C:\Users\akten\Desktop\MST_UUV_2022\Barbaros USV\Barbaros_analiz\cleanup-fluent-Akten-17020.bat"
