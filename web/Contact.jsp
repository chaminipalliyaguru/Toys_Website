<%-- 
    Document   : Contact
    Created on : Dec 12, 2024, 12:58:35 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - ToyLand</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

       

        .page-header {
            padding: 3rem 2rem;
            text-align: center;
        }

        .page-header h1 {
            font-size: 2.5rem;
            color: #333;
            margin-bottom: 1rem;
        }

        .contact-section {
            max-width: 1200px;
            margin: 4rem auto;
            padding: 0 2rem;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 4rem;
        }

        @media (max-width: 768px) {
            .contact-section {
                grid-template-columns: 1fr;
            }
        }

        .contact-form {
            background-color: #f8f9fa;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            color: #333;
            font-weight: bold;
        }

        .form-group input,
        .form-group textarea,
        .form-group select {
            width: 100%;
            padding: 0.8rem;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
        }

        .form-group textarea {
            height: 150px;
            resize: vertical;
        }

        .submit-btn {
            background-color: #ff6b6b;
            color: white;
            padding: 1rem 2rem;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #ff5252;
        }

        .contact-info {
            padding: 2rem;
        }

        .info-card {
            background: white;
            padding: 1.5rem;
            border-radius: 8px;
            margin-bottom: 1.5rem;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .info-card h3 {
            color: #ff6b6b;
            margin-bottom: 1rem;
        }

        .info-card p {
            margin-bottom: 0.5rem;
            color: #666;
        }

        .social-links {
            display: flex;
            gap: 1rem;
            margin-top: 1rem;
        }

        .social-links a {
            color: #ff6b6b;
            text-decoration: none;
            font-weight: bold;
        }

        .map-section {
            margin-top: 4rem;
            padding: 0 2rem;
        }

        .map-container {
            max-width: 1200px;
            margin: 0 auto;
            background: #f8f9fa;
            padding: 2rem;
            border-radius: 8px;
        }

        .map-placeholder {
            background: #ddd;
            height: 400px;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #666;
        }

        .faq-section {
            max-width: 1200px;
            margin: 4rem auto;
            padding: 0 2rem;
        }

        .faq-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .faq-item {
            background: white;
            padding: 1.5rem;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .faq-item h3 {
            color: #333;
            margin-bottom: 1rem;
        }

        
    </style>
</head>
<body>

<%@include file="Include/header.jsp"%> 

    <section class="page-header">
        <h1>Contact Us</h1>
        <p>We'd love to hear from you! Get in touch with any questions or concerns.</p>
    </section>

    <section class="contact-section">
        <div class="contact-form">
            <h2>Send us a Message</h2>
            <form action="#" method="POST">
                <div class="form-group">
                    <label for="name">Your Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="subject">Subject</label>
                    <select id="subject" name="subject" required>
                        <option value="">Select a subject</option>
                        <option value="general">General Inquiry</option>
                        <option value="support">Product Support</option>
                        <option value="order">Order Status</option>
                        <option value="returns">Returns & Refunds</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="message">Your Message</label>
                    <textarea id="message" name="message" required></textarea>
                </div>
                <button type="submit" class="submit-btn">Send Message</button>
            </form>
        </div>

        <div class="contact-info">
            <div class="info-card">
                <h3>Store Location</h3>
                <p>123 Toy Street</p>
                <p>Toytown, ST 12345</p>
                <p>United States</p>
            </div>
            <div class="info-card">
                <h3>Contact Information</h3>
                <p>Phone: (555) 123-4567</p>
                <p>Email: info@toyland.com</p>
                <p>Customer Service Hours:</p>
                <p>Monday - Friday: 9am - 6pm</p>
                <p>Saturday: 10am - 4pm</p>
            </div>
            <div class="info-card">
                <h3>Connect With Us</h3>
                <p>Follow us on social media for updates and special offers!</p>
                <div class="social-links">
                    <a href="#facebook">Facebook</a>
                    <a href="#instagram">Instagram</a>
                    <a href="#twitter">Twitter</a>
                </div>
            </div>
        </div>
    </section>

    <section class="map-section">
        <div class="map-container">
            <h2 style="margin-bottom: 1rem;">Find Us</h2>
            <div class="map-placeholder">
                [Map Location]
            </div>
        </div>
    </section>

    <section class="faq-section">
        <h2 style="text-align: center;">Frequently Asked Questions</h2>
        <div class="faq-grid">
            <div class="faq-item">
                <h3>What is your return policy?</h3>
                <p>We offer a 30-day return policy for all unused items in their original packaging.</p>
            </div>
            <div class="faq-item">
                <h3>How can I track my order?</h3>
                <p>Once your order ships, you'll receive a tracking number via email to monitor your delivery.</p>
            </div>
            <div class="faq-item">
                <h3>Do you ship internationally?</h3>
                <p>Yes, we ship to most countries worldwide. Shipping costs vary by location.</p>
            </div>
        </div>
    </section>

<%@include file="Include/footer.jsp"%>
</body>
</html>