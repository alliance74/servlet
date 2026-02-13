@echo off
echo Creating WAR file for Student Management System...
echo.

REM Check if lib folder has JARs
if not exist "WebContent\WEB-INF\lib\*.jar" (
    echo ERROR: No JAR files found in WebContent\WEB-INF\lib\
    echo Please add required JAR files first:
    echo - hibernate-core-5.6.15.Final.jar and dependencies
    echo - mysql-connector-java-8.0.33.jar
    echo - jstl-1.2.jar
    echo.
    pause
    exit /b 1
)

REM Compile Java files
echo Compiling Java files...
javac -d WebContent\WEB-INF\classes -cp "WebContent\WEB-INF\lib\*;C:\xampp\tomcat\lib\servlet-api.jar" -encoding UTF-8 src\main\java\com\student\model\*.java src\main\java\com\student\util\*.java src\main\java\com\student\dao\*.java src\main\java\com\student\servlet\*.java src\main\java\com\student\listener\*.java

if errorlevel 1 (
    echo.
    echo Compilation failed! Check errors above.
    pause
    exit /b 1
)

echo Compilation successful!
echo.

REM Create WAR file
echo Creating WAR file...
cd WebContent
jar -cvf ..\student-management.war *
cd ..

echo.
echo ========================================
echo WAR file created: student-management.war
echo ========================================
echo.
echo Deploy to Tomcat:
echo copy student-management.war C:\xampp\tomcat\webapps\
echo.
echo Then access: http://localhost:8080/student-management/
echo.
pause
