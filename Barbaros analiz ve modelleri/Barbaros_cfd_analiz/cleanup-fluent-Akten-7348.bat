echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent/ntbin/win64/winkill.exe"

"D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent\ntbin\win64\tell.exe" Akten 53502 CLEANUP_EXITING
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 6828) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 21024) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 7784) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 9736) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 7348) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 9276)
del "C:\Users\akten\Desktop\MST_UUV_2022\Barbaros USV\Barbaros_analiz\cleanup-fluent-Akten-7348.bat"
