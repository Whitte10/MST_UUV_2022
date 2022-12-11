echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent/ntbin/win64/winkill.exe"

"D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent\ntbin\win64\tell.exe" Akten 57198 CLEANUP_EXITING
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 7988) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 8364) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 7448) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 16448) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 20784) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 17004)
del "C:\Users\akten\Desktop\MST_UUV_2022\Barbaros USV\Barbaros_analiz\cleanup-fluent-Akten-20784.bat"
