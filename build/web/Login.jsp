<%-- 
    Document   : Login
    Created on : Dec 12, 2024, 7:47:54 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login & Signup</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

/*        body {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(120deg, #3498db, #8e44ad);
            padding: 20px;
        }
        */


        .container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .tabs {
            display: flex;
            margin-bottom: 25px;
            border-bottom: 2px solid #eee;
        }

        .tab {
            flex: 1;
            padding: 15px;
            text-align: center;
            cursor: pointer;
            font-weight: bold;
            color: #777;
            transition: all 0.3s;
        }

        .tab.active {
            color: #3498db;
            border-bottom: 2px solid #3498db;
            margin-bottom: -2px;
        }

        .form-container form {
            display: none;
        }

        .form-container form.active {
            display: block;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group label {
            display: block;
            margin-bottom: 5px;
            color: #555;
            font-size: 14px;
        }

        .input-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            transition: border-color 0.3s;
        }

        .input-group input:focus {
            border-color: #3498db;
            outline: none;
        }

        button {
            width: 100%;
            padding: 12px;
            background: #3498db;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s;
        }

        button:hover {
            background: #2980b9;
        }

        .forgot-password {
            text-align: right;
            margin-bottom: 20px;
        }

        .forgot-password a {
            color: #3498db;
            text-decoration: none;
            font-size: 14px;
        }

        @media (max-width: 480px) {
            .container {
                padding: 20px;
            }
        }
    </style>
</head>
<body>


<%@include file="Include/header.jsp" %>
    
    
    <div class="container">
        <div class="tabs">
            <div class="tab active" onclick="switchTab('login')">Login</div>
            <div class="tab" onclick="switchTab('signup')">Sign Up</div>
        </div>
        
        <div class="form-container">
            <form id="loginForm" class="active">
                <div class="input-group">
                    <label for="loginEmail">Email</label>
                    <input type="email" id="loginEmail" required>
                </div>
                <div class="input-group">
                    <label for="loginPassword">Password</label>
                    <input type="password" id="loginPassword" required>
                </div>
                <div class="forgot-password">
                    <a href="#">Forgot Password?</a>
                </div>
                <button type="submit">Login</button>
            </form>

            <form id="signupForm">
                <div class="input-group">
                    <label for="signupName">Full Name</label>
                    <input type="text" id="signupName" required>
                </div>
                <div class="input-group">
                    <label for="signupEmail">Email</label>
                    <input type="email" id="signupEmail" required>
                </div>
                <div class="input-group">
                    <label for="signupPassword">Password</label>
                    <input type="password" id="signupPassword" required>
                </div>
                <div class="input-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <input type="password" id="confirmPassword" required>
                </div>
                <button type="submit">Sign Up</button>
            </form>
        </div>
    </div>

    <script>
        function switchTab(tab) {
            // Update tabs
            document.querySelectorAll('.tab').forEach(t => t.classList.remove('active'));
            event.target.classList.add('active');
            
            // Update forms
            document.querySelectorAll('form').forEach(f => f.classList.remove('active'));
            if (tab === 'login') {
                document.getElementById('loginForm').classList.add('active');
            } else {
                document.getElementById('signupForm').classList.add('active');
            }
        }
    </script>
    <%@include file="Include/footer.jsp"%>
</body>
</html>