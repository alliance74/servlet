<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Form</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input[type="text"], input[type="email"] { width: 300px; padding: 8px; }
        .btn { padding: 10px 20px; background-color: #4CAF50; color: white; border: none; cursor: pointer; }
        .btn:hover { background-color: #45a049; }
        .btn-cancel { background-color: #f44336; margin-left: 10px; }
    </style>
</head>
<body>
    <h1>${student != null ? 'Edit Student' : 'Add New Student'}</h1>
    
    <form action="students" method="post">
        <input type="hidden" name="action" value="${student != null ? 'update' : 'save'}">
        <c:if test="${student != null}">
            <input type="hidden" name="id" value="${student.id}">
        </c:if>
        
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${student.name}" required>
        </div>
        
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${student.email}" required>
        </div>
        
        <div class="form-group">
            <label for="course">Course:</label>
            <input type="text" id="course" name="course" value="${student.course}" required>
        </div>
        
        <button type="submit" class="btn">Save</button>
        <a href="students?action=list" class="btn btn-cancel">Cancel</a>
    </form>
</body>
</html>
