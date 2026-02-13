# How to Run the Student Management System

## Option 1: Using Maven (Recommended)

### Step 1: Install Maven
Download Maven from: https://maven.apache.org/download.cgi
- Extract to C:\Program Files\Maven
- Add to PATH: C:\Program Files\Maven\bin

### Step 2: Setup Database
1. Start XAMPP Control Panel
2. Start MySQL/MariaDB service
3. Open phpMyAdmin or MySQL command line
4. Run the database/init.sql script:
```bash
cd C:\xampp\mysql\bin
mysql -u root -p < "C:\Users\HP\Music\student\database\init.sql"
```
(Press Enter if no password is set)

### Step 3: Update Database Credentials
Edit `src/main/resources/hibernate.cfg.xml`:
- Change username if needed (default: root)
- Change password if needed (default: password or empty)

### Step 4: Build and Run
```bash
mvn clean package
```

### Step 5: Deploy to Tomcat
- Copy target/student-management.war to Tomcat webapps folder
- Start Tomcat
- Access: http://localhost:8080/student-management/

## Option 2: Using Eclipse/IntelliJ IDEA

### Step 1: Import Project
- Open Eclipse/IntelliJ
- Import as Maven Project
- Select the project folder

### Step 2: Setup Database (same as above)

### Step 3: Configure Tomcat Server
- Add Tomcat server in IDE
- Deploy the project
- Run the server

### Step 4: Access Application
http://localhost:8080/student-management/

## Quick Test (Without Maven)

I'll create a standalone version for you...
