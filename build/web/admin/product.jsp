<%-- 
    Document   : product
    Created on : Dec 27, 2024, 2:56:48 PM
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
            /* Include previous base styles */
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
                --danger-color: #dc3545;
                --success-color: #28a745;
            }

            /* Reuse previous styles for sidebar and layout */
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

            /* Products Page Specific Styles */
            .products-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
            }

            .add-product-btn {
                background-color: var(--primary-color);
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 1rem;
                display: flex;
                align-items: center;
                gap: 8px;
            }

            .products-grid {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
                gap: 20px;
                margin-bottom: 20px;
            }

            .product-card {
                background-color: white;
                border-radius: 8px;
                padding: 15px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .product-image {
                width: 100%;
                height: 200px;
                object-fit: cover;
                border-radius: 4px;
                margin-bottom: 15px;
            }

            .product-details h3 {
                margin-bottom: 10px;
                color: var(--text-color);
            }

            .product-price {
                font-size: 1.2rem;
                color: var(--primary-color);
                font-weight: bold;
                margin-bottom: 10px;
            }

            .product-actions {
                display: flex;
                gap: 10px;
                margin-top: 15px;
            }

            .edit-btn, .delete-btn {
                padding: 8px 16px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-size: 0.9rem;
                display: flex;
                align-items: center;
                gap: 5px;
            }

            .edit-btn {
                background-color: var(--secondary-color);
                color: var(--text-color);
            }

            .delete-btn {
                background-color: #ffe5e5;
                color: var(--danger-color);
            }

            /* Modal Styles */
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
                max-width: 600px;
                position: relative;
            }

            .close-modal {
                position: absolute;
                top: 15px;
                right: 15px;
                background: none;
                border: none;
                font-size: 1.5rem;
                cursor: pointer;
                color: #666;
            }

            .form-group {
                margin-bottom: 20px;
            }

            .form-group label {
                display: block;
                margin-bottom: 8px;
                color: var(--text-color);
            }

            .form-group input,
            .form-group textarea,
            .form-group select {
                width: 100%;
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 4px;
                font-size: 1rem;
            }

            .form-group textarea {
                height: 100px;
                resize: vertical;
            }

            .form-actions {
                display: flex;
                justify-content: flex-end;
                gap: 10px;
                margin-top: 20px;
            }

            .save-btn {
                background-color: var(--success-color);
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            .cancel-btn {
                background-color: #eee;
                color: #666;
                padding: 10px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            /* Stock Status Badge */
            .stock-status {
                display: inline-block;
                padding: 4px 8px;
                border-radius: 12px;
                font-size: 0.8rem;
                font-weight: 500;
            }

            .in-stock {
                background-color: #e8f5e9;
                color: #2e7d32;
            }

            .low-stock {
                background-color: #fff3e0;
                color: #ef6c00;
            }

            .out-of-stock {
                background-color: #ffebee;
                color: #c62828;
            }

            @media (max-width: 768px) {
                .sidebar {
                    width: 70px;
                    padding: 10px;
                }

                .products-grid {
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
            <div class="products-header">
                <h1>Products Management</h1>
                <button class="add-product-btn" onclick="openModal('add')">
                    <i class="fas fa-plus"></i> Add New Product
                </button>
            </div>

            <!-- Products Grid -->
            <div class="products-grid">
                <!-- Product Card 1 -->
                <div class="product-card">
                    <img src="/api/placeholder/300/200" alt="Remote Control Car" class="product-image">
                    <div class="product-details">
                        <h3>Remote Control Car</h3>
                        <div class="product-price">$99.99</div>
                        <span class="stock-status in-stock">In Stock (15)</span>
                        <p>High-speed remote control car with realistic details and durable construction.</p>
                        <div class="product-actions">
                            <button class="edit-btn" onclick="openModal('edit')">
                                <i class="fas fa-edit"></i> Edit
                            </button>
                            <button class="delete-btn" onclick="confirmDelete()">
                                <i class="fas fa-trash"></i> Delete
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Product Card 2 -->
                <div class="product-card">
                    <img src="/api/placeholder/300/200" alt="LEGO Set" class="product-image">
                    <div class="product-details">
                        <h3>LEGO City Police Station</h3>
                        <div class="product-price">$159.99</div>
                        <span class="stock-status low-stock">Low Stock (3)</span>
                        <p>Build and play with this amazing LEGO City Police Station set.</p>
                        <div class="product-actions">
                            <button class="edit-btn" onclick="openModal('edit')">
                                <i class="fas fa-edit"></i> Edit
                            </button>
                            <button class="delete-btn" onclick="confirmDelete()">
                                <i class="fas fa-trash"></i> Delete
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Product Card 3 -->
                <div class="product-card">
                    <img src="/api/placeholder/300/200" alt="Barbie Doll" class="product-image">
                    <div class="product-details">
                        <h3>Barbie Dreamhouse Set</h3>
                        <div class="product-price">$199.99</div>
                        <span class="stock-status out-of-stock">Out of Stock</span>
                        <p>Complete Barbie Dreamhouse set with furniture and accessories.</p>
                        <div class="product-actions">
                            <button class="edit-btn" onclick="openModal('edit')">
                                <i class="fas fa-edit"></i> Edit
                            </button>
                            <button class="delete-btn" onclick="confirmDelete()">
                                <i class="fas fa-trash"></i> Delete
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Add/Edit Product Modal -->
            <div class="modal" id="productModal">
                <div class="modal-content">
                    <button class="close-modal" onclick="closeModal()">&times;</button>
                    <h2 id="modalTitle">Add New Product</h2>
                    <form id="productForm">
                        <div class="form-group">
                            <label for="productName">Product Name</label>
                            <input type="text" id="productName" required>
                        </div>
                        <div class="form-group">
                            <label for="productPrice">Price ($)</label>
                            <input type="number" id="productPrice" step="0.01" required>
                        </div>
                        <div class="form-group">
                            <label for="productStock">Stock Quantity</label>
                            <input type="number" id="productStock" required>
                        </div>
                        <div class="form-group">
                            <label for="productCategory">Category</label>
                            <select id="productCategory" required>
                                <option value="">Select Category</option>
                                <option value="vehicles">Vehicles</option>
                                <option value="dolls">Dolls</option>
                                <option value="building">Building Sets</option>
                                <option value="educational">Educational</option>
                                <option value="outdoor">Outdoor</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="productDescription">Description</label>
                            <textarea id="productDescription" required></textarea>
                        </div>
                        <div class="form-group">
                            <label for="productImage">Product Image</label>
                            <input type="file" id="productImage" accept="image/*">
                        </div>
                        <div class="form-actions">
                            <button type="button" class="cancel-btn" onclick="closeModal()">Cancel</button>
                            <button type="submit" class="save-btn">Save Product</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script>
            // Modal functionality
            function openModal(type) {
                const modal = document.getElementById('productModal');
                const modalTitle = document.getElementById('modalTitle');

                modalTitle.textContent = type === 'add' ? 'Add New Product' : 'Edit Product';
                modal.classList.add('active');

                if (type === 'edit') {
                    // Pre-fill form with product data (demo purposes)
                    document.getElementById('productName').value = 'Remote Control Car';
                    document.getElementById('productPrice').value = '99.99';
                    document.getElementById('productStock').value = '15';
                    document.getElementById('productCategory').value = 'vehicles';
                    document.getElementById('productDescription').value = 'High-speed remote control car with realistic details and durable construction.';
                }
            }

            function closeModal() {
                const modal = document.getElementById('productModal');
                modal.classList.remove('active');
                document.getElementById('productForm').reset();
            }

            function confirmDelete() {
                if (confirm('Are you sure you want to delete this product?')) {
                    // Handle delete action
                    alert('Product deleted successfully!');
                }
            }

            // Form submission
            document.getElementById('productForm').addEventListener('submit', function (e) {
                e.preventDefault();
                // Handle form submission
                alert('Product saved successfully!');
                closeModal();
            });
        </script>
    </body>
</html>
