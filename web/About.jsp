<%-- 
    Document   : About
    Created on : Dec 12, 2024, 12:55:51 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - ToyLand</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        header {
            background-color: #ff6b6b;
            padding: 1rem;
            color: white;
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

        .hero-section {
            background-color: #ffd93d;
            padding: 4rem 2rem;
            text-align: center;
        }

        .hero-section h1 {
            font-size: 3rem;
            color: #333;
            margin-bottom: 1rem;
        }

        .hero-section p {
            font-size: 1.2rem;
            color: #555;
            max-width: 800px;
            margin: 0 auto;
        }

        .our-story {
            max-width: 1200px;
            margin: 4rem auto;
            padding: 0 2rem;
        }

        .story-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 3rem;
            align-items: center;
        }

        @media (max-width: 768px) {
            .story-content {
                grid-template-columns: 1fr;
            }
        }

        .story-image {
            border-radius: 10px;
            overflow: hidden;
        }

        .story-image img {
            width: 100%;
            height: 400px;
            object-fit: cover;
        }

        .story-text h2 {
            color: #333;
            font-size: 2rem;
            margin-bottom: 1.5rem;
        }

        .story-text p {
            color: #666;
            line-height: 1.6;
            margin-bottom: 1rem;
        }

        .values-section {
            background-color: #f8f9fa;
            padding: 4rem 2rem;
        }

        .values-container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .values-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .value-card {
            background: white;
            padding: 2rem;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .value-card h3 {
            color: #ff6b6b;
            margin: 1rem 0;
        }

        .team-section {
            max-width: 1200px;
            margin: 4rem auto;
            padding: 0 2rem;
            text-align: center;
        }

        .team-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .team-member {
            text-align: center;
        }

        .team-member img {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            margin-bottom: 1rem;
            object-fit: cover;
        }

        .stats-section {
            background-color: #ff6b6b;
            color: white;
            padding: 4rem 2rem;
            text-align: center;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 2rem auto 0;
        }

        .stat-item h3 {
            font-size: 2.5rem;
            margin-bottom: 0.5rem;
        }

        footer {
            background-color: #333;
            color: white;
            padding: 2rem;
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

    <section class="hero-section">
        <h1>Our Story</h1>
        <p>Bringing joy and imagination to children for over two decades</p>
    </section>

    <section class="our-story">
        <div class="story-content">
            <div class="story-image">
                <img src="/api/placeholder/600/400" alt="ToyLand Store">
            </div>
            <div class="story-text">
                <h2>How It All Started</h2>
                <p>Founded in 2000, ToyLand began as a small family-owned shop with a simple mission: to provide high-quality, educational, and fun toys that spark creativity and imagination in children of all ages.</p>
                <p>Over the years, we've grown from our humble beginnings into a trusted name in the toy industry, but our core values and commitment to bringing joy to children remain unchanged.</p>
                <p>Today, we carefully curate our selection of toys, working with responsible manufacturers and focusing on products that combine fun with learning, creativity with development, and quality with value.</p>
            </div>
        </div>
    </section>

    <section class="values-section">
        <div class="values-container">
            <h2 style="text-align: center; margin-bottom: 2rem;">Our Values</h2>
            <div class="values-grid">
                <div class="value-card">
                    <h3>Quality First</h3>
                    <p>We ensure all our toys meet the highest safety and quality standards</p>
                </div>
                <div class="value-card">
                    <h3>Educational Focus</h3>
                    <p>Every toy is selected with learning and development in mind</p>
                </div>
                <div class="value-card">
                    <h3>Customer Care</h3>
                    <p>We're committed to providing exceptional service to every customer</p>
                </div>
                <div class="value-card">
                    <h3>Sustainability</h3>
                    <p>We prioritize eco-friendly toys and sustainable practices</p>
                </div>
            </div>
        </div>
    </section>

    <section class="team-section">
        <h2>Meet Our Team</h2>
        <div class="team-grid">
            <div class="team-member">
                <img src="/api/placeholder/200/200" alt="Team Member 1">
                <h3>Sarah Johnson</h3>
                <p>Founder & CEO</p>
            </div>
            <div class="team-member">
                <img src="/api/placeholder/200/200" alt="Team Member 2">
                <h3>Michael Chen</h3>
                <p>Head of Product</p>
            </div>
            <div class="team-member">
                <img src="/api/placeholder/200/200" alt="Team Member 3">
                <h3>Emma Williams</h3>
                <p>Customer Experience</p>
            </div>
        </div>
    </section>

    <section class="stats-section">
        <div class="stats-grid">
            <div class="stat-item">
                <h3>20+</h3>
                <p>Years of Experience</p>
            </div>
            <div class="stat-item">
                <h3>50k+</h3>
                <p>Happy Customers</p>
            </div>
            <div class="stat-item">
                <h3>5000+</h3>
                <p>Products</p>
            </div>
            <div class="stat-item">
                <h3>100%</h3>
                <p>Satisfaction Guarantee</p>
            </div>
        </div>
    </section>

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