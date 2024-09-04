
<%@page isErrorPage="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
        <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f8f9fa;
        }

        .container {
            text-align: center;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-family: 'Arial', sans-serif;
            color: #333;
            margin-top: 20px;
        }

        .error-image {
            max-width: 550px;
            height: auto;
        }
        button {
            padding: 10px 20px;
            color: black;
            background-color: #ff7f50;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #ff4500;
        }
    </style>
    </head>
    <body style="background-color: #e2e2e2;background: darkslateblue">
        <div class="container">
        <img src="soon.png" alt="Error Image" class="error-image">
        <h1>Feature comming soon.....</h1>
        
        <form action="index.jsp">
        <button type="submit">Home</button>
        </form>
    </div>
    </body>
</html>
