# Database Setup Instructions

## Prerequisites
- MySQL Server installed (version 8.0 or higher)
- MySQL running on localhost:3306

## Setup Steps

### 1. Start MySQL Server
```bash
# Windows
net start MySQL80

# Or use MySQL Workbench / XAMPP / WAMP
```

### 2. Run the initialization script
```bash
mysql -u root -p < database/init.sql
```

Or manually in MySQL Workbench:
- Open MySQL Workbench
- Connect to your local MySQL server
- Open `database/init.sql`
- Execute the script

### 3. Update Database Credentials
Edit the following files with your MySQL credentials:

**File: `src/main/resources/hibernate.cfg.xml`**
```xml
<property name="hibernate.connection.username">YOUR_USERNAME</property>
<property name="hibernate.connection.password">YOUR_PASSWORD</property>
```

**File: `src/main/java/com/student/util/DatabaseConnection.java`**
```java
private static final String USER = "YOUR_USERNAME";
private static final String PASSWORD = "YOUR_PASSWORD";
```

### 4. Verify Connection
The application will automatically test the database connection on startup.
Check the console logs for:
- "Database connection successful!"
- "Hibernate initialized successfully!"

## Default Configuration
- Database: `student_db`
- Host: `localhost`
- Port: `3306`
- Username: `root`
- Password: `password`

## Troubleshooting

### Connection Refused
- Ensure MySQL server is running
- Check if port 3306 is available

### Access Denied
- Verify username and password
- Grant privileges: `GRANT ALL PRIVILEGES ON student_db.* TO 'root'@'localhost';`

### Database Not Found
- Run the init.sql script to create the database
