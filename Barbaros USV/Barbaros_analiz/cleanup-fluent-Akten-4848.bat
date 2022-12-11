echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent/ntbin/win64/winkill.exe"

"D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent\ntbin\win64\tell.exe" Akten 60635 CLEANUP_EXITING
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 6428) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 7972) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 6632) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 7080) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 4848) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 7980)
del "C:\Users\akten\Desktop\MST_UUV_2022\Barbaros USV\Barbaros_analiz\cleanup-fluent-Akten-4848.bat"
