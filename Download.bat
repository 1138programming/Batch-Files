@echo off 
echo ================================================================
echo Downloads your code to the robot.
echo ================================================================
cd..
cd..
cd Users
cd eeuser
cd Documents
cd GitHub
set /p DOWNLOAD= What is the file name of your code? (be specific) :
cd %DOWNLOAD% 
prosV5 make
prosV5 upload 
choice /c YN /m "Did it work?"
if %errorlevel%==1 exit

echo Go find a programmer 