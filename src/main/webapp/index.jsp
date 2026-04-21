<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NexusShop | Redefining Modern E‑Commerce</title>
    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-dark: #0b1120;
            --bg-card: #111827;
            --surface: #1f2937;
            --primary: #f97316;
            --primary-glow: #ff9f4a;
            --accent: #38bdf8;
            --accent-dark: #0ea5e9;
            --text-light: #f9fafb;
            --text-muted: #9ca3af;
            --border-light: rgba(255, 255, 255, 0.08);
            --success: #10b981;
            --danger: #ef4444;
            --radius-sm: 12px;
            --radius: 20px;
            --radius-lg: 32px;
            --shadow-soft: 0 20px 35px -12px rgba(0, 0, 0, 0.4);
            --glass-bg: rgba(255, 255, 255, 0.03);
            --transition: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg-dark);
            color: var(--text-light);
            line-height: 1.5;
            scroll-behavior: smooth;
            overflow-x: hidden;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* modern glass header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(16px);
            background: rgba(11, 17, 32, 0.75);
            border-bottom: 1px solid var(--border-light);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 14px 0;
            flex-wrap: wrap;
        }

        .brand {
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 700;
            font-size: 1.8rem;
            background: linear-gradient(135deg, #fff 20%, var(--primary) 80%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }

        .brand .accent {
            background: linear-gradient(135deg, var(--accent), #7c3aed);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        nav.main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
        }

        nav.main-nav li a {
            padding: 8px 18px;
            border-radius: 40px;
            font-weight: 500;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 8px;
            color: var(--text-light);
            background: transparent;
        }

        nav.main-nav li a:hover {
            background: var(--primary);
            color: #0b1120;
            box-shadow: 0 4px 12px rgba(249, 115, 22, 0.3);
        }

        .search {
            background: var(--surface);
            border-radius: 48px;
            padding: 8px 18px;
            display: flex;
            align-items: center;
            gap: 10px;
            border: 1px solid var(--border-light);
            transition: var(--transition);
        }

        .search:focus-within {
            border-color: var(--primary);
            background: #1e293b;
            box-shadow: 0 0 0 3px rgba(249, 115, 22, 0.2);
        }

        .search input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            width: 200px;
            font-size: 0.9rem;
        }

        .icon-btn {
            background: transparent;
            border: none;
            color: var(--text-light);
            font-size: 1.25rem;
            cursor: pointer;
            transition: var(--transition);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        .icon-btn:hover {
            background: var(--primary);
            color: #0b1120;
            transform: scale(1.05);
        }

        .cart {
            position: relative;
            display: flex;
            align-items: center;
        }

        .cart-count {
            position: absolute;
            top: -5px;
            right: -8px;
            background: var(--primary);
            color: #0b1120;
            font-weight: 800;
            font-size: 11px;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 0 6px var(--primary-glow);
        }

        .mobile-toggle {
            display: none;
            background: var(--surface);
            border: none;
            font-size: 1.5rem;
            color: white;
            border-radius: 12px;
            padding: 8px 12px;
            cursor: pointer;
        }

        /* hero section animated */
        .hero {
            position: relative;
            margin: 32px 24px 48px;
            background: linear-gradient(125deg, #0f172a 0%, #1e1b4b 100%);
            border-radius: var(--radius-lg);
            padding: 80px 48px;
            overflow: hidden;
            box-shadow: var(--shadow-soft);
            border: 1px solid rgba(249, 115, 22, 0.2);
        }

        .hero::before {
            content: '';
            position: absolute;
            top: -30%;
            right: -10%;
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, rgba(249,115,22,0.3) 0%, rgba(56,189,248,0) 70%);
            border-radius: 50%;
            z-index: 0;
        }

        .hero .container {
            position: relative;
            z-index: 2;
        }

        .hero h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 3.3rem;
            font-weight: 700;
            background: linear-gradient(to right, #fff, var(--accent));
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            padding: 12px 28px;
            border-radius: 48px;
            font-weight: 600;
            transition: var(--transition);
            cursor: pointer;
            border: none;
            font-size: 0.95rem;
        }

        .btn-primary {
            background: var(--primary);
            color: #0b1120;
            box-shadow: 0 6px 14px rgba(249, 115, 22, 0.4);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            background: #ff8233;
            box-shadow: 0 12px 20px rgba(249, 115, 22, 0.5);
        }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(4px);
            border: 1px solid rgba(249, 115, 22, 0.5);
            color: white;
        }

        .section {
            padding: 64px 0;
        }

        .title {
            text-align: center;
            margin-bottom: 48px;
        }

        .title h2 {
            font-size: 2.3rem;
            font-weight: 700;
            background: linear-gradient(145deg, #ffffff, #94a3b8);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .grid {
            display: grid;
            gap: 28px;
        }

        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--bg-card);
            backdrop-filter: blur(8px);
            border: 1px solid var(--border-light);
            border-radius: var(--radius);
            padding: 24px 12px;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-8px);
            border-color: var(--primary);
            background: #1e293b;
            box-shadow: 0 18px 30px -12px black;
        }

        .cat-card .icon {
            font-size: 2.4rem;
            color: var(--primary);
        }

        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid var(--border-light);
            display: flex;
            flex-direction: column;
        }

        .product:hover {
            transform: translateY(-8px);
            border-color: var(--primary);
            box-shadow: 0 25px 30px -12px rgba(0, 0, 0, 0.5);
        }

        .product img {
            width: 100%;
            height: 230px;
            object-fit: cover;
            transition: transform 0.3s;
        }

        .product:hover img {
            transform: scale(1.03);
        }

        .product-body {
            padding: 18px;
        }

        .price-row {
            display: flex;
            justify-content: space-between;
            margin: 12px 0;
        }

        .price {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--primary);
        }

        .old-price {
            text-decoration: line-through;
            font-size: 0.8rem;
            color: var(--text-muted);
        }

        .rating i {
            color: #fbbf24;
            font-size: 0.8rem;
        }

        .product-footer {
            padding: 12px 18px 20px;
            display: flex;
            gap: 12px;
        }

        .add-btn {
            flex: 1;
            background: var(--primary);
            color: #0b1120;
            font-weight: 700;
            border: none;
            padding: 12px;
            border-radius: 40px;
            cursor: pointer;
            transition: var(--transition);
        }

        .add-btn:hover {
            background: #ff8c42;
            transform: scale(0.98);
        }

        /* Flash sale premium */
        .deal {
            display: flex;
            gap: 24px;
            background: linear-gradient(145deg, #111827, #0f172a);
            border-radius: var(--radius-lg);
            overflow: hidden;
            align-items: center;
            border: 1px solid rgba(249, 115, 22, 0.3);
        }

        .deal img {
            width: 45%;
            height: 340px;
            object-fit: cover;
        }

        .timer {
            display: flex;
            gap: 16px;
            margin: 24px 0;
        }

        .time-box {
            background: #0b1120;
            border-radius: 16px;
            padding: 12px 20px;
            text-align: center;
            min-width: 75px;
            border: 1px solid var(--primary);
            font-weight: 700;
        }

        .testimonials {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 8px;
        }

        .testimonial {
            background: var(--bg-card);
            border-radius: 28px;
            padding: 28px;
            min-width: 320px;
            border: 1px solid var(--border-light);
        }

        .newsletter {
            background: linear-gradient(115deg, #1e293b, #0f172a);
            border-radius: 48px;
            padding: 56px 32px;
            text-align: center;
            border: 1px solid rgba(56, 189, 248, 0.2);
        }

        .newsletter input {
            background: #0b1120;
            border: 1px solid #334155;
            padding: 14px 22px;
            border-radius: 60px;
            width: 320px;
            color: white;
            margin-right: 12px;
        }

        footer {
            border-top: 1px solid var(--border-light);
            padding: 48px 0 32px;
            margin-top: 32px;
        }

        @media (max-width: 1100px) {
            .categories { grid-template-columns: repeat(3,1fr); }
            .products { grid-template-columns: repeat(3,1fr); }
        }

        @media (max-width: 800px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: block; }
            .products { grid-template-columns: repeat(2,1fr); }
            .categories { grid-template-columns: repeat(2,1fr); }
            .deal { flex-direction: column; }
            .deal img { width: 100%; height: 240px; }
            .hero h1 { font-size: 2.2rem; }
            .hero { padding: 50px 24px; }
        }

        @media (max-width: 550px) {
            .products, .categories { grid-template-columns: 1fr; }
            .search input { width: 130px; }
        }

        .toast-notify {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: #1e293b;
            backdrop-filter: blur(12px);
            border-left: 5px solid var(--primary);
            padding: 14px 24px;
            border-radius: 60px;
            color: white;
            z-index: 1000;
            font-weight: 500;
            box-shadow: 0 10px 25px -5px black;
            animation: slideUp 0.3s ease;
        }

        @keyframes slideUp {
            from { opacity: 0; transform: translateY(30px);}
            to { opacity: 1; transform: translateY(0);}
        }
        .badge-sale {
            background: var(--danger);
            position: absolute;
            margin: 14px;
            padding: 4px 12px;
            border-radius: 30px;
            font-weight: 800;
            font-size: 12px;
            z-index: 2;
        }
    </style>
</head>
<body>
<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 16px;">
            <button class="mobile-toggle" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
            <a class="brand" href="#">NEXUS<span class="accent">SHOP</span></a>
        </div>
        <nav class="main-nav">
            <ul>
                <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#categories"><i class="fas fa-compass"></i> Explore</a></li>
                <li><a href="#trending"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a></li>
                <li><a href="#"><i class="fas fa-gem"></i> Luxury</a></li>
            </ul>
        </nav>
        <div style="display: flex; align-items: center; gap: 12px;">
            <div class="search">
                <input type="text" id="searchField" placeholder="Search products...">
                <button class="icon-btn" id="searchExec"><i class="fas fa-search"></i></button>
            </div>
            <button class="icon-btn"><i class="far fa-heart"></i></button>
            <div class="cart" id="cartBtn">
                <i class="fas fa-shopping-bag"></i>
                <span class="cart-count" id="cartCountBadge">0</span>
            </div>
        </div>
    </div>
    <div id="mobileMenuPanel" style="display: none; background: #0f172a; border-top: 1px solid #1e293b; padding: 16px;">
        <div class="container">
            <ul style="list-style: none; display: flex; flex-direction: column; gap: 14px;">
                <li><a href="#">Home</a></li>
                <li><a href="#categories">Categories</a></li>
                <li><a href="#trending">Trending</a></li>
                <li><a href="#deals">Deals</a></li>
            </ul>
        </div>
    </div>
</header>

<main>
    <section class="hero">
        <div class="container">
            <h1>Beyond Ordinary.<br>Winter Drop '25</h1>
            <p style="font-size: 1.1rem; max-width: 550px; margin: 20px 0 28px;">Exclusive access to premium tech, streetwear & accessories. Up to 40% off + free express shipping.</p>
            <div style="display: flex; gap: 16px;">
                <button class="btn btn-primary" id="shopNowHero"><i class="fas fa-store"></i> Shop Now</button>
                <button class="btn btn-ghost" id="exploreFlash"><i class="fas fa-hourglass-half"></i> Flash Sale</button>
            </div>
        </div>
    </section>

    <section id="categories" class="section container">
        <div class="title"><h2>Curated Collections</h2><p style="color: var(--text-muted);">Discover by category</p></div>
        <div class="grid categories" id="categoriesContainer"></div>
    </section>

    <section id="trending" class="section container">
        <div class="title"><h2>⚡ Trending Now</h2><p class="muted">Hottest picks this week</p></div>
        <div class="grid products" id="productsGrid"></div>
    </section>

    <section id="deals" class="section container">
        <div class="title"><h2>🔥 FLASH SALE</h2><p>Limited time — prices will rise soon</p></div>
        <div class="deal">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=80" alt="MacBook Deal">
            <div class="content" style="padding: 32px;">
                <h3 style="font-size: 1.8rem;">MacBook Air M2</h3>
                <p>Supercharged by next-gen performance. Starlight finish, 256GB SSD.</p>
                <div class="timer">
                    <div class="time-box"><span id="dealDays">0</span><div>Days</div></div>
                    <div class="time-box"><span id="dealHours">00</span><div>Hrs</div></div>
                    <div class="time-box"><span id="dealMinutes">00</span><div>Mins</div></div>
                    <div class="time-box"><span id="dealSeconds">00</span><div>Secs</div></div>
                </div>
                <div style="display: flex; gap: 20px; align-items: baseline; margin: 12px 0;">
                    <span class="price" style="font-size: 2rem;">$999</span>
                    <span class="old-price" style="font-size: 1.2rem;">$1,299</span>
                    <span style="background: var(--danger); padding: 6px 14px; border-radius: 40px;">-23%</span>
                </div>
                <button class="btn btn-primary" id="dealAddBtn"><i class="fas fa-cart-plus"></i> Add to Cart</button>
            </div>
        </div>
    </section>

    <section class="section container">
        <div class="title"><h2>Voices of our tribe</h2><p>Loved by 10k+ shoppers</p></div>
        <div class="testimonials" id="testimonialList"></div>
    </section>

    <section class="section container">
        <div class="newsletter">
            <h3 style="font-size: 1.8rem;">Join the inner circle</h3>
            <p>Get early access to secret sales and 10% off your first order</p>
            <form id="newsletterForm" style="display: flex; justify-content: center; flex-wrap: wrap; gap: 12px; margin-top: 24px;">
                <input type="email" id="newsEmail" placeholder="you@example.com" required>
                <button type="submit" class="btn btn-primary"><i class="fas fa-paper-plane"></i> Subscribe</button>
            </form>
            <div id="newsMsg" style="margin-top: 14px;"></div>
        </div>
    </section>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
        <div><h3 style="font-family: 'Space Grotesk';">NEXUSSHOP</h3><p style="color: #9ca3af;">Elevate your lifestyle</p></div>
        <div><strong>Support</strong><div style="color:#9ca3af;">Help · Returns · Track order</div></div>
        <div><strong>Legal</strong><div style="color:#9ca3af;">Privacy · Terms</div></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 40px;">© 2025 NexusShop — Futuristic commerce</div>
</footer>

<script>
    // Enhanced DATA
    const categoriesData = [
        { id: 1, name: "Smartphones", icon: "fa-mobile-screen" },
        { id: 2, name: "Laptops", icon: "fa-laptop-code" },
        { id: 3, name: "Streetwear", icon: "fa-shirt" },
        { id: 4, name: "Audio", icon: "fa-headphones" },
        { id: 5, name: "Footwear", icon: "fa-shoe-prints" },
        { id: 6, name: "Watches", icon: "fa-clock" }
    ];
    const productsData = [
        { id: 101, title: "iPhone 15 Pro", price: 1199, oldPrice: 1299, rating: 5, reviews: 342, badge: "Just dropped", img: "https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80", category: "Smartphones" },
        { id: 102, title: "ROG Zephyrus G14", price: 1599, rating: 4, reviews: 98, img: "https://images.unsplash.com/photo-1603302576837-37561b2e2302?auto=format&fit=crop&w=600&q=80", category: "Laptops" },
        { id: 103, title: "Ultra Watch 2", price: 429, oldPrice: 499, rating: 5, reviews: 215, badge: "Sale", img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80", category: "Watches" },
        { id: 104, title: "Yeezy Boost 350", price: 230, rating: 5, reviews: 76, img: "https://images.unsplash.com/photo-1549298916-b41d501d3772?auto=format&fit=crop&w=600&q=80", category: "Footwear" },
        { id: 105, title: "Sony XM5 Headphones", price: 398, rating: 5, reviews: 412, badge: "Top rated", img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80", category: "Audio" },
        { id: 106, title: "Essential Hoodie", price: 89, oldPrice: 129, rating: 4, reviews: 210, img: "https://images.unsplash.com/photo-1556821840-3a63f95609a7?auto=format&fit=crop&w=600&q=80", category: "Streetwear" },
        { id: 107, title: "DJI Mini 4 Pro", price: 759, rating: 5, reviews: 88, badge: "Drone", img: "https://images.unsplash.com/photo-1507582020474-9a35b7d455d9?auto=format&fit=crop&w=600&q=80", category: "Gadgets" },
        { id: 108, title: "Oakley Sunglasses", price: 159, rating: 4, reviews: 130, img: "https://images.unsplash.com/photo-1572635196237-14b3f281503f?auto=format&fit=crop&w=600&q=80", category: "Accessories" }
    ];

    let cartCount = 0;
    const cartSpan = document.getElementById('cartCountBadge');
    const showToast = (msg) => {
        let toast = document.createElement('div');
        toast.className = 'toast-notify';
        toast.innerHTML = `<i class="fas fa-check-circle" style="margin-right: 8px; color:#f97316;"></i> ${msg}`;
        document.body.appendChild(toast);
        setTimeout(() => toast.remove(), 1800);
    };

    function updateCartUI() { cartSpan.innerText = cartCount; }

    function addToCartById(id) {
        const product = productsData.find(p => p.id === id);
        if(product) {
            cartCount++;
            updateCartUI();
            showToast(`${product.title} added to cart`);
            return true;
        }
        return false;
    }

    function renderCategories() {
        const grid = document.getElementById('categoriesContainer');
        grid.innerHTML = '';
        categoriesData.forEach(c => {
            const card = document.createElement('div');
            card.className = 'cat-card';
            card.innerHTML = `<div class="icon"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4><span style="font-size:12px;color:#9ca3af;">Explore</span>`;
            card.addEventListener('click', () => {
                document.getElementById('searchField').value = c.name;
                filterProductsBySearch(c.name);
                document.getElementById('trending').scrollIntoView({ behavior: 'smooth' });
            });
            grid.appendChild(card);
        });
    }

    function filterProductsBySearch(term) {
        const query = term.trim().toLowerCase();
        if(!query) return renderProducts(productsData);
        const filtered = productsData.filter(p => p.title.toLowerCase().includes(query) || p.category.toLowerCase().includes(query));
        renderProducts(filtered);
    }

    function renderProducts(productsArr) {
        const container = document.getElementById('productsGrid');
        container.innerHTML = '';
        productsArr.forEach(p => {
            const productDiv = document.createElement('div');
            productDiv.className = 'product';
            const starFull = '★'.repeat(Math.floor(p.rating));
            const starEmpty = '☆'.repeat(5 - Math.floor(p.rating));
            productDiv.innerHTML = `
                ${p.badge ? `<div class="badge-sale" style="background: #f97316;">${p.badge}</div>` : ''}
                <img src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-body">
                    <h4 style="font-weight:600;">${p.title}</h4>
                    <div class="price-row">
                        <div><span class="price">$${p.price}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div>
                        <div class="rating"><i class="fas fa-star"></i> ${p.rating} (${p.reviews})</div>
                    </div>
                </div>
                <div class="product-footer">
                    <button class="add-btn" data-id="${p.id}"><i class="fas fa-bag-shopping"></i> Add to cart</button>
                    <button class="icon-btn wishlist-btn"><i class="far fa-heart"></i></button>
                </div>
            `;
            container.appendChild(productDiv);
        });
        document.querySelectorAll('.add-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const pid = parseInt(btn.getAttribute('data-id'));
                addToCartById(pid);
                btn.innerHTML = '<i class="fas fa-check"></i> Added';
                setTimeout(() => { btn.innerHTML = '<i class="fas fa-bag-shopping"></i> Add to cart'; }, 1000);
            });
        });
    }

    // countdown timer
    function initTimer() {
        const target = new Date();
        target.setHours(target.getHours() + 28);
        target.setMinutes(target.getMinutes() + 45);
        function tick() {
            const diff = target - new Date();
            if(diff <= 0) { clearInterval(timer); return; }
            const days = Math.floor(diff / 86400000);
            const hrs = Math.floor((diff % 86400000) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = hrs.toString().padStart(2,'0');
            document.getElementById('dealMinutes').innerText = mins.toString().padStart(2,'0');
            document.getElementById('dealSeconds').innerText = secs.toString().padStart(2,'0');
        }
        tick();
        const timer = setInterval(tick, 1000);
    }

    function loadTestimonials() {
        const tContainer = document.getElementById('testimonialList');
        tContainer.innerHTML = `
            <div class="testimonial"><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><p style="margin:12px 0;">"Absolutely fire UI and products arrived faster than expected!"</p><strong>— Lina Zhou</strong></div>
            <div class="testimonial"><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><p>"Best place to cop streetwear. The deals are insane 🔥"</p><strong>— Marcus V.</strong></div>
            <div class="testimonial"><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><p>"Customer service replied in minutes. Premium quality."</p><strong>— Sarah Kim</strong></div>
        `;
    }

    // event handlers
    document.getElementById('searchExec').addEventListener('click', () => filterProductsBySearch(document.getElementById('searchField').value));
    document.getElementById('searchField').addEventListener('keypress', (e) => { if(e.key === 'Enter') filterProductsBySearch(e.target.value); });
    document.getElementById('shopNowHero').addEventListener('click', () => document.getElementById('trending').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreFlash').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('dealAddBtn').addEventListener('click', () => addToCartById(102));
    document.getElementById('cartBtn').addEventListener('click', () => showToast(`Cart total: ${cartCount} item(s) · Ready for checkout!`));

    const mobileToggleBtn = document.getElementById('mobileMenuBtn');
    const mobilePanel = document.getElementById('mobileMenuPanel');
    mobileToggleBtn.addEventListener('click', () => { mobilePanel.style.display = mobilePanel.style.display === 'none' ? 'block' : 'none'; });

    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value;
        if(email && email.includes('@')) {
            document.getElementById('newsMsg').innerHTML = '<span style="color:#10b981;">✅ Subscribed — exclusive offers incoming!</span>';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => document.getElementById('newsMsg').innerHTML = '', 3000);
        } else {
            document.getElementById('newsMsg').innerHTML = '<span style="color:#ef4444;">Valid email required</span>';
        }
    });

    renderCategories();
    renderProducts(productsData);
    initTimer();
    loadTestimonials();
    updateCartUI();
</script>
</body>
</html>
