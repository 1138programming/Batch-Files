@echo off 
echo ========================================================================
echo Pushes code from GitHub. Please run the Push.bat file 
echo every time you work on your autonomous code so that any 
echo updates that you are available to the programming team.
echo ========================================================================
cd..
cd..
cd Users
cd eeuser
cd Documents
cd GitHub
:start
set /p PUSH= What is the file name of your code? (be specific) :
cd %PUSH% 
echo.
git push
choice /c YN /m "Did it work?"
if %errorlevel%==1 goto again
if %errorlevel%==2 goto end

:end
echo go find a programmer
pause 
exit

:again
choice /c YN /m "Do you need to push again?"
if %errorlevel%==1 goto reset
if %errorlevel%==2 exit 

:reset
cd..
goto start

