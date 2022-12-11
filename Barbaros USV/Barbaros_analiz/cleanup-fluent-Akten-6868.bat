echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent/ntbin/win64/winkill.exe"

"D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent\ntbin\win64\tell.exe" Akten 58497 CLEANUP_EXITING
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 17464) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 20320) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 10620) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 6620) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 6868) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 18756)
del "C:\Users\akten\Desktop\MST_UUV_2022\Barbaros USV\Barbaros_analiz\cleanup-fluent-Akten-6868.bat"
