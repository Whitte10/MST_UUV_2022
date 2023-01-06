echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent/ntbin/win64/winkill.exe"

"D:\Ansys\ANSYS Inc\ANSYS Student\v222\fluent\ntbin\win64\tell.exe" Akten 57491 CLEANUP_EXITING
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 19216) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 10600) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 4836) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 2368) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 4064) 
if /i "%LOCALHOST%"=="Akten" (%KILL_CMD% 6744)
del "C:\Users\akten\Desktop\MST_UUV_2022\Barbaros USV\Barbaros_analiz\cleanup-fluent-Akten-4064.bat"
