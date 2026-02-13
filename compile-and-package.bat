@echo off
echo Compiling Java files...

REM Set classpath
set CLASSPATH=lib\*;build\WEB-INF\classes

REM Compile Java files
javac -d build\WEB-INF\classes -cp "%CLASSPATH%" src\main\java\com\student\model\*.java
javac -d build\WEB-INF\classes -cp "%CLASSPATH%" src\main\java\com\student\util\*.java
javac -d build\WEB-INF\classes -cp "%CLASSPATH%" src\main\java\com\student\dao\*.java
javac -d build\WEB-INF\classes -cp "%CLASSPATH%" src\main\java\com\student\servlet\*.java
javac -d build\WEB-INF\classes -cp "%CLASSPATH%" src\main\java\com\student\listener\*.java

if errorlevel 1 (
    echo Compilation failed!
    pause
    exit /b 1
)

REM Copy library JARs
copy lib\*.jar build\WEB-INF\lib\

REM Create WAR file
cd build
jar -cvf ..\student-management.war *
cd ..

echo.
echo WAR file created: student-management.war
echo Copy this file to your Tomcat webapps folder
echo.
pause
