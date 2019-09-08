@echo off 
echo ========================================================================
echo Pulls code from GitHub. Please run the Pull.bat file every time 
echo you work on your autonomous code so that any updates that 
echo were made by the programming team will be available to you.
echo ========================================================================
cd..
cd..
cd Users
cd eeuser
cd Documents
cd GitHub
:start
set /p PULL= What is the file name of your code? (be specific) :
cd %PULL% 
echo.
git stash
git fetch 
git pull
choice /c YN /m "Did it work?"
if %errorlevel%==2 goto broken
choice /c YN /m "Do you need to switch branches"
if %errorlevel%==1 goto branch 
if %errorlevel%==2 goto again

:branch
set /p BRANCH= What is the branch name? (be specific) :
git checkout %BRANCH%
git pull

:again
choice /c YN /m "Do you need to pull again?"
if %errorlevel%==1 goto reset
if %errorlevel%==2 exit 

:reset
cd..
goto start

:broken 
echo Find a programmer
pause
exit

