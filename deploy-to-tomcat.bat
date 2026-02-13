@echo off
echo ========================================
echo Deploying Student Management System
echo ========================================
echo.

REM Stop Tomcat
echo Stopping Tomcat...
call C:\xampp\tomcat\bin\shutdown.bat
timeout /t 5 /nobreak

REM Clean old deployment
echo Cleaning old deployment...
if exist "C:\xampp\tomcat\webapps\student-management" (
    rmdir /s /q "C:\xampp\tomcat\webapps\student-management"
)
if exist "C:\xampp\tomcat\webapps\student-management.war" (
    del "C:\xampp\tomcat\webapps\student-management.war"
)

REM Copy new WAR
echo Copying WAR file...
copy student-management.war C:\xampp\tomcat\webapps\

REM Start Tomcat
echo Starting Tomcat...
start "" "C:\xampp\tomcat\bin\startup.bat"

echo.
echo ========================================
echo Deployment complete!
echo Wait 10-15 seconds for Tomcat to start
echo Then access: http://localhost:8080/student-management/
echo ========================================
echo.
pause
