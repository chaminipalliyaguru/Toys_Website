<%-- 
    Document   : NewArrivals
    Created on : Dec 12, 2024, 12:48:03 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Arrivals - ToyLand</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        
        .page-header {
            padding: 2rem;
            text-align: center;
        }

        .page-header h1 {
            font-size: 2.5rem;
            color: #333;
            margin-bottom: 1rem;
        }

        .filters {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 1rem;
            background-color: #f8f9fa;
            border-radius: 8px;
        }

        .filter-options {
            display: flex;
            gap: 1rem;
            flex-wrap: wrap;
            justify-content: center;
        }

        .filter-select {
            padding: 0.5rem;
            border: 1px solid #ddd;
            border-radius: 4px;
            min-width: 150px;
        }

        .products-grid {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 2rem;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 2rem;
        }

        .product-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 1rem;
            transition: transform 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        .product-image {
            position: relative;
            overflow: hidden;
            border-radius: 8px;
            margin-bottom: 1rem;
        }

        .product-image img {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }

        .new-tag {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: #ff6b6b;
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-weight: bold;
        }

        .product-info h3 {
            margin: 0.5rem 0;
            color: #333;
        }

        .product-price {
            font-size: 1.2rem;
            color: #ff6b6b;
            font-weight: bold;
            margin: 0.5rem 0;
        }

        .product-meta {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 0.5rem 0;
            color: #666;
            font-size: 0.9rem;
        }

        .add-to-cart {
            background-color: #ff6b6b;
            color: white;
            padding: 0.8rem;
            border: none;
            border-radius: 4px;
            width: 100%;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .add-to-cart:hover {
            background-color: #ff5252;
        }

        .pagination {
            display: flex;
            justify-content: center;
            gap: 1rem;
            margin: 2rem 0;
        }

        .pagination button {
            padding: 0.5rem 1rem;
            border: 1px solid #ddd;
            background: white;
            border-radius: 4px;
            cursor: pointer;
        }

        .pagination button.active {
            background-color: #ff6b6b;
            color: white;
            border-color: #ff6b6b;
        }

        
    </style>
</head>
<body>
    <%@include file="Include/header.jsp"%>

    <div class="page-header">
        <h1>New Arrivals</h1>
        <p>Check out our latest toys and games!</p>
    </div>

    <section class="filters">
        <div class="filter-options">
            <select class="filter-select">
                <option value="">Age Range</option>
                <option value="0-2">0-2 years</option>
                <option value="3-5">3-5 years</option>
                <option value="6-8">6-8 years</option>
                <option value="9+">9+ years</option>
            </select>
            <select class="filter-select">
                <option value="">Category</option>
                <option value="educational">Educational</option>
                <option value="outdoor">Outdoor</option>
                <option value="board-games">Board Games</option>
                <option value="arts-crafts">Arts & Crafts</option>
            </select>
            <select class="filter-select">
                <option value="">Price Range</option>
                <option value="0-20">Under $20</option>
                <option value="20-50">$20 - $50</option>
                <option value="50-100">$50 - $100</option>
                <option value="100+">$100+</option>
            </select>
            <select class="filter-select">
                <option value="">Sort By</option>
                <option value="newest">Newest First</option>
                <option value="price-low">Price: Low to High</option>
                <option value="price-high">Price: High to Low</option>
            </select>
        </div>
    </section>

    <section class="products-grid">
        <div class="product-card">
            <div class="product-image">
                <img src="/api/placeholder/280/250" alt="Smart Robot Kit">
                <span class="new-tag">New</span>
            </div>
            <div class="product-info">
                <h3>Smart Robot Kit</h3>
                <p>Build and program your own robot with this educational kit</p>
                <div class="product-meta">
                    <span>Age: 8+</span>
                    <span>★★★★★ (12)</span>
                </div>
                <div class="product-price">$89.99</div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
        </div>

        <div class="product-card">
            <div class="product-image">
                <img src="/api/placeholder/280/250" alt="Magnetic Building Blocks">
                <span class="new-tag">New</span>
            </div>
            <div class="product-info">
                <h3>Magnetic Building Blocks</h3>
                <p>Creative magnetic construction set with 100 pieces</p>
                <div class="product-meta">
                    <span>Age: 3+</span>
                    <span>★★★★½ (8)</span>
                </div>
                <div class="product-price">$45.99</div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
        </div>

        <div class="product-card">
            <div class="product-image">
                <img src="/api/placeholder/280/250" alt="Adventure Quest Board Game">
                <span class="new-tag">New</span>
            </div>
            <div class="product-info">
                <h3>Adventure Quest Board Game</h3>
                <p>An exciting cooperative board game for the whole family</p>
                <div class="product-meta">
                    <span>Age: 6+</span>
                    <span>★★★★ (15)</span>
                </div>
                <div class="product-price">$34.99</div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
        </div>

        <div class="product-card">
            <div class="product-image">
                <img src="/api/placeholder/280/250" alt="Art Studio Set">
                <span class="new-tag">New</span>
            </div>
            <div class="product-info">
                <h3>Art Studio Set</h3>
                <p>Complete art set with easel, paints, and supplies</p>
                <div class="product-meta">
                    <span>Age: 5+</span>
                    <span>★★★★★ (6)</span>
                </div>
                <div class="product-price">$59.99</div>
                <button class="add-to-cart">Add to Cart</button>
            </div>
        </div>
    </section>

    <div class="pagination">
        <button>Previous</button>
        <button class="active">1</button>
        <button>2</button>
        <button>3</button>
        <button>Next</button>
    </div>

    <%@include file="Include/footer.jsp"%>
</body>
</html>