@echo off
echo Building Student Management System...

REM Create build directory structure
mkdir build\WEB-INF\classes 2>nul
mkdir build\WEB-INF\lib 2>nul
mkdir build\WEB-INF\views 2>nul

REM Copy web.xml
copy src\main\webapp\WEB-INF\web.xml build\WEB-INF\

REM Copy JSP files
copy src\main\webapp\WEB-INF\views\*.jsp build\WEB-INF\views\
copy src\main\webapp\index.jsp build\

REM Copy hibernate config
mkdir build\WEB-INF\classes 2>nul
copy src\main\resources\hibernate.cfg.xml build\WEB-INF\classes\

echo.
echo Please download the following JAR files and place them in lib\ folder:
echo 1. hibernate-core-5.6.15.Final.jar
echo 2. mysql-connector-java-8.0.33.jar
echo 3. javax.servlet-api-4.0.1.jar
echo 4. jstl-1.2.jar
echo.
echo After adding JARs, run: compile-and-package.bat
pause
