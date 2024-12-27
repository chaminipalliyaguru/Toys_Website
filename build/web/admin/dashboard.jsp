<%-- 
    Document   : admin
    Created on : Dec 26, 2024, 4:45:22 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            :root {
                --primary-color: #4a90e2;
                --secondary-color: #f5f6fa;
                --text-color: #2d3436;
                --sidebar-width: 250px;
            }

            body {
                display: flex;
                min-height: 100vh;
                background-color: #f0f2f5;
            }

            /* Sidebar Styles */
            .sidebar {
                width: var(--sidebar-width);
                background-color: white;
                padding: 20px;
                box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            }

            .logo {
                display: flex;
                align-items: center;
                gap: 10px;
                padding: 20px 0;
                border-bottom: 1px solid #eee;
                margin-bottom: 20px;
            }

            .logo img {
                width: 40px;
                height: 40px;
            }

            .logo h1 {
                font-size: 1.5rem;
                color: var(--primary-color);
            }

            .nav-links {
                list-style: none;
            }

            .nav-links li {
                margin-bottom: 10px;
            }

            .nav-links a {
                display: flex;
                align-items: center;
                gap: 10px;
                padding: 12px;
                color: var(--text-color);
                text-decoration: none;
                border-radius: 8px;
                transition: background-color 0.3s;
            }

            .nav-links a:hover {
                background-color: var(--secondary-color);
            }

            .nav-links i {
                width: 20px;
            }

            /* Main Content Styles */
            .main-content {
                flex: 1;
                padding: 20px;
            }

            .header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 30px;
            }

            .search-bar {
                display: flex;
                align-items: center;
                background-color: white;
                padding: 8px 16px;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .search-bar input {
                border: none;
                outline: none;
                padding: 8px;
                width: 300px;
            }

            .user-profile {
                display: flex;
                align-items: center;
                gap: 10px;
            }

            .user-profile img {
                width: 40px;
                height: 40px;
                border-radius: 50%;
            }

            /* Dashboard Cards */
            .dashboard-cards {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                gap: 20px;
                margin-bottom: 30px;
            }

            .card {
                background-color: white;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .card-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 15px;
            }

            .card-icon {
                width: 40px;
                height: 40px;
                background-color: var(--secondary-color);
                border-radius: 8px;
                display: flex;
                align-items: center;
                justify-content: center;
                color: var(--primary-color);
            }

            .card h3 {
                font-size: 1.8rem;
                margin: 10px 0;
            }

            .card p {
                color: #666;
            }

            /* Recent Orders Table */
            .recent-orders {
                background-color: white;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .table-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }

            th, td {
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #eee;
            }

            th {
                color: #666;
                font-weight: 600;
            }

            .status {
                padding: 6px 12px;
                border-radius: 20px;
                font-size: 0.9rem;
            }

            .status.delivered {
                background-color: #e1f8e1;
                color: #2e7d32;
            }

            .status.pending {
                background-color: #fff3e0;
                color: #ef6c00;
            }

            @media (max-width: 768px) {
                .sidebar {
                    width: 70px;
                    padding: 10px;
                }

                .logo h1, .nav-links span {
                    display: none;
                }

                .nav-links a {
                    justify-content: center;
                }

                .main-content {
                    margin-left: 70px;
                }
            }
        </style>
    </head>
    <body>
        <div class="sidebar">
            <div class="logo">
               
                <h1>ToyLand</h1>
            </div>
            <ul class="nav-links">
                <li><a href="dashboard.jsp"><i class="fas fa-home"></i><span>Dashboard</span></a></li>
                <li><a href="product.jsp"><i class="fas fa-box"></i><span>Products</span></a></li>
                <li><a href="orders.jsp"><i class="fas fa-shopping-cart"></i><span>Orders</span></a></li>
                <li><a href="#"><i class="fas fa-users"></i><span>Customers</span></a></li>
                <li><a href="#"><i class="fas fa-chart-bar"></i><span>Analytics</span></a></li>
                <li><a href="#"><i class="fas fa-cog"></i><span>Settings</span></a></li>
            </ul>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <div class="header">
                <div class="search-bar">
                    <i class="fas fa-search"></i>
                    <input type="text" placeholder="Search...">
                </div>
                <div class="user-profile">
                    <span>Admin User</span>
                    <img src="/api/placeholder/40/40" alt="Admin Profile">
                </div>
            </div>

            <!-- Dashboard Cards -->
            <div class="dashboard-cards">
                <div class="card">
                    <div class="card-header">
                        <div class="card-icon">
                            <i class="fas fa-shopping-bag"></i>
                        </div>
                    </div>
                    <h3>2,456</h3>
                    <p>Total Products</p>
                </div>
                <div class="card">
                    <div class="card-header">
                        <div class="card-icon">
                            <i class="fas fa-shopping-cart"></i>
                        </div>
                    </div>
                    <h3>1,234</h3>
                    <p>Total Orders</p>
                </div>
                <div class="card">
                    <div class="card-header">
                        <div class="card-icon">
                            <i class="fas fa-users"></i>
                        </div>
                    </div>
                    <h3>3,789</h3>
                    <p>Total Customers</p>
                </div>
                <div class="card">
                    <div class="card-header">
                        <div class="card-icon">
                            <i class="fas fa-dollar-sign"></i>
                        </div>
                    </div>
                    <h3>$45,678</h3>
                    <p>Total Revenue</p>
                </div>
            </div>

            <!-- Recent Orders -->
            <div class="recent-orders">
                <div class="table-header">
                    <h2>Recent Orders</h2>
                    <a href="#" style="color: var(--primary-color); text-decoration: none;">View All</a>
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Customer</th>
                            <th>Product</th>
                            <th>Date</th>
                            <th>Status</th>
                            <th>Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>#12345</td>
                            <td>John Doe</td>
                            <td>Remote Control Car</td>
                            <td>2024-12-27</td>
                            <td><span class="status delivered">Delivered</span></td>
                            <td>$99.99</td>
                        </tr>
                        <tr>
                            <td>#12346</td>
                            <td>Jane Smith</td>
                            <td>LEGO Set</td>
                            <td>2024-12-27</td>
                            <td><span class="status pending">Pending</span></td>
                            <td>$159.99</td>
                        </tr>
                        <tr>
                            <td>#12347</td>
                            <td>Mike Johnson</td>
                            <td>Barbie Doll</td>
                            <td>2024-12-26</td>
                            <td><span class="status delivered">Delivered</span></td>
                            <td>$29.99</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
