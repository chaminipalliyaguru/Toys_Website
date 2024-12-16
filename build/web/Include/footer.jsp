<%-- 
    Document   : footer
    Created on : Dec 16, 2024, 3:21:10 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
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
<footer>
        <div class="footer-content">
            <div class="footer-section">
                <h3>About Us</h3>
                <p>ToyLand is your one-stop shop for quality toys and games for all ages.</p>
            </div>
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#shop">Shop</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li><a href="#faq">FAQ</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h3>Contact Us</h3>
                <ul>
                    <li>Email: info@toyland.com</li>
                    <li>Phone: (555) 123-4567</li>
                    <li>Address: 123 Toy Street</li>
                </ul>
            </div>
        </div>
    </footer>
    </body>
</html>
