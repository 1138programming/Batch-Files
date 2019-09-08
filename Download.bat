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
set /p SLOT= What slot do you what the code to be on? 
prosV5 make
prosV5 upload --%SLOT% --%DOWNLOAD%
choice /c YN /m "Did it work?"
if %errorlevel%==1 exit

echo Go find a programmer 