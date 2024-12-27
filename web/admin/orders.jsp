<%-- 
    Document   : orders
    Created on : Dec 27, 2024, 3:15:32 PM
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
        /* Include base styles from previous pages */
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
            --success-color: #28a745;
            --warning-color: #ffc107;
            --danger-color: #dc3545;
        }

        /* Layout styles */
        body {
            display: flex;
            min-height: 100vh;
            background-color: #f0f2f5;
        }

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
            
        .main-content {
            flex: 1;
            padding: 20px;
        }

        /* Orders page specific styles */
        .orders-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .orders-filters {
            display: flex;
            gap: 15px;
            margin-bottom: 20px;
            flex-wrap: wrap;
        }

        .filter-group {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .filter-group select, .filter-group input {
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .orders-table {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #eee;
        }

        th {
            background-color: var(--secondary-color);
            font-weight: 600;
            color: var(--text-color);
        }

        .status-badge {
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 0.9rem;
            font-weight: 500;
        }

        .status-pending {
            background-color: #fff3e0;
            color: #ef6c00;
        }

        .status-processing {
            background-color: #e3f2fd;
            color: #1976d2;
        }

        .status-shipped {
            background-color: #e8f5e9;
            color: #2e7d32;
        }

        .status-delivered {
            background-color: #e8f5e9;
            color: #2e7d32;
        }

        .status-cancelled {
            background-color: #ffebee;
            color: #c62828;
        }

        .action-buttons {
            display: flex;
            gap: 8px;
        }

        .btn {
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 0.9rem;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .btn-view {
            background-color: var(--secondary-color);
            color: var(--text-color);
        }

        .btn-edit {
            background-color: #e3f2fd;
            color: var(--primary-color);
        }

        /* Order Details Modal */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        .modal.active {
            display: flex;
        }

        .modal-content {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            width: 90%;
            max-width: 800px;
            max-height: 90vh;
            overflow-y: auto;
        }

        .order-details {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
            margin-bottom: 20px;
        }

        .detail-section {
            background-color: var(--secondary-color);
            padding: 15px;
            border-radius: 8px;
        }

        .detail-section h3 {
            margin-bottom: 10px;
            color: var(--text-color);
        }

        .order-items {
            margin-top: 20px;
        }

        .pagination {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            gap: 10px;
            margin-top: 20px;
        }

        .page-btn {
            padding: 8px 12px;
            border: 1px solid #ddd;
            background: white;
            border-radius: 4px;
            cursor: pointer;
        }

        .page-btn.active {
            background-color: var(--primary-color);
            color: white;
            border-color: var(--primary-color);
        }

        @media (max-width: 768px) {
            .sidebar {
                width: 70px;
                padding: 10px;
            }

            .orders-filters {
                flex-direction: column;
            }

            .order-details {
                grid-template-columns: 1fr;
            }

            .modal-content {
                width: 95%;
                padding: 20px;
            }
        }
    </style>
    </head>
    <body>
        <div class="sidebar">
        <div class="logo">
            <img src="/api/placeholder/40/40" alt="ToyLand Logo">
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
        <div class="orders-header">
            <h1>Orders Management</h1>
            <div class="export-btn">
                <button class="btn btn-view">
                    <i class="fas fa-download"></i> Export Orders
                </button>
            </div>
        </div>

        <!-- Filters -->
        <div class="orders-filters">
            <div class="filter-group">
                <label>Status:</label>
                <select>
                    <option value="">All Status</option>
                    <option value="pending">Pending</option>
                    <option value="processing">Processing</option>
                    <option value="shipped">Shipped</option>
                    <option value="delivered">Delivered</option>
                    <option value="cancelled">Cancelled</option>
                </select>
            </div>
            <div class="filter-group">
                <label>Date Range:</label>
                <input type="date">
                <span>to</span>
                <input type="date">
            </div>
            <div class="filter-group">
                <label>Search:</label>
                <input type="text" placeholder="Order ID or Customer">
            </div>
        </div>

        <!-- Orders Table -->
        <div class="orders-table">
            <table>
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer</th>
                        <th>Date</th>
                        <th>Total</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>#ORD-12345</td>
                        <td>John Doe</td>
                        <td>2024-12-27</td>
                        <td>$99.99</td>
                        <td><span class="status-badge status-processing">Processing</span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn btn-view" onclick="viewOrder()">
                                    <i class="fas fa-eye"></i> View
                                </button>
                                <button class="btn btn-edit">
                                    <i class="fas fa-edit"></i> Edit
                                </button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>#ORD-12346</td>
                        <td>Jane Smith</td>
                        <td>2024-12-27</td>
                        <td>$159.99</td>
                        <td><span class="status-badge status-delivered">Delivered</span></td>
                        <td>
                            <div class="action-buttons">
                                <button class="btn btn-view" onclick="viewOrder()">
                                    <i class="fas fa-eye"></i> View
                                </button>
                                <button class="btn btn-edit">
                                    <i class="fas fa-edit"></i> Edit
                                </button>
                            </div>
                        </td>
                    </tr>
                    <!-- More order rows -->
                </tbody>
            </table>
        </div>

        <!-- Pagination -->
        <div class="pagination">
            <button class="page-btn"><i class="fas fa-chevron-left"></i></button>
            <button class="page-btn active">1</button>
            <button class="page-btn">2</button>
            <button class="page-btn">3</button>
            <button class="page-btn"><i class="fas fa-chevron-right"></i></button>
        </div>

        <!-- Order Details Modal -->
        <div class="modal" id="orderModal">
            <div class="modal-content">
                <button class="close-modal" onclick="closeModal()">&times;</button>
                <h2>Order Details - #ORD-12345</h2>
                <div class="order-details">
                    <div class="detail-section">
                        <h3>Customer Information</h3>
                        <p><strong>Name:</strong> John Doe</p>
                        <p><strong>Email:</strong> john@example.com</p>
                        <p><strong>Phone:</strong> (555) 123-4567</p>
                    </div>
                    <div class="detail-section">
                        <h3>Shipping Address</h3>
                        <p>123 Main Street</p>
                        <p>Apt 4B</p>
                        <p>New York, NY 10001</p>
                    </div>
                </div>
                <div class="order-items">
                    <h3>Order Items</h3>
                    <table>
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Remote Control Car</td>
                                <td>1</td>
                                <td>$99.99</td>
                                <td>$99.99</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script>
        function viewOrder() {
            document.getElementById('orderModal').classList.add('active');
        }

        function closeModal() {
            document.getElementById('orderModal').classList.remove('active');
        }
    </script>
    </body>
</html>
