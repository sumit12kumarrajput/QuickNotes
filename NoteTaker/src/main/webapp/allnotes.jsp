<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Notes</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        h1 {
            margin-top: 80px;
        }
        body {
            background: linear-gradient(135deg, #2c3e50, #4b79a1);
            color: #fff;
            font-family: Arial, sans-serif;
        }
        .card {
            position: relative; /* Ensure the card is positioned relative for absolute positioning inside */
            background: linear-gradient(135deg, #f8f9fa, #e9ecef);
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .card-title {
            color: #007bff;
        }
        .card-text {
            color: #000; /* Set the content text color to black */
        }
        .btn-custom {
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .btn-custom:hover {
            transform: translateY(-2px);
        }
        .btn-delete {
            background-color: #dc3545;
            border-color: #dc3545;
            color: #fff;
        }
        .btn-delete:hover {
            background-color: #c82333;
            border-color: #bd2130;
        }
        .btn-edit {
            background-color: #007bff;
            border-color: #007bff;
            color: #fff;
        }
        .btn-edit:hover {
            background-color: #0056b3;
            border-color: #004085;
        }
        .card-date {
            position: absolute;
            bottom: 10px;
            left: 10px;
            color: black;
            margin: 10px; /* Adjust as needed */
        }
    </style>
</head>
<body>
    <%@ include file="Navbar.jsp" %>
    <div class="container mt-5">
        <h1 class="mb-4 text-primary">All Notes:</h1>
        <div class="row">
            <div class="col-12">
                <div class="card-columns">
                    <%
                    Session s = FactoryProvider.getFactory().openSession();
                    Query q = s.createQuery("from Note");
                    List<Note> list = q.list();
                    
                    for(Note note : list) {
                    %>
                    <div class="card shadow-sm mb-4">
                        <div class="card-body">
                            <h5 class="card-title"><%= note.getTitle() %></h5>
                            <p class="card-text"><%= note.getContent() %></p>
                            <p class="card-date"><b><%= note.getDate() %></b></p> 
                            <div class="text-right">
                                <a href="edit.jsp?id=<%= note.getId() %>" class="btn btn-edit btn-custom">Edit</a>
                                <a href="DeleteServlet?id=<%= note.getId() %>" class="btn btn-delete btn-custom">Delete</a>
                            </div>
                        </div>
                    </div>
                    <%
                    }
                    
                    s.close();
                    %>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
