<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="user.module.DbConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email = request.getParameter("signupEmail");
    String password = request.getParameter("signupPassword");
    String errorMessage = null;
    
if(email != null && password != null){
    try{    
        
        if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
                response.sendRedirect("admin/dashboard.jsp");
                return;
            }
        
        Connection connection = DbConnector.getConnection();
String query = "SELECT * FROM user WHERE email = ? AND password = ?";
PreparedStatement pstmt = connection.prepareStatement(query);
pstmt.setString(1, email);
pstmt.setString(2, password);
ResultSet resultSet = pstmt.executeQuery();

if(resultSet.next()){
    
    response.sendRedirect("index.html");
    
}else{
    errorMessage = "Invalid credentials.";
    response.sendRedirect("Login.jsp");
   return;
   }
}catch(Exception e){
    e.printStackTrace();
    errorMessage = "An error occurred. please try again.";
}

}

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
         <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: Arial, sans-serif;
            }

            header {
                background-color: #3e82c6;
                padding: 1rem;
                color: white;
                border-radius: 15px;
            }

            .top-bar {
                display: flex;
                justify-content: space-between;
                align-items: center;
                max-width: 1200px;
                margin: 0 auto;
            }

            .logo {
                font-size: 2rem;
                font-weight: bold;
            }

            nav ul {
                display: flex;
                list-style: none;
                gap: 2rem;
            }

            nav a {
                color: white;
                text-decoration: none;
                font-weight: bold;
            }

            .hero {
                padding: 4rem 2rem;
                background-image: url('Images/bg.jpg');
                background-size: cover;
            }

            .hero h1 {
                font-size: 3rem;
                margin-top: 2rem;
                margin-bottom: 1rem;
                color: #333;
            }

            .hero p {
                font-size: 1.2rem;
                margin-bottom: 2rem;
                color: #555;
            }

            .cta-button {
                background-color: #ff6b6b;
                color: white;
                padding: 1rem 2rem;
                border-radius: 25px;
                text-decoration: none;
                font-weight: bold;
                display: inline-block;
            }

            .featured {
                max-width: 1200px;
                margin: 4rem auto;
                padding: 0 2rem;
            }

            .featured h2 {
                text-align: center;
                margin-bottom: 2rem;
                color: #333;
            }

            .products {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                gap: 2rem;
            }

            .product-card {
                border: 1px solid #ddd;
                border-radius: 8px;
                padding: 1rem;
                text-align: center;
            }

            .product-card img {
                width: 100%;
                max-width: 200px;
                height: 200px;
                object-fit: cover;
                border-radius: 8px;
                margin-bottom: 1rem;
            }

            .categories {
                background-color: #f8f9fa;
                padding: 4rem 2rem;
                text-align: center;
            }

            .categories h2 {
                margin-bottom: 2rem;
                color: #333;
            }

            .category-grid {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
                gap: 2rem;
                max-width: 1200px;
                margin: 0 auto;
            }

            .category-card {
                background-color: white;
                padding: 2rem;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }

            footer {
                background-color: #333;
                color: white;
                padding: 2rem;
                margin-top: 4rem;
            }

            .footer-content {
                max-width: 1200px;
                margin: 0 auto;
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
                gap: 2rem;
            }

            .footer-section h3 {
                margin-bottom: 1rem;
            }

            .footer-section ul {
                list-style: none;
            }

            .footer-section ul li {
                margin-bottom: 0.5rem;
            }

            .footer-section a {
                color: white;
                text-decoration: none;
            }



            .form-container {
                background-color: #f5dc05;
                padding: 2rem;
                border-radius: 10px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                width: 100%;
                max-width: 500px;
                margin-left: 35rem;
                margin-top: 3rem;
            }

            .form-container h2 {
                text-align: center;
                margin-bottom: 2rem;
                color: #333;
            }

            table {
                width: 100%;
                border-spacing: 0 1rem;
            }

            td {
                font-size: 1rem;
                padding: 0.5rem;
            }

            input[type="text"],
            input[type="email"],
            input[type="password"] {
                width: 100%;
                padding: 0.8rem;
                margin-top: 0.5rem;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 1rem;
                outline: none;
            }

            input[type="submit"] {
                background-color: #3e82c6;
                color: white;
                border: none;
                padding: 1rem;
                font-size: 1rem;
                border-radius: 5px;
                cursor: pointer;
                width: 100%;
                margin-top: 1px;
            }

            input[type="submit"]:hover {
                background-color: #1e5b8f;
            }

            input[type="submit"]:focus {
                outline: none;
            }

        </style>

    </head>
    <body>
        <section class="hero">
            <header>
                <div class="top-bar">
                    <div class="logo">ToyLand</div>
                    <nav>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="NewArrivals.jsp">New Arrivals</a></li>
                            <li><a href="About.jsp">About</a></li>
                            <li><a href="Contact.jsp">Contact</a></li>
                            <li><a href="Register.html">Login</a></li>
                        </ul>
                    </nav>
                </div>
            </header>
        </section>
        <form method="POST" action="Login.jsp">
            <div class="form-container">
                <table>               
                    
                    <h1>Login Form</h1>

                    
        
                    <tr>
                        <td>Email:</td>
                        <td><input type="email" name="signupEmail"/></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="signupPassword"/></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td><input type="submit" name="Login"/></td>
                    </tr>
                    
                </table>
                <p>If you don't have an account?<a href="Register.html">Please sign up</a></p>
            </div>
        </form>
 <% 
     if(errorMessage != null) { 
 %>
            <p style="color:red;"><%= errorMessage %></p>
        <% } 
        %>    
            
        
    </body>
</html>
