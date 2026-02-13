@echo off
echo Downloading required JAR files...

mkdir lib 2>nul

echo Downloading dependencies...
echo Please download these files manually and place in lib\ folder:
echo.
echo 1. Hibernate Core: https://repo1.maven.org/maven2/org/hibernate/hibernate-core/5.6.15.Final/hibernate-core-5.6.15.Final.jar
echo 2. MySQL Connector: https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.33/mysql-connector-java-8.0.33.jar
echo 3. JSTL: https://repo1.maven.org/maven2/javax/servlet/jstl/1.2/jstl-1.2.jar
echo.
echo Also download Hibernate dependencies from:
echo https://sourceforge.net/projects/hibernate/files/hibernate-orm/5.6.15.Final/hibernate-release-5.6.15.Final.zip
echo Extract and copy all JARs from lib\required\ to your lib\ folder
echo.
pause
