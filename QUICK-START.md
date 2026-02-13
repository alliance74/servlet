# Quick Start Guide (Without Maven)

## Step 1: Download Dependencies

Create a `lib` folder and download these JARs:

### Required JARs:
1. **Hibernate Core** (5.6.15.Final)
   - Download: https://sourceforge.net/projects/hibernate/files/hibernate-orm/5.6.15.Final/
   - Extract and copy ALL JARs from `lib/required/` folder

2. **MySQL Connector** (8.0.33)
   - Download: https://dev.mysql.com/downloads/connector/j/
   - Or direct: https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.33/mysql-connector-java-8.0.33.jar

3. **JSTL** (1.2)
   - Download: https://repo1.maven.org/maven2/javax/servlet/jstl/1.2/jstl-1.2.jar

Place all JARs in the `lib` folder.

## Step 2: Build the Project

Run:
```
build-manual.bat
compile-and-package.bat
```

## Step 3: Deploy to Tomcat

Copy `student-management.war` to:
```
C:\xampp\tomcat\webapps\
```

## Step 4: Start Tomcat

1. Open XAMPP Control Panel
2. Start Apache (if needed)
3. Start Tomcat
4. Wait for deployment (war will auto-extract)

## Step 5: Access Application

Open browser:
```
http://localhost:8080/student-management/
```

## Troubleshooting

If Tomcat port is different, check:
- XAMPP Control Panel for Tomcat port
- Usually 8080 or 8081

---

## EASIER ALTERNATIVE: Use Eclipse/NetBeans

1. Open Eclipse/NetBeans
2. Create new Dynamic Web Project
3. Copy all source files
4. Add JARs to Build Path
5. Run on Server (built-in Tomcat)
