@echo off 
echo ================================================================
echo Pulls code from GitHub. Please run the Pull.bat file every time 
echo you work on your autonomous code so that any updates that were 
echo made by the programming team will be available to you.
echo ================================================================
cd..
cd..
cd Users
cd eeuser
cd Documents
cd GitHub
set /p FINALIZE= What is the file name of your code? (be specific) :
cd %FINALIZE% 
git checkout master
git merge
choice /c YN /m "Did it work?"
if %errorlevel%==1 exit

echo Go find a programmer 
