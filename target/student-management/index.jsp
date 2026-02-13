<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        
        .welcome-container {
            text-align: center;
            background: white;
            padding: 60px 80px;
            border-radius: 30px;
            box-shadow: 0 30px 80px rgba(0,0,0,0.3);
            max-width: 600px;
            animation: fadeIn 0.6s ease;
        }
        
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        .logo {
            width: 120px;
            height: 120px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 30px;
            box-shadow: 0 10px 30px rgba(102, 126, 234, 0.3);
        }
        
        .logo i {
            font-size: 60px;
            color: white;
        }
        
        h1 {
            font-size: 36px;
            font-weight: 800;
            color: #111827;
            margin-bottom: 15px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        
        p {
            color: #6b7280;
            font-size: 18px;
            margin-bottom: 40px;
            line-height: 1.6;
        }
        
        .features {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-bottom: 40px;
        }
        
        .feature {
            padding: 20px;
            background: #f9fafb;
            border-radius: 15px;
            transition: all 0.3s ease;
        }
        
        .feature:hover {
            transform: translateY(-5px);
            background: #f3f4f6;
        }
        
        .feature i {
            font-size: 28px;
            color: #667eea;
            margin-bottom: 10px;
        }
        
        .feature h3 {
            font-size: 14px;
            color: #374151;
            font-weight: 600;
        }
        
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            padding: 18px 40px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            text-decoration: none;
            border-radius: 15px;
            font-size: 18px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 10px 30px rgba(102, 126, 234, 0.3);
        }
        
        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(102, 126, 234, 0.4);
        }
        
        .btn i {
            font-size: 20px;
        }
    </style>
</head>
<body>
    <div class="welcome-container">
        <div class="logo">
            <i class="fas fa-graduation-cap"></i>
        </div>
        
        <h1>Student Management System</h1>
        <p>Efficiently manage student records with powerful Hibernate ORM persistence</p>
        
        <div class="features">
            <div class="feature">
                <i class="fas fa-user-plus"></i>
                <h3>Add Students</h3>
            </div>
            <div class="feature">
                <i class="fas fa-edit"></i>
                <h3>Edit Records</h3>
            </div>
            <div class="feature">
                <i class="fas fa-database"></i>
                <h3>Persist Data</h3>
            </div>
        </div>
        
        <a href="students?action=list" class="btn">
            <i class="fas fa-arrow-right"></i>
            Get Started
        </a>
    </div>
</body>
</html>
