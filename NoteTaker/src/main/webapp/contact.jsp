<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Me</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #2c3e50, #34495e);
        color: #ecf0f1;
        text-align: center;
        margin: 0;
        padding: 0;
    }
    .navbar {
        background-color: #e74c3c;
        padding: 10px;
        text-align: center;
    }
    .navbar a {
        text-decoration: none;
        color: #ecf0f1;
        font-size: 1.2em;
        padding: 10px 20px;
        border-radius: 5px;
        display: inline-block;
        transition: background-color 0.3s ease;
    }
    .navbar a:hover {
        background-color: #c0392b;
    }
    h5 {
        margin: 20px;
        font-size: 1.2em;
        color: #ecf0f1;
    }
    a {
        text-decoration: none;
        color: #1abc9c;
        transition: color 0.3s ease;
    }
    a:hover {
        color: #16a085;
    }
    .icon {
        margin-right: 8px;
        color: #1abc9c;
    }
    .contact-info {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding: 20px;
    }
    .contact-item {
        margin: 15px 0;
        display: flex;
        align-items: center;
        font-size: 1.2em;
        transition: transform 0.3s ease;
    }
    .contact-item:hover {
        transform: scale(1.05);
    }
</style>
</head>
<body>

<div class="navbar">
    <a href="index.jsp">Home</a>
</div>

<div class="contact-info">
    <div class="contact-item">
        <i class="fas fa-phone icon"></i>
        <h5>Contact No. -> 8171767925</h5>
    </div>
    <div class="contact-item">
        <i class="fas fa-envelope icon"></i>
        <h5>Email -> <a href="mailto:sumit12kumarrajput@gmail.com">sumit12kumarrajput@gmail.com</a></h5>
    </div>
    <div class="contact-item">
        <i class="fab fa-linkedin icon"></i>
        <h5><a href="https://www.linkedin.com/in/sumit12kumarrajput/" target="_blank" rel="noopener noreferrer">LinkedIn</a></h5>
    </div>
    <div class="contact-item">
        <i class="fab fa-github icon"></i>
        <h5><a href="https://github.com/sumit12kumarrajput" target="_blank" rel="noopener noreferrer">Github</a></h5>
    </div>
</div>

</body>
</html>
