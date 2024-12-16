<%-- 
    Document   : header
    Created on : Dec 16, 2024, 3:06:04 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                <li><a href="Login.jsp">Login</a></li>
                </ul>
            </nav>
        </div>
    </header>
        </section>
    </body>
</html>
