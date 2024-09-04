<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            background: linear-gradient(to right, #d7e9f7, #ffffff);
        }

        .home-button {
            position: absolute;
            top: 20px;
            left: 20px;
            background-color: #FF6347; /* Changed color to Tomato */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.3s ease;
            animation: slideIn 1s ease-in-out;
        }

        .home-button:hover {
            background-color: #FF4500; /* Darker shade on hover */
            transform: scale(1.1);
        }

        .home-button:active {
            background-color: #FF6347;
        }

        /* Slide-in animation for the home button */
        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateX(-100%);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
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
            background-color: #1E90FF;
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

    <a href="index.jsp" class="home-button">Home</a>

    <h1>Add Your Notes Here</h1>
    <form action="Save" method="post">
        <label for="title">Title</label>
        <input type="text" class="form-control" required id="title" placeholder="Enter title here" name="title"><br>
        <label for="content">Note Content</label>
        <textarea required id="content" class="form-control" placeholder="Enter your content here" name="content"></textarea><br>
        <button type="submit">Save</button>
    </form>

</body>
</html>
