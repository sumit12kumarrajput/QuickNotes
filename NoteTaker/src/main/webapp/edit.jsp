<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Note</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #d7e9f7, #ffffff);
            margin: 0;
            padding: 0;
            padding-top: 60px; /* Add padding to prevent content overlap with navbar */
        }

        

        h1 {
            background-color: #1E90FF;
            color: white;
            padding: 15px;
            border-radius: 8px;
            text-align: center;
            width: 500px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-top: 60px;
            margin-left:330px;
            animation: fadeIn 1s ease-in-out;
        }

        form {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 500px;
            animation: fadeIn 1s ease-in-out;
            margin-top: 20px;
            margin-left:316px;
            
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 12px;
            font-size: 18px;
            color: #333333;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input[type="text"]:focus,
        textarea:focus {
            border-color: #1E90FF;
            box-shadow: 0 0 8px rgba(30, 144, 255, 0.5);
        }

        textarea {
            height: 150px;
            resize: none;
        }

        button {
            background-color: green;
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        button:hover {
            background-color: #4682B4;
            transform: scale(1.05);
        }

        button:active {
            background-color: #00BFFF;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <%@include file="Navbar.jsp" %>
    <h1>Edit Your Note:</h1>
    <%
        int id = Integer.parseInt(request.getParameter("id").trim());
        Session s = FactoryProvider.getFactory().openSession();
        Note note = (Note) s.get(Note.class, id);
    %>
    <form action="editservlet" method="post">
    <input value="<%= id=note.getId() %>" name="noteid" type="hidden"/>
        <label for="title">Title</label>
        <input type="text" class="form-control" required id="title" placeholder="Enter title here" name="title" value="<%= note.getTitle() %>"><br>
        <label for="content">Note Content</label>
        <textarea required id="content" class="form-control" placeholder="Enter your content here" name="content"><%= note.getContent() %></textarea><br>
        <button type="submit">Save</button>
    </form>
</body>
</html>
