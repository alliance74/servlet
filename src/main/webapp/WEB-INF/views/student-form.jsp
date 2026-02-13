<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>${student != null ? 'Edit Student' : 'Add New Student'}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
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
            padding: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .form-container {
            max-width: 600px;
            width: 100%;
            background: white;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
            overflow: hidden;
        }
        
        .form-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 30px 40px;
            text-align: center;
        }
        
        .form-header h1 {
            font-size: 28px;
            font-weight: 700;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
        }
        
        .form-content {
            padding: 40px;
        }
        
        .form-group {
            margin-bottom: 25px;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #374151;
            font-size: 14px;
        }
        
        .input-wrapper {
            position: relative;
        }
        
        .input-icon {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #9ca3af;
        }
        
        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 14px 14px 14px 45px;
            border: 2px solid #e5e7eb;
            border-radius: 10px;
            font-size: 15px;
            transition: all 0.3s ease;
            font-family: 'Inter', sans-serif;
        }
        
        input[type="text"]:focus,
        input[type="email"]:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }
        
        .button-group {
            display: flex;
            gap: 12px;
            margin-top: 30px;
        }
        
        .btn {
            flex: 1;
            padding: 14px 24px;
            text-decoration: none;
            border-radius: 10px;
            font-weight: 600;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            border: none;
            cursor: pointer;
            font-size: 15px;
            font-family: 'Inter', sans-serif;
        }
        
        .btn-save {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }
        
        .btn-save:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(102, 126, 234, 0.4);
        }
        
        .btn-cancel {
            background: #f3f4f6;
            color: #6b7280;
        }
        
        .btn-cancel:hover {
            background: #e5e7eb;
        }
        
        .required {
            color: #ef4444;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <div class="form-header">
            <h1>
                <i class="fas ${student != null ? 'fa-user-edit' : 'fa-user-plus'}"></i>
                ${student != null ? 'Edit Student' : 'Add New Student'}
            </h1>
        </div>
        
        <div class="form-content">
            <form action="students" method="post">
                <input type="hidden" name="action" value="${student != null ? 'update' : 'save'}">
                <c:if test="${student != null}">
                    <input type="hidden" name="id" value="${student.id}">
                </c:if>
                
                <div class="form-group">
                    <label for="name">Full Name <span class="required">*</span></label>
                    <div class="input-wrapper">
                        <i class="fas fa-user input-icon"></i>
                        <input type="text" id="name" name="name" value="${student.name}" 
                               placeholder="Enter student's full name" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="email">Email Address <span class="required">*</span></label>
                    <div class="input-wrapper">
                        <i class="fas fa-envelope input-icon"></i>
                        <input type="email" id="email" name="email" value="${student.email}" 
                               placeholder="student@example.com" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="course">Course <span class="required">*</span></label>
                    <div class="input-wrapper">
                        <i class="fas fa-book input-icon"></i>
                        <input type="text" id="course" name="course" value="${student.course}" 
                               placeholder="e.g., Computer Science" required>
                    </div>
                </div>
                
                <div class="button-group">
                    <button type="submit" class="btn btn-save">
                        <i class="fas fa-save"></i> Save Student
                    </button>
                    <a href="students?action=list" class="btn btn-cancel">
                        <i class="fas fa-times"></i> Cancel
                    </a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
