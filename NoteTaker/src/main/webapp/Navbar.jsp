
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Animated Navbar</title>
    <style>
        /* Navbar container */
        .navbar {
            background-color: #1E90FF; /* Navbar background color */
            overflow: hidden;
            animation: slideIn 1s ease-out; /* Slide-in animation */
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000; /* Ensure it appears on top */
        }

        /* Navbar links */
        .navbar a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 17px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        /* Navbar links on hover */
        .navbar a:hover {
            background-color: #4682B4; /* Hover background color */
            color: #ffffff;
            transform: scale(1.1); /* Scale effect on hover */
        }

        /* Active/current link */
        .navbar a.active {
            background-color: #00BFFF; /* Active link background color */
            color: white;
            animation: pulse 1s infinite; /* Pulse animation on active link */
        }

        /* Right-aligned links */
        .navbar-right {
            float: right;
        }

        /* Responsive navbar */
        @media screen and (max-width: 600px) {
            .navbar a, .navbar-right {
                float: none;
                display: block;
                text-align: left;
            }
        }

        /* Slide-in animation for navbar */
        @keyframes slideIn {
            from {
                transform: translateY(-100%);
            }
            to {
                transform: translateY(0);
            }
        }

        /* Pulse animation for active link */
        @keyframes pulse {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.1);
            }
            100% {
                transform: scale(1);
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a href="index.jsp" class="active">Home</a>
        <a href="AddNotes.jsp">Add Notes</a>
        <a href="allnotes.jsp">Show Notes</a>
        <a href="contact.jsp">Contact Us</a>
        <div class="navbar-right">
            <a href="pagenotfound.jsp">Login</a>
            <a href="pagenotfound.jsp">Sign Up</a>
        </div>
    </div>

</body>
</html>
