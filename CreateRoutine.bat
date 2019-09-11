@echo off 
set /p CODENAME= What is the code name (EX: 1138A-VEX-Code-2018-2019) :
set /p AUTON= What is the name of your auton 
echo //new auton .h > C:\Users\eeuser\Documents\GitHub\*CODENAME*\include\libIterativeRobot\commands\*AUTON*.h
echo //new auton .h > C:\Users\eeuser\Documents\GitHub\*CODENAME*\src\libIterativeRobot\commands\*AUTON*.cpp