# EASIEST WAY TO RUN (Using Eclipse)

Since you don't have Maven, the easiest way is to use Eclipse IDE:

## Option 1: Eclipse IDE (Recommended)

### Step 1: Download Eclipse IDE for Enterprise Java
https://www.eclipse.org/downloads/packages/

### Step 2: Import Project
1. Open Eclipse
2. File → New → Dynamic Web Project
3. Project name: student-management
4. Target runtime: Apache Tomcat (configure if needed)
5. Click Finish

### Step 3: Copy Files
Copy these folders into the Eclipse project:
- `src/main/java` → `src` folder
- `src/main/webapp` → `WebContent` folder
- `src/main/resources/hibernate.cfg.xml` → `src` folder

### Step 4: Add Libraries
Right-click project → Build Path → Add External JARs
Add all JARs from `lib` folder

### Step 5: Run
Right-click project → Run As → Run on Server
Select Tomcat → Finish

Access: http://localhost:8080/student-management/

---

## Option 2: Use IntelliJ IDEA

Similar process but even easier with better auto-configuration.

---

## Option 3: Manual WAR Creation (Current Method)

1. Download JARs (see QUICK-START.md)
2. Run `build-manual.bat`
3. Run `compile-and-package.bat`
4. Copy WAR to `C:\xampp\tomcat\webapps\`
5. Start Tomcat from XAMPP

---

## Which IDE do you have installed?
- Eclipse
- IntelliJ IDEA
- NetBeans
- VS Code with Java extensions
- None (I'll help with manual build)
