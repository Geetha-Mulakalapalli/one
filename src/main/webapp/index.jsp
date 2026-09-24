<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop · Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:ital,wght@0,600;0,700;1,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== DESIGN TOKENS ========== */
        :root {
            --bg-soft: #f9f7f4;
            --bg-card: #ffffff;
            --ink: #1e1e2a;
            --ink-soft: #4a4a5a;
            --muted: #7a7a8a;
            --muted-light: #b0b0c0;
            --accent: #d96b4a;
            --accent-soft: #f7e7e1;
            --accent-deep: #b14e30;
            --sage: #6b8f7b;
            --gold: #d9b86c;
            --surface: #efedea;
            --radius-card: 24px;
            --radius-sm: 14px;
            --radius-pill: 100px;
            --shadow-soft: 0 12px 32px -8px rgba(30, 30, 42, 0.08);
            --shadow-hover: 0 24px 48px -12px rgba(30, 30, 42, 0.18);
            --transition: 0.3s cubic-bezier(0.2, 0.9, 0.3, 1);
            --container: 1280px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        html { scroll-behavior: smooth; }
        body {
            font-family: 'Inter', system-ui, sans-serif;
            background: var(--bg-soft);
            color: var(--ink);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }
        a { color: inherit; text-decoration: none; }
        img { display: block; max-width: 100%; }
        button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }
        input { font-family: inherit; }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 28px;
        }

        /* ========== UTILITIES ========== */
        .muted { color: var(--muted); }
        .sr-only {
            position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px;
            overflow: hidden; clip: rect(0,0,0,0); border: 0;
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex; align-items: center; justify-content: center; gap: 10px;
            padding: 14px 32px;
            border-radius: var(--radius-pill);
            font-weight: 600; font-size: 15px;
            transition: var(--transition);
            border: 2px solid transparent;
            letter-spacing: 0.2px;
        }
        .btn-primary {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
            box-shadow: 0 8px 20px -6px rgba(217, 107, 74, 0.4);
        }
        .btn-primary:hover {
            background: var(--accent-deep);
            border-color: var(--accent-deep);
            transform: translateY(-3px);
            box-shadow: 0 16px 32px -8px rgba(217, 107, 74, 0.5);
        }
        .btn-soft {
            background: var(--accent-soft);
            color: var(--accent-deep);
            border-color: transparent;
        }
        .btn-soft:hover {
            background: var(--accent);
            color: #fff;
            transform: translateY(-3px);
            box-shadow: 0 12px 28px -8px rgba(217, 107, 74, 0.4);
        }
        .btn-ghost-light {
            background: rgba(255,255,255,0.12);
            color: #fff;
            border-color: rgba(255,255,255,0.2);
            backdrop-filter: blur(8px);
        }
        .btn-ghost-light:hover {
            background: rgba(255,255,255,0.22);
            border-color: rgba(255,255,255,0.4);
            transform: translateY(-3px);
        }

        /* ========== HEADER ========== */
        header {
            position: sticky; top: 0; z-index: 100;
            background: rgba(249, 247, 244, 0.85);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(30, 30, 42, 0.04);
        }
        .header-inner {
            display: flex; align-items: center; justify-content: space-between;
            gap: 20px; padding: 12px 0; min-height: 76px;
        }
        .brand {
            display: flex; align-items: center; gap: 10px;
            font-weight: 800; font-size: 24px;
            letter-spacing: -0.6px;
            color: var(--ink);
            flex-shrink: 0;
        }
        .brand .accent { color: var(--accent); }
        .brand i {
            font-size: 28px;
            color: var(--accent);
            background: var(--accent-soft);
            padding: 8px;
            border-radius: 14px;
            transition: var(--transition);
        }
        .brand:hover i { transform: rotate(-8deg) scale(1.02); }

        nav.main-nav ul {
            display: flex; gap: 6px; list-style: none; align-items: center;
        }
        nav.main-nav li a {
            display: flex; align-items: center; gap: 8px;
            padding: 10px 18px;
            border-radius: var(--radius-pill);
            font-weight: 500; font-size: 14px;
            color: var(--muted);
            transition: var(--transition);
        }
        nav.main-nav li a i { font-size: 14px; color: var(--muted-light); transition: var(--transition); }
        nav.main-nav li a:hover, nav.main-nav li a.active {
            background: var(--bg-card);
            color: var(--ink);
            box-shadow: 0 4px 12px rgba(0,0,0,0.02);
        }
        nav.main-nav li a:hover i, nav.main-nav li a.active i { color: var(--accent); }

        .header-actions {
            display: flex; align-items: center; gap: 8px; flex-shrink: 0;
        }
        .header-actions .icon-btn {
            width: 44px; height: 44px;
            display: grid; place-items: center;
            border-radius: 50%;
            font-size: 18px;
            color: var(--muted);
            transition: var(--transition);
            background: transparent;
        }
        .header-actions .icon-btn:hover {
            background: var(--bg-card);
            color: var(--accent);
            box-shadow: 0 6px 16px rgba(0,0,0,0.04);
        }

        .cart-wrap { position: relative; }
        .cart-count {
            position: absolute; top: 0; right: 0;
            background: var(--accent); color: #fff;
            font-size: 11px; font-weight: 700;
            width: 22px; height: 22px;
            border-radius: 50%;
            display: grid; place-items: center;
            border: 2px solid var(--bg-soft);
            transition: transform 0.2s;
        }

        .search-wrap {
            display: flex; align-items: center;
            background: var(--bg-card);
            border-radius: var(--radius-pill);
            padding: 0 18px 0 22px;
            transition: var(--transition);
            border: 2px solid transparent;
            min-width: 260px;
            box-shadow: 0 4px 14px rgba(0,0,0,0.02);
        }
        .search-wrap:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 5px rgba(217, 107, 74, 0.08), 0 8px 20px rgba(0,0,0,0.04);
        }
        .search-wrap input {
            border: 0; background: transparent; outline: none;
            width: 100%; padding: 12px 0;
            font-size: 14px; color: var(--ink);
        }
        .search-wrap input::placeholder { color: var(--muted-light); font-weight: 400; }
        .search-wrap button {
            padding: 8px 0 8px 12px;
            color: var(--muted);
            font-size: 15px;
            transition: var(--transition);
        }
        .search-wrap button:hover { color: var(--accent); }

        .mobile-toggle {
            display: none;
            width: 44px; height: 44px;
            border-radius: 50%;
            font-size: 20px;
            background: var(--bg-card);
            color: var(--ink);
            transition: var(--transition);
            box-shadow: 0 4px 12px rgba(0,0,0,0.02);
        }
        .mobile-toggle:hover { background: var(--accent-soft); color: var(--accent); }

        #mobileMenu {
            display: none;
            background: var(--bg-soft);
            border-top: 1px solid rgba(30,30,42,0.04);
            padding: 16px 0 24px;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex; flex-direction: column; gap: 6px;
        }
        #mobileMenu ul li a {
            display: flex; align-items: center; gap: 14px;
            padding: 14px 18px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--ink);
            transition: var(--transition);
        }
        #mobileMenu ul li a:hover { background: var(--bg-card); }
        #mobileMenu ul li a i { width: 24px; color: var(--muted); }

        /* ========== HERO ========== */
        .hero {
            position: relative;
            display: flex; align-items: center;
            min-height: 560px;
            padding: 64px 0;
            border-radius: 36px;
            overflow: hidden;
            margin: 20px 28px 0;
            background: linear-gradient(145deg, #26263a 0%, #1e1e2a 100%);
        }
        .hero::before {
            content: '';
            position: absolute; inset: 0;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            opacity: 0.28;
            z-index: 0;
        }
        .hero::after {
            content: '';
            position: absolute; inset: 0;
            background: radial-gradient(circle at 70% 30%, rgba(217,107,74,0.25), transparent 60%);
            z-index: 1;
        }
        .hero .container { position: relative; z-index: 2; }
        .hero .badge {
            display: inline-block;
            background: rgba(217, 107, 74, 0.25);
            color: #f9d5c7;
            padding: 6px 20px;
            border-radius: var(--radius-pill);
            font-weight: 600; font-size: 13px;
            letter-spacing: 0.5px;
            margin-bottom: 20px;
            backdrop-filter: blur(4px);
            border: 1px solid rgba(255,255,255,0.1);
        }
        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 58px;
            font-weight: 700;
            color: #fff;
            line-height: 1.1;
            max-width: 680px;
            margin-bottom: 18px;
            letter-spacing: -1px;
        }
        .hero h1 .highlight {
            color: var(--gold);
            position: relative;
        }
        .hero p {
            color: rgba(255, 255, 255, 0.75);
            font-size: 18px;
            max-width: 520px;
            margin-bottom: 32px;
            line-height: 1.7;
            font-weight: 400;
        }
        .hero .actions { display: flex; gap: 14px; flex-wrap: wrap; }

        /* ========== SECTION ========== */
        .section { padding: 72px 0; }
        .section-header {
            display: flex; align-items: flex-end; justify-content: space-between;
            gap: 24px; margin-bottom: 40px; flex-wrap: wrap;
        }
        .section-header .title-group h2 {
            font-size: 34px;
            font-weight: 700;
            letter-spacing: -0.8px;
            line-height: 1.2;
        }
        .section-header .title-group p {
            color: var(--muted);
            margin-top: 6px;
            font-size: 16px;
            font-weight: 400;
        }
        .section-header .view-all {
            font-weight: 600;
            color: var(--accent);
            display: flex; align-items: center; gap: 8px;
            font-size: 15px;
            transition: var(--transition);
            white-space: nowrap;
            padding: 8px 16px;
            border-radius: var(--radius-pill);
            background: var(--accent-soft);
        }
        .section-header .view-all:hover {
            gap: 14px;
            background: var(--accent);
            color: #fff;
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 18px;
        }
        .cat-card {
            background: var(--bg-card);
            border-radius: var(--radius-card);
            padding: 28px 16px 24px;
            text-align: center;
            box-shadow: var(--shadow-soft);
            transition: var(--transition);
            cursor: pointer;
            border: 2px solid transparent;
            position: relative;
            overflow: hidden;
        }
        .cat-card::after {
            content: '';
            position: absolute; bottom: 0; left: 0; right: 0;
            height: 4px;
            background: var(--accent);
            transform: scaleX(0);
            transform-origin: left;
            transition: transform 0.35s cubic-bezier(0.2,0.9,0.3,1);
        }
        .cat-card:hover::after { transform: scaleX(1); }
        .cat-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-soft);
        }
        .cat-card .icon-wrap {
            width: 64px; height: 64px;
            border-radius: 20px;
            background: var(--accent-soft);
            display: grid; place-items: center;
            margin: 0 auto 16px;
            font-size: 28px;
            color: var(--accent);
            transition: var(--transition);
        }
        .cat-card:hover .icon-wrap {
            background: var(--accent);
            color: #fff;
            border-radius: 50%;
            transform: rotate(-6deg) scale(1.05);
        }
        .cat-card h4 { font-size: 16px; font-weight: 600; letter-spacing: -0.2px; }
        .cat-card .count { font-size: 13px; color: var(--muted); margin-top: 6px; font-weight: 400; }

        /* ========== PRODUCTS ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 28px;
        }
        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius-card);
            overflow: hidden;
            box-shadow: var(--shadow-soft);
            transition: var(--transition);
            display: flex; flex-direction: column;
            border: 2px solid transparent;
        }
        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-soft);
        }
        .product-card .img-wrap {
            position: relative;
            overflow: hidden;
            background: var(--surface);
            aspect-ratio: 1 / 1;
        }
        .product-card .img-wrap img {
            width: 100%; height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }
        .product-card:hover .img-wrap img { transform: scale(1.06); }
        .product-card .badge {
            position: absolute; top: 16px; left: 16px;
            background: var(--accent);
            color: #fff;
            padding: 5px 16px;
            border-radius: var(--radius-pill);
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.4px;
            text-transform: uppercase;
        }
        .product-card .badge.sale { background: var(--gold); color: var(--ink); }
        .product-card .wish-btn {
            position: absolute; top: 16px; right: 16px;
            width: 40px; height: 40px;
            border-radius: 50%;
            background: rgba(255,255,255,0.92);
            display: grid; place-items: center;
            font-size: 18px;
            color: var(--muted);
            transition: var(--transition);
            backdrop-filter: blur(6px);
            box-shadow: 0 4px 12px rgba(0,0,0,0.06);
        }
        .product-card .wish-btn:hover {
            background: #fff;
            color: var(--accent);
            transform: scale(1.1) rotate(6deg);
        }
        .product-card .body {
            padding: 20px 22px 16px;
            flex: 1;
            display: flex; flex-direction: column; gap: 8px;
        }
        .product-card .body .category-tag {
            font-size: 12px;
            color: var(--muted-light);
            text-transform: uppercase;
            letter-spacing: 0.8px;
            font-weight: 600;
        }
        .product-card .body h5 {
            font-size: 16px;
            font-weight: 600;
            line-height: 1.35;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
            letter-spacing: -0.2px;
        }
        .product-card .body .price-row {
            display: flex; align-items: center; gap: 12px;
            margin-top: 4px;
        }
        .product-card .body .price {
            font-weight: 700;
            font-size: 22px;
            color: var(--ink);
        }
        .product-card .body .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 15px;
        }
        .product-card .body .rating {
            display: flex; align-items: center; gap: 6px;
            font-size: 14px;
            color: var(--gold);
        }
        .product-card .body .rating span { color: var(--muted); font-weight: 400; }
        .product-card .footer {
            padding: 0 22px 22px;
            display: flex; gap: 12px;
        }
        .product-card .footer .add-btn {
            flex: 1;
            padding: 12px;
            border-radius: var(--radius-sm);
            background: var(--ink);
            color: #fff;
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
            display: flex; align-items: center; justify-content: center; gap: 10px;
            letter-spacing: 0.2px;
        }
        .product-card .footer .add-btn:hover {
            background: var(--accent);
            transform: scale(1.02);
            box-shadow: 0 8px 20px -6px rgba(217, 107, 74, 0.4);
        }
        .product-card .footer .add-btn.added { background: var(--sage); }

        /* ========== DEAL ========== */
        .deal-wrap {
            display: flex; gap: 0;
            background: var(--bg-card);
            border-radius: 36px;
            overflow: hidden;
            box-shadow: var(--shadow-soft);
        }
        .deal-wrap .deal-img {
            flex: 0 0 46%;
            background: var(--surface);
            min-height: 380px;
        }
        .deal-wrap .deal-img img {
            width: 100%; height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 52px 56px;
            display: flex; flex-direction: column; justify-content: center;
            background: linear-gradient(135deg, #ffffff 0%, #faf8f6 100%);
        }
        .deal-wrap .deal-content .tag {
            display: inline-block;
            background: var(--gold);
            color: var(--ink);
            padding: 6px 18px;
            border-radius: var(--radius-pill);
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.6px;
            align-self: flex-start;
            margin-bottom: 16px;
        }
        .deal-wrap .deal-content h3 {
            font-size: 34px;
            font-weight: 700;
            margin-bottom: 8px;
            letter-spacing: -0.8px;
        }
        .deal-wrap .deal-content .desc {
            color: var(--muted);
            margin-bottom: 22px;
            font-size: 16px;
            line-height: 1.7;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 42px;
            font-weight: 800;
            color: var(--ink);
            letter-spacing: -1px;
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 22px;
            font-weight: 400;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 14px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 15px;
            color: var(--muted);
            margin: 6px 0 20px;
        }
        .deal-wrap .deal-content .stock strong { color: var(--accent); font-weight: 700; }

        .timer-grid {
            display: flex; gap: 14px;
            margin: 20px 0 28px;
        }
        .timer-box {
            background: var(--ink);
            color: #fff;
            padding: 14px 20px;
            border-radius: var(--radius-sm);
            min-width: 82px;
            text-align: center;
        }
        .timer-box .num {
            font-size: 30px;
            font-weight: 700;
            line-height: 1.2;
            letter-spacing: -0.5px;
        }
        .timer-box .label {
            font-size: 11px;
            opacity: 0.65;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: 500;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex; gap: 24px;
            overflow-x: auto;
            padding: 8px 4px 20px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }
        .testimonials-scroll::-webkit-scrollbar { height: 6px; }
        .testimonials-scroll::-webkit-scrollbar-track {
            background: var(--surface);
            border-radius: var(--radius-pill);
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--accent);
            border-radius: var(--radius-pill);
        }
        .testimonial-card {
            flex: 0 0 360px;
            background: var(--bg-card);
            border-radius: var(--radius-card);
            padding: 32px 34px;
            box-shadow: var(--shadow-soft);
            scroll-snap-align: start;
            transition: var(--transition);
            border: 2px solid transparent;
        }
        .testimonial-card:hover {
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-soft);
            transform: translateY(-4px);
        }
        .testimonial-card .stars {
            color: var(--gold);
            font-size: 18px;
            letter-spacing: 3px;
            margin-bottom: 14px;
        }
        .testimonial-card blockquote {
            font-size: 16px;
            line-height: 1.7;
            color: var(--ink);
            margin-bottom: 20px;
            font-style: italic;
            font-weight: 400;
            quotes: "“" "”";
        }
        .testimonial-card blockquote::before { content: "“"; font-size: 28px; color: var(--accent); line-height: 0; margin-right: 4px; }
        .testimonial-card blockquote::after { content: "”"; font-size: 28px; color: var(--accent); line-height: 0; margin-left: 4px; }
        .testimonial-card .author {
            display: flex; align-items: center; gap: 14px;
        }
        .testimonial-card .author .avatar {
            width: 52px; height: 52px;
            border-radius: 50%;
            object-fit: cover;
            background: var(--surface);
            border: 3px solid var(--accent-soft);
        }
        .testimonial-card .author .name {
            font-weight: 700;
            font-size: 15px;
            letter-spacing: -0.2px;
        }
        .testimonial-card .author .role {
            font-size: 13px;
            color: var(--muted);
            font-weight: 400;
        }

        /* ========== NEWSLETTER ========== */
        .newsletter-wrap {
            background: linear-gradient(145deg, #1e1e2a 0%, #2a2a3c 100%);
            border-radius: 36px;
            padding: 56px 64px;
            color: #fff;
            display: flex; align-items: center; justify-content: space-between;
            gap: 40px; flex-wrap: wrap;
            position: relative;
            overflow: hidden;
        }
        .newsletter-wrap::before {
            content: '';
            position: absolute; top: -50%; right: -10%;
            width: 400px; height: 400px;
            background: radial-gradient(circle, rgba(217,107,74,0.18), transparent 70%);
            border-radius: 50%;
            pointer-events: none;
        }
        .newsletter-wrap .text h3 {
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 6px;
            letter-spacing: -0.6px;
        }
        .newsletter-wrap .text p {
            opacity: 0.7;
            font-size: 16px;
            font-weight: 400;
        }
        .newsletter-wrap form {
            display: flex; gap: 12px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 520px;
            position: relative;
            z-index: 1;
        }
        .newsletter-wrap form input {
            flex: 1;
            min-width: 220px;
            padding: 16px 24px;
            border-radius: var(--radius-pill);
            border: 0;
            font-size: 15px;
            background: rgba(255,255,255,0.08);
            color: #fff;
            transition: var(--transition);
            outline: 2px solid transparent;
        }
        .newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.4); }
        .newsletter-wrap form input:focus {
            outline-color: var(--accent);
            background: rgba(255,255,255,0.14);
        }
        .newsletter-wrap form .btn {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
            padding: 16px 36px;
        }
        .newsletter-wrap form .btn:hover {
            background: var(--accent-deep);
            border-color: var(--accent-deep);
            transform: translateY(-3px);
            box-shadow: 0 16px 32px -8px rgba(217,107,74,0.4);
        }
        #newsletterMsg {
            margin-top: 14px;
            font-size: 14px;
            opacity: 0.9;
            width: 100%;
            font-weight: 500;
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 24px;
            padding: 64px 0 36px;
            border-top: 1px solid rgba(30,30,42,0.04);
            background: var(--bg-card);
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2.5fr 1fr 1fr 1fr;
            gap: 48px;
            margin-bottom: 48px;
        }
        .footer-grid .brand-col .brand {
            font-size: 22px;
            margin-bottom: 14px;
        }
        .footer-grid .brand-col p {
            color: var(--muted);
            font-size: 15px;
            max-width: 320px;
            line-height: 1.7;
        }
        .footer-grid .brand-col .socials {
            display: flex; gap: 12px; margin-top: 20px;
        }
        .footer-grid .brand-col .socials a {
            width: 44px; height: 44px;
            border-radius: 50%;
            background: var(--bg-soft);
            display: grid; place-items: center;
            color: var(--muted);
            transition: var(--transition);
            font-size: 17px;
        }
        .footer-grid .brand-col .socials a:hover {
            background: var(--accent);
            color: #fff;
            transform: translateY(-4px);
            box-shadow: 0 10px 20px -6px rgba(217,107,74,0.4);
        }
        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 15px;
            margin-bottom: 18px;
            color: var(--ink);
            letter-spacing: -0.2px;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex; flex-direction: column; gap: 10px;
        }
        .footer-grid .col ul li a {
            color: var(--muted);
            font-size: 15px;
            transition: var(--transition);
            font-weight: 400;
        }
        .footer-grid .col ul li a:hover {
            color: var(--accent);
            padding-left: 4px;
        }
        .footer-bottom {
            text-align: center;
            padding-top: 28px;
            border-top: 1px solid rgba(30,30,42,0.04);
            color: var(--muted-light);
            font-size: 14px;
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1200px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
            .footer-grid { grid-template-columns: 1.5fr 1fr 1fr; gap: 32px; }
            .hero h1 { font-size: 48px; }
        }

        @media (max-width: 992px) {
            .hero h1 { font-size: 40px; }
            .hero { min-height: 440px; margin: 16px 20px 0; padding: 48px 0; border-radius: 28px; }
            .deal-wrap { flex-direction: column; }
            .deal-wrap .deal-img { flex: 0 0 300px; }
            .deal-wrap .deal-content { padding: 36px 40px; }
            .newsletter-wrap { padding: 40px 36px; flex-direction: column; text-align: center; }
            .newsletter-wrap form { max-width: 100%; justify-content: center; }
            .search-wrap { min-width: 200px; }
            .footer-grid { grid-template-columns: 1fr 1fr; gap: 32px; }
            .section-header .title-group h2 { font-size: 28px; }
        }

        @media (max-width: 768px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: grid; place-items: center; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 16px; }
            .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .hero h1 { font-size: 32px; }
            .hero p { font-size: 16px; }
            .hero { min-height: 360px; margin: 12px 12px 0; padding: 32px 0; border-radius: 24px; }
            .section { padding: 48px 0; }
            .section-header { margin-bottom: 28px; }
            .section-header .title-group h2 { font-size: 24px; }
            .deal-wrap .deal-content h3 { font-size: 26px; }
            .deal-wrap .deal-content .price-big { font-size: 32px; }
            .timer-box { min-width: 64px; padding: 10px 14px; }
            .timer-box .num { font-size: 22px; }
            .footer-grid { grid-template-columns: 1fr; gap: 28px; }
            .brand { font-size: 20px; }
            .brand i { font-size: 22px;
