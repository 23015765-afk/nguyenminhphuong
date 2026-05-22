<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Cẩm nang du lịch trực tuyến - Chia sẻ kinh nghiệm và cẩm nang du lịch Việt Nam">
    <title>@yield('title', 'Cẩm Nang Du Lịch') - TravelGuide</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style>
        :root {
            --navy:      #0F172A;
            --gold:      #D4A373;
            --gold-dark: #b8864e;
            --cream:     #FAF7F2;
            --beige:     #E7D7C9;
            --slate:     #334155;
            --forest:    #1a3a2a;
            --primary:   #D4A373;
            --primary-dark: #b8864e;
            --secondary: #1a3a2a;
            --accent:    #D4A373;
            --bg-page:   #FAF7F2;
            --bg-card:   #ffffff;
            --text-primary:   #0F172A;
            --text-secondary: #334155;
            --text-muted:     #94a3b8;
            --gradient-primary: linear-gradient(135deg, #D4A373 0%, #b8864e 100%);
            --gradient-hero:    linear-gradient(135deg, #FAF7F2 0%, #E7D7C9 100%);
            --glass-border: rgba(212,163,115,0.18);
            --shadow-sm: 0 1px 4px rgba(15,23,42,0.07), 0 1px 2px rgba(15,23,42,0.04);
            --shadow-md: 0 4px 20px rgba(15,23,42,0.10), 0 2px 8px rgba(15,23,42,0.05);
            --shadow-lg: 0 20px 48px rgba(15,23,42,0.13), 0 8px 20px rgba(15,23,42,0.07);
            --radius-sm:   10px;
            --radius-md:   16px;
            --radius-lg:   24px;
            --radius-full: 9999px;
        }
        * { margin:0; padding:0; box-sizing:border-box; }
        html { scroll-behavior: smooth; }
        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg-page);
            color: var(--text-primary);
            min-height: 100vh;
            overflow-x: hidden;
            line-height: 1.7;
        }
        h1,h2,h3,h4,h5,h6 { font-family: 'Playfair Display', serif; }
        ::-webkit-scrollbar { width: 6px; }
        ::-webkit-scrollbar-track { background: var(--cream); }
        ::-webkit-scrollbar-thumb { background: var(--beige); border-radius: 3px; }
        ::-webkit-scrollbar-thumb:hover { background: var(--gold); }
        /* ── Navbar ── */
        .navbar-custom {
            background: rgba(255,255,255,0.97);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(212,163,115,0.15);
            padding: 0.85rem 0;
            transition: all 0.35s ease;
            box-shadow: 0 2px 12px rgba(15,23,42,0.06);
        }
        .navbar-custom.scrolled {
            background: rgba(255,255,255,0.99);
            box-shadow: var(--shadow-md);
        }
        .navbar-brand {
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.5rem;
            color: var(--navy) !important;
            letter-spacing: -0.01em;
        }
        .navbar-brand .brand-icon { color: var(--gold); }
        .nav-link {
            font-family: 'Inter', sans-serif;
            color: var(--slate) !important;
            font-weight: 500;
            font-size: 0.92rem;
            padding: 0.5rem 1rem !important;
            transition: color 0.3s ease;
            position: relative;
            letter-spacing: 0.01em;
        }
        .nav-link:hover, .nav-link.active { color: var(--gold) !important; }
        .nav-link::after {
            content: '';
            position: absolute;
            bottom: 0; left: 50%;
            transform: translateX(-50%);
            width: 0; height: 2px;
            background: var(--gold);
            transition: width 0.3s ease;
            border-radius: 2px;
        }
        .nav-link:hover::after, .nav-link.active::after { width: 70%; }
        /* ── Buttons ── */
        .btn-primary-custom {
            background: var(--gradient-primary);
            border: none;
            color: white;
            font-family: 'Inter', sans-serif;
            font-weight: 600;
            padding: 0.5rem 1.5rem;
            border-radius: var(--radius-full);
            transition: all 0.3s ease;
            box-shadow: 0 4px 14px rgba(212,163,115,0.35);
            letter-spacing: 0.02em;
        }
        .btn-primary-custom:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 28px rgba(212,163,115,0.45);
            color: white;
        }
        .btn-outline-custom {
            border: 2px solid var(--gold);
            color: var(--gold);
            font-family: 'Inter', sans-serif;
            font-weight: 600;
            padding: 0.5rem 1.5rem;
            border-radius: var(--radius-full);
            transition: all 0.3s ease;
            background: transparent;
            letter-spacing: 0.02em;
        }
        .btn-outline-custom:hover {
            background: var(--gradient-primary);
            border-color: transparent;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 8px 24px rgba(212,163,115,0.35);
        }
        /* ── Cards ── */
        .card-glass {
            background: var(--bg-card);
            border: 1px solid var(--glass-border);
            border-radius: var(--radius-md);
            overflow: hidden;
            transition: all 0.35s cubic-bezier(0.4,0,0.2,1);
            box-shadow: var(--shadow-sm);
        }
        .card-glass:hover {
            transform: translateY(-6px);
            border-color: rgba(212,163,115,0.35);
            box-shadow: var(--shadow-lg);
        }
        .card-glass .card-img-top {
            height: 240px;
            object-fit: cover;
            transition: transform 0.5s ease;
        }
        .card-glass:hover .card-img-top { transform: scale(1.07); }
        .card-glass .card-img-wrapper { overflow: hidden; position: relative; }
        .card-glass .card-img-overlay-gradient {
            position: absolute; bottom: 0; left: 0; right: 0;
            height: 65%;
            background: linear-gradient(transparent, rgba(15,23,42,0.72));
            pointer-events: none;
        }
        .card-glass .card-body { padding: 1.5rem; }
        .card-glass .card-title {
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.08rem;
            line-height: 1.4;
            margin-bottom: 0.5rem;
        }
        .card-glass .card-title a {
            color: var(--text-primary);
            text-decoration: none;
            transition: color 0.3s ease;
        }
        .card-glass .card-title a:hover { color: var(--gold); }
        .card-glass .card-text {
            color: var(--text-secondary);
            font-size: 0.9rem;
            line-height: 1.65;
        }
        /* ── Badge Category ── */
        .badge-category {
            background: rgba(212,163,115,0.14);
            color: var(--gold-dark);
            font-family: 'Inter', sans-serif;
            font-weight: 600;
            font-size: 0.72rem;
            padding: 0.3rem 0.85rem;
            border-radius: var(--radius-full);
            border: 1px solid rgba(212,163,115,0.3);
            display: inline-block;
            letter-spacing: 0.04em;
            text-transform: uppercase;
        }
        /* ── Meta Info ── */
        .meta-info {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            color: var(--text-muted);
            font-size: 0.82rem;
            font-family: 'Inter', sans-serif;
        }
        .meta-info i { color: var(--gold); }
        /* ── Stars ── */
        .stars { color: #D4A373; }
        .stars .empty { color: #d6d3d1; }
        /* ── Section Headers ── */
        .section-header { margin-bottom: 2.5rem; }
        .section-header h2 {
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 2rem;
            margin-bottom: 0.5rem;
            color: var(--navy);
            letter-spacing: -0.01em;
        }
        .section-header .gradient-text { color: var(--gold); }
        .section-header p { color: var(--text-secondary); font-size: 1.05rem; }
        .gradient-text { color: var(--gold); }
        /* ── Footer ── */
        .footer {
            background: var(--navy);
            border-top: 1px solid rgba(212,163,115,0.2);
            padding: 4rem 0 1.5rem;
            margin-top: 5rem;
            color: #94a3b8;
        }
        .footer h5 {
            font-family: 'Playfair Display', serif;
            font-weight: 600;
            margin-bottom: 1.25rem;
            color: var(--gold);
            font-size: 1.05rem;
        }
        .footer a {
            color: #94a3b8;
            text-decoration: none;
            transition: color 0.3s ease;
            display: block;
            padding: 0.25rem 0;
            font-size: 0.9rem;
        }
        .footer a:hover { color: var(--gold); }
        .footer .footer-brand {
            font-family: 'Playfair Display', serif;
            font-size: 1.4rem;
            font-weight: 700;
            color: #ffffff;
        }
        .footer .social-icon {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 38px; height: 38px;
            border-radius: 50%;
            border: 1px solid rgba(212,163,115,0.3);
            color: #94a3b8;
            font-size: 0.95rem;
            transition: all 0.3s ease;
            text-decoration: none;
        }
        .footer .social-icon:hover {
            background: var(--gold);
            border-color: var(--gold);
            color: white;
            transform: translateY(-2px);
        }
        /* ── Alerts ── */
        .alert-custom {
            border: none;
            border-radius: var(--radius-sm);
            padding: 1rem 1.5rem;
            font-weight: 500;
            font-family: 'Inter', sans-serif;
        }
        .alert-success-custom {
            background: rgba(26,58,42,0.08);
            color: #1a3a2a;
            border: 1px solid rgba(26,58,42,0.2) !important;
        }
        .alert-error-custom {
            background: rgba(220,38,38,0.07);
            color: #dc2626;
            border: 1px solid rgba(220,38,38,0.18) !important;
        }
        /* ── Form Controls ── */
        .form-control-dark {
            background: #fdfcfa !important;
            border: 1px solid var(--beige) !important;
            color: var(--text-primary) !important;
            border-radius: var(--radius-sm);
            padding: 0.7rem 1rem;
            transition: all 0.3s ease;
            font-size: 0.95rem;
            font-family: 'Inter', sans-serif;
        }
        .form-control-dark:focus {
            border-color: var(--gold) !important;
            box-shadow: 0 0 0 3px rgba(212,163,115,0.15) !important;
            background: #ffffff !important;
        }
        .form-control-dark::placeholder { color: var(--text-muted); }
        .form-label-custom {
            color: var(--text-secondary);
            font-weight: 600;
            font-size: 0.875rem;
            margin-bottom: 0.5rem;
            display: block;
            font-family: 'Inter', sans-serif;
        }
        /* ── Favorite Button ── */
        .btn-favorite {
            border: 2px solid rgba(239,68,68,0.25);
            color: #94a3b8;
            background: transparent;
            border-radius: var(--radius-full);
            padding: 0.5rem 1.25rem;
            transition: all 0.3s ease;
            font-weight: 500;
            font-family: 'Inter', sans-serif;
        }
        .btn-favorite.active, .btn-favorite:hover {
            background: rgba(239,68,68,0.08);
            border-color: #ef4444;
            color: #ef4444;
        }
        /* ── Pagination ── */
        .pagination .page-link {
            background: var(--bg-card);
            border: 1px solid var(--glass-border);
            color: var(--text-secondary);
            transition: all 0.3s ease;
            border-radius: var(--radius-sm) !important;
            margin: 0 2px;
            font-family: 'Inter', sans-serif;
        }
        .pagination .page-link:hover {
            background: var(--gold);
            border-color: var(--gold);
            color: white;
        }
        .pagination .page-item.active .page-link {
            background: var(--gradient-primary);
            border-color: transparent;
            color: white !important;
        }
        /* ── User Avatar ── */
        .user-avatar {
            width: 36px; height: 36px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid var(--gold);
        }
        /* ── Navbar Toggler ── */
        .navbar-toggler {
            border: 1px solid var(--glass-border);
            padding: 0.4rem 0.6rem;
        }
        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%2851,65,85,1%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
        }
        /* ── Animations ── */
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(24px); }
            to   { opacity: 1; transform: translateY(0); }
        }
        .animate-fade-in-up { animation: fadeInUp 0.6s ease forwards; }
        .delay-100 { animation-delay: 0.1s; }
        .delay-200 { animation-delay: 0.2s; }
        .delay-300 { animation-delay: 0.3s; }
        /* ── Dropdown ── */
        .dropdown-menu {
            background: var(--bg-card);
            border: 1px solid var(--glass-border);
            box-shadow: var(--shadow-md);
            border-radius: var(--radius-md);
            padding: 0.5rem;
        }
        .dropdown-item {
            border-radius: var(--radius-sm);
            padding: 0.5rem 1rem;
            color: var(--text-primary);
            font-weight: 500;
            font-family: 'Inter', sans-serif;
            transition: all 0.2s ease;
        }
        .dropdown-item:hover {
            background: rgba(212,163,115,0.1);
            color: var(--gold-dark);
        }
        /* ── Post Content ── */
        .post-content h1,.post-content h2,.post-content h3,.post-content h4 {
            font-family: 'Playfair Display', serif;
            color: var(--navy);
            margin-top: 2rem;
            margin-bottom: 1rem;
        }
        .post-content p { margin-bottom: 1.4rem; line-height: 1.9; }
        .post-content img { max-width: 100%; border-radius: var(--radius-md); margin: 1.5rem 0; }
        .post-content blockquote {
            border-left: 4px solid var(--gold);
            padding: 1rem 1.5rem;
            background: rgba(212,163,115,0.07);
            border-radius: 0 var(--radius-sm) var(--radius-sm) 0;
            font-style: italic;
            color: var(--slate);
            margin: 1.5rem 0;
        }
        .post-content p:first-of-type::first-letter {
            font-family: 'Playfair Display', serif;
            font-size: 3.5rem;
            font-weight: 700;
            float: left;
            line-height: 0.85;
            margin-right: 0.12em;
            color: var(--gold);
        }
        /* ── Mobile ── */
        @media (max-width: 768px) {
            .section-header h2 { font-size: 1.5rem; }
            .card-glass .card-img-top { height: 200px; }
            .navbar-brand { font-size: 1.2rem; }
        }
    </style>
    @stack('styles')
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-custom fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="{{ route('home') }}">
                <span class="brand-icon"><i class="fas fa-paper-plane me-2"></i></span>TravelGuide
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto ms-3">
                    <li class="nav-item">
                        <a class="nav-link {{ request()->routeIs('home') ? 'active' : '' }}" href="{{ route('home') }}">
                            Trang chủ
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ request()->routeIs('posts.*') ? 'active' : '' }}" href="{{ route('posts.index') }}">
                            Bài viết
                        </a>
                    </li>
                </ul>
                <div class="d-flex align-items-center gap-2">
                    @guest
                        <a href="{{ route('login') }}" class="btn btn-outline-custom btn-sm">
                            Đăng nhập
                        </a>
                        <a href="{{ route('register') }}" class="btn btn-primary-custom btn-sm">
                            <i class="fas fa-paper-plane me-1"></i> Đăng ký
                        </a>
                    @else
                        <a href="{{ route('posts.favorites') }}" class="btn btn-sm btn-outline-custom" title="Yêu thích">
                            <i class="fas fa-heart me-1"></i> <span class="d-none d-md-inline">Yêu thích</span>
                        </a>
                        <div class="dropdown">
                            <a class="nav-link dropdown-toggle d-flex align-items-center gap-2" href="#" role="button" data-bs-toggle="dropdown">
                                <img src="{{ auth()->user()->avatar_url }}" alt="Avatar" class="user-avatar">
                                <span class="d-none d-md-inline" style="font-size:0.9rem;font-weight:600;color:var(--navy);">{{ auth()->user()->name }}</span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li>
                                    <a class="dropdown-item" href="{{ route('profile.show') }}">
                                        <i class="fas fa-user me-2" style="color:var(--gold);"></i> Hồ sơ
                                    </a>
                                </li>
                                @if(auth()->user()->isAdmin())
                                <li>
                                    <a class="dropdown-item" href="{{ route('admin.dashboard') }}">
                                        <i class="fas fa-tachometer-alt me-2" style="color:var(--gold);"></i> Admin
                                    </a>
                                </li>
                                @endif
                                <li><hr class="dropdown-divider" style="border-color: var(--glass-border);"></li>
                                <li>
                                    <form method="POST" action="{{ route('logout') }}">
                                        @csrf
                                        <button type="submit" class="dropdown-item">
                                            <i class="fas fa-sign-out-alt me-2" style="color:#ef4444;"></i> Đăng xuất
                                        </button>
                                    </form>
                                </li>
                            </ul>
                        </div>
                    @endguest
                </div>
            </div>
        </div>
    </nav>

    <!-- Content -->
    <main style="padding-top: 76px;">
        @if(session('success'))
        <div class="container mt-3">
            <div class="alert alert-custom alert-success-custom alert-dismissible fade show">
                <i class="fas fa-check-circle me-2"></i> {{ session('success') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            </div>
        </div>
        @endif
        @if(session('error'))
        <div class="container mt-3">
            <div class="alert alert-custom alert-error-custom alert-dismissible fade show">
                <i class="fas fa-exclamation-circle me-2"></i> {{ session('error') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            </div>
        </div>
        @endif
        @yield('content')
    </main>
    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-4 col-md-6">
                    <div class="footer-brand mb-3">
                        <i class="fas fa-paper-plane me-2" style="color:var(--gold);"></i>TravelGuide
                    </div>
                    <p style="color:#94a3b8;font-size:0.9rem;line-height:1.75;max-width:280px;">Cẩm nang du lịch trực tuyến — Nơi chia sẻ kinh nghiệm và cảm hứng du lịch Việt Nam.</p>
                    <div class="d-flex gap-2 mt-4">
                        <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-youtube"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-tiktok"></i></a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <h5>Khám phá</h5>
                    <a href="{{ route('posts.index') }}">Tất cả bài viết</a>
                    <a href="{{ route('posts.index', ['sort' => 'popular']) }}">Phổ biến nhất</a>
                    <a href="{{ route('posts.index', ['sort' => 'latest']) }}">Mới nhất</a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h5>Danh mục</h5>
                    @php $footerCategories = \App\Models\Category::take(5)->get(); @endphp
                    @foreach($footerCategories as $cat)
                    <a href="{{ route('posts.index', ['category' => $cat->slug]) }}">{{ $cat->name }}</a>
                    @endforeach
                </div>
                <div class="col-lg-3 col-md-6">
                    <h5>Liên hệ</h5>
                    <p style="color:#94a3b8;margin-bottom:0.5rem;font-size:0.9rem;"><i class="fas fa-envelope me-2" style="color:var(--gold);"></i>contact@travelguide.vn</p>
                    <p style="color:#94a3b8;margin-bottom:0.5rem;font-size:0.9rem;"><i class="fas fa-phone me-2" style="color:var(--gold);"></i>0123 456 789</p>
                    <p style="color:#94a3b8;font-size:0.9rem;"><i class="fas fa-map-marker-alt me-2" style="color:var(--gold);"></i>Việt Nam</p>
                </div>
            </div>
            <hr style="border-color: rgba(212,163,115,0.15); margin: 2.5rem 0 1.25rem;">
            <div class="text-center" style="color:#64748b;">
                <small style="font-family:'Inter',sans-serif;">&copy; {{ date('Y') }} TravelGuide. All rights reserved.</small>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init({ duration: 800, once: true, offset: 100 });
        window.addEventListener('scroll', function() {
            const nav = document.getElementById('mainNav');
            if (window.scrollY > 50) { nav.classList.add('scrolled'); }
            else { nav.classList.remove('scrolled'); }
        });
        setTimeout(function() {
            document.querySelectorAll('.alert-dismissible').forEach(function(alert) {
                new bootstrap.Alert(alert).close();
            });
        }, 5000);
    </script>
    @stack('scripts')

    {{-- ═══════════════════════════════════════════════
         TRAVELBOT — AI Chatbot Widget
         ═══════════════════════════════════════════════ --}}
    <style>
    /* ── Chatbot Launcher Button ── */
    #chatbot-launcher {
        position: fixed;
        bottom: 28px;
        right: 28px;
        width: 58px;
        height: 58px;
        border-radius: 50%;
        background: linear-gradient(135deg, #D4A373, #b8864e);
        border: none;
        cursor: pointer;
        box-shadow: 0 8px 28px rgba(212,163,115,0.55);
        display: flex;
        align-items: center;
        justify-content: center;
        z-index: 9999;
        transition: all 0.3s cubic-bezier(0.4,0,0.2,1);
        color: white;
        font-size: 1.4rem;
    }
    #chatbot-launcher:hover {
        transform: scale(1.1) translateY(-3px);
        box-shadow: 0 14px 36px rgba(212,163,115,0.65);
    }
    #chatbot-launcher .badge-unread {
        position: absolute;
        top: -4px;
        right: -4px;
        width: 20px;
        height: 20px;
        background: #ef4444;
        border-radius: 50%;
        font-size: 0.65rem;
        font-weight: 700;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        border: 2px solid white;
        display: none;
    }

    /* ── Chatbot Window ── */
    #chatbot-window {
        position: fixed;
        bottom: 100px;
        right: 28px;
        width: 380px;
        max-height: 560px;
        background: #ffffff;
        border-radius: 20px;
        box-shadow: 0 24px 64px rgba(15,23,42,0.18), 0 8px 24px rgba(15,23,42,0.1);
        border: 1px solid rgba(212,163,115,0.2);
        display: flex;
        flex-direction: column;
        z-index: 9998;
        overflow: hidden;
        transform: scale(0.85) translateY(20px);
        opacity: 0;
        pointer-events: none;
        transition: all 0.3s cubic-bezier(0.4,0,0.2,1);
        transform-origin: bottom right;
    }
    #chatbot-window.open {
        transform: scale(1) translateY(0);
        opacity: 1;
        pointer-events: all;
    }

    /* ── Header ── */
    .chatbot-header {
        background: linear-gradient(135deg, #0F172A 0%, #1a3a2a 100%);
        padding: 1rem 1.25rem;
        display: flex;
        align-items: center;
        gap: 0.75rem;
        flex-shrink: 0;
    }
    .chatbot-avatar {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        background: linear-gradient(135deg, #D4A373, #b8864e);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 1.1rem;
        color: white;
        flex-shrink: 0;
    }
    .chatbot-header-info h6 {
        font-family: 'Playfair Display', serif;
        font-weight: 700;
        color: #ffffff;
        margin: 0;
        font-size: 0.95rem;
    }
    .chatbot-header-info span {
        font-size: 0.72rem;
        color: rgba(255,255,255,0.6);
        display: flex;
        align-items: center;
        gap: 4px;
    }
    .chatbot-header-info .online-dot {
        width: 7px;
        height: 7px;
        background: #22c55e;
        border-radius: 50%;
        display: inline-block;
        animation: pulse-dot 2s infinite;
    }
    @keyframes pulse-dot {
        0%, 100% { opacity: 1; }
        50% { opacity: 0.4; }
    }
    .chatbot-close {
        margin-left: auto;
        background: rgba(255,255,255,0.1);
        border: none;
        color: rgba(255,255,255,0.7);
        width: 30px;
        height: 30px;
        border-radius: 50%;
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: center;
        transition: all 0.2s;
        font-size: 0.85rem;
    }
    .chatbot-close:hover {
        background: rgba(255,255,255,0.2);
        color: white;
    }

    /* ── Messages Area ── */
    .chatbot-messages {
        flex: 1;
        overflow-y: auto;
        padding: 1.25rem;
        display: flex;
        flex-direction: column;
        gap: 0.85rem;
        background: #FAF7F2;
        scroll-behavior: smooth;
    }
    .chatbot-messages::-webkit-scrollbar { width: 4px; }
    .chatbot-messages::-webkit-scrollbar-thumb { background: #E7D7C9; border-radius: 2px; }

    /* ── Message Bubbles ── */
    .msg-row {
        display: flex;
        gap: 0.6rem;
        align-items: flex-end;
    }
    .msg-row.user { flex-direction: row-reverse; }

    .msg-avatar {
        width: 28px;
        height: 28px;
        border-radius: 50%;
        flex-shrink: 0;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 0.75rem;
        font-weight: 700;
    }
    .msg-avatar.bot {
        background: linear-gradient(135deg, #D4A373, #b8864e);
        color: white;
    }
    .msg-avatar.user-av {
        background: linear-gradient(135deg, #0F172A, #334155);
        color: white;
    }

    .msg-bubble {
        max-width: 78%;
        padding: 0.65rem 1rem;
        border-radius: 16px;
        font-size: 0.875rem;
        line-height: 1.6;
        font-family: 'Inter', sans-serif;
        word-break: break-word;
    }
    .msg-bubble.bot {
        background: #ffffff;
        color: #0F172A;
        border: 1px solid rgba(212,163,115,0.2);
        border-bottom-left-radius: 4px;
        box-shadow: 0 2px 8px rgba(15,23,42,0.06);
    }
    .msg-bubble.user {
        background: linear-gradient(135deg, #D4A373, #b8864e);
        color: white;
        border-bottom-right-radius: 4px;
    }
    .msg-time {
        font-size: 0.65rem;
        color: #94a3b8;
        margin-top: 3px;
        text-align: right;
    }
    .msg-row.user .msg-time { text-align: left; }

    /* ── Typing Indicator ── */
    .typing-indicator {
        display: flex;
        gap: 4px;
        align-items: center;
        padding: 0.65rem 1rem;
        background: #ffffff;
        border-radius: 16px;
        border-bottom-left-radius: 4px;
        border: 1px solid rgba(212,163,115,0.2);
        width: fit-content;
    }
    .typing-dot {
        width: 7px;
        height: 7px;
        background: #D4A373;
        border-radius: 50%;
        animation: typing-bounce 1.2s infinite;
    }
    .typing-dot:nth-child(2) { animation-delay: 0.2s; }
    .typing-dot:nth-child(3) { animation-delay: 0.4s; }
    @keyframes typing-bounce {
        0%, 60%, 100% { transform: translateY(0); opacity: 0.5; }
        30% { transform: translateY(-6px); opacity: 1; }
    }

    /* ── Quick Suggestions ── */
    .chatbot-suggestions {
        padding: 0.75rem 1.25rem 0;
        display: flex;
        gap: 0.5rem;
        flex-wrap: wrap;
        background: #FAF7F2;
    }
    .suggestion-chip {
        background: rgba(212,163,115,0.12);
        border: 1px solid rgba(212,163,115,0.3);
        color: #b8864e;
        font-size: 0.75rem;
        font-weight: 600;
        padding: 0.3rem 0.75rem;
        border-radius: 9999px;
        cursor: pointer;
        transition: all 0.2s;
        font-family: 'Inter', sans-serif;
        white-space: nowrap;
    }
    .suggestion-chip:hover {
        background: #D4A373;
        color: white;
        border-color: #D4A373;
    }

    /* ── Input Area ── */
    .chatbot-input-area {
        padding: 0.85rem 1.25rem 1rem;
        background: #ffffff;
        border-top: 1px solid rgba(212,163,115,0.15);
        display: flex;
        gap: 0.6rem;
        align-items: flex-end;
        flex-shrink: 0;
    }
    .chatbot-input {
        flex: 1;
        border: 1px solid #E7D7C9;
        border-radius: 12px;
        padding: 0.6rem 0.9rem;
        font-size: 0.875rem;
        font-family: 'Inter', sans-serif;
        color: #0F172A;
        background: #FAF7F2;
        resize: none;
        outline: none;
        transition: border-color 0.2s;
        max-height: 100px;
        line-height: 1.5;
    }
    .chatbot-input:focus { border-color: #D4A373; background: #ffffff; }
    .chatbot-input::placeholder { color: #94a3b8; }
    .chatbot-send {
        width: 38px;
        height: 38px;
        border-radius: 50%;
        background: linear-gradient(135deg, #D4A373, #b8864e);
        border: none;
        color: white;
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: center;
        transition: all 0.2s;
        flex-shrink: 0;
        font-size: 0.9rem;
    }
    .chatbot-send:hover { transform: scale(1.1); box-shadow: 0 4px 14px rgba(212,163,115,0.5); }
    .chatbot-send:disabled { opacity: 0.5; cursor: not-allowed; transform: none; }

    /* ── Footer note ── */
    .chatbot-footer-note {
        text-align: center;
        font-size: 0.65rem;
        color: #94a3b8;
        padding: 0 1.25rem 0.6rem;
        background: #ffffff;
        font-family: 'Inter', sans-serif;
    }

    /* ── Mobile responsive ── */
    @media (max-width: 480px) {
        #chatbot-window {
            width: calc(100vw - 24px);
            right: 12px;
            bottom: 90px;
            max-height: 70vh;
        }
        #chatbot-launcher { right: 16px; bottom: 20px; }
    }
    </style>

    <!-- Chatbot Launcher Button -->
    <button id="chatbot-launcher" onclick="toggleChatbot()" title="Chat với TravelBot AI">
        <i class="fas fa-robot" id="chatbot-icon"></i>
        <span class="badge-unread" id="chatbot-badge">1</span>
    </button>

    <!-- Chatbot Window -->
    <div id="chatbot-window">
        <!-- Header -->
        <div class="chatbot-header">
            <div class="chatbot-avatar">
                <i class="fas fa-robot"></i>
            </div>
            <div class="chatbot-header-info">
                <h6>TravelBot AI</h6>
                <span><span class="online-dot"></span> Trực tuyến • Hỗ trợ du lịch 24/7</span>
            </div>
            <button class="chatbot-close" onclick="toggleChatbot()">
                <i class="fas fa-times"></i>
            </button>
        </div>

        <!-- Messages -->
        <div class="chatbot-messages" id="chatbot-messages">
            <!-- Welcome message -->
            <div class="msg-row">
                <div class="msg-avatar bot"><i class="fas fa-robot" style="font-size:0.7rem;"></i></div>
                <div>
                    <div class="msg-bubble bot">
                        Xin chào! Tôi là <strong>TravelBot</strong> 🌏<br>
                        Tôi có thể giúp bạn:<br>
                        • Tư vấn địa điểm du lịch<br>
                        • Gợi ý ẩm thực & khách sạn<br>
                        • Lập lịch trình chuyến đi<br>
                        Bạn muốn khám phá đâu hôm nay? ✈️
                    </div>
                    <div class="msg-time">Vừa xong</div>
                </div>
            </div>
        </div>

        <!-- Quick Suggestions -->
        <div class="chatbot-suggestions" id="chatbot-suggestions">
            <button class="suggestion-chip" onclick="sendSuggestion(this)">🏖️ Biển đẹp nhất VN</button>
            <button class="suggestion-chip" onclick="sendSuggestion(this)">🍜 Ẩm thực Hà Nội</button>
            <button class="suggestion-chip" onclick="sendSuggestion(this)">💰 Du lịch tiết kiệm</button>
            <button class="suggestion-chip" onclick="sendSuggestion(this)">🏔️ Trekking Sapa</button>
        </div>

        <!-- Input Area -->
        <div class="chatbot-input-area">
            <textarea
                id="chatbot-input"
                class="chatbot-input"
                placeholder="Hỏi về du lịch Việt Nam..."
                rows="1"
                onkeydown="handleChatKey(event)"
                oninput="autoResizeTextarea(this)"
            ></textarea>
            <button class="chatbot-send" id="chatbot-send-btn" onclick="sendMessage()">
                <i class="fas fa-paper-plane"></i>
            </button>
        </div>
        <div class="chatbot-footer-note">
            Powered by Google Gemini AI • TravelGuide
        </div>
    </div>

    <script>
    // ═══════════════════════════════════════════
    // TravelBot — Chatbot Logic
    // ═══════════════════════════════════════════

    let chatHistory = [];   // Lưu lịch sử hội thoại
    let isTyping    = false; // Trạng thái đang gửi
    let isOpen      = false; // Trạng thái cửa sổ

    // Mở/đóng cửa sổ chatbot
    function toggleChatbot() {
        isOpen = !isOpen;
        const win    = document.getElementById('chatbot-window');
        const icon   = document.getElementById('chatbot-icon');
        const badge  = document.getElementById('chatbot-badge');

        if (isOpen) {
            win.classList.add('open');
            icon.className = 'fas fa-times';
            badge.style.display = 'none';
            setTimeout(() => document.getElementById('chatbot-input').focus(), 300);
        } else {
            win.classList.remove('open');
            icon.className = 'fas fa-robot';
        }
    }

    // Gửi tin nhắn từ suggestion chip
    function sendSuggestion(btn) {
        const text = btn.textContent.replace(/^[^\w\s]+\s*/, '').trim(); // bỏ emoji đầu
        document.getElementById('chatbot-input').value = btn.textContent.trim();
        sendMessage();
        // Ẩn suggestions sau lần đầu dùng
        document.getElementById('chatbot-suggestions').style.display = 'none';
    }

    // Auto resize textarea
    function autoResizeTextarea(el) {
        el.style.height = 'auto';
        el.style.height = Math.min(el.scrollHeight, 100) + 'px';
    }

    // Xử lý phím Enter
    function handleChatKey(e) {
        if (e.key === 'Enter' && !e.shiftKey) {
            e.preventDefault();
            sendMessage();
        }
    }

    // Gửi tin nhắn
    async function sendMessage() {
        const input = document.getElementById('chatbot-input');
        const text  = input.value.trim();

        if (!text || isTyping) return;

        // Hiển thị tin nhắn user
        appendMessage('user', text);
        input.value = '';
        input.style.height = 'auto';

        // Ẩn suggestions
        document.getElementById('chatbot-suggestions').style.display = 'none';

        // Hiển thị typing indicator
        showTyping();
        isTyping = true;
        document.getElementById('chatbot-send-btn').disabled = true;

        try {
            const response = await fetch('{{ route("chatbot.chat") }}', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content,
                    'Accept': 'application/json',
                },
                body: JSON.stringify({
                    message: text,
                    history: chatHistory.slice(-10), // Gửi tối đa 10 lượt gần nhất
                }),
            });

            const data = await response.json();
            hideTyping();

            if (data.success) {
                appendMessage('bot', data.message, data.posts || []);
                // Lưu vào history
                chatHistory.push({ role: 'user',  content: text });
                chatHistory.push({ role: 'model', content: data.message });
                // Giới hạn history 20 lượt
                if (chatHistory.length > 20) chatHistory = chatHistory.slice(-20);
            } else {
                appendMessage('bot', data.message || 'Xin lỗi, có lỗi xảy ra. Vui lòng thử lại! 🙏', []);
            }
        } catch (err) {
            hideTyping();
            appendMessage('bot', 'Mất kết nối mạng. Vui lòng kiểm tra internet và thử lại! 📶', []);
        } finally {
            isTyping = false;
            document.getElementById('chatbot-send-btn').disabled = false;
            document.getElementById('chatbot-input').focus();
        }
    }

    // Thêm tin nhắn vào UI
    function appendMessage(role, text, posts) {
        posts = posts || [];
        const container = document.getElementById('chatbot-messages');
        const now = new Date().toLocaleTimeString('vi-VN', { hour: '2-digit', minute: '2-digit' });

        const isBot       = role === 'bot';
        const avatarClass = isBot ? 'bot' : 'user-av';
        const avatarIcon  = isBot ? 'fa-robot' : 'fa-user';
        const bubbleClass = isBot ? 'bot' : 'user';
        const rowClass    = isBot ? '' : 'user';

        const formatted = formatMessage(text);

        // Render post cards nếu có bài viết
        let postsHtml = '';
        if (isBot && posts.length > 0) {
            postsHtml = '<div style="margin-top:0.75rem;display:flex;flex-direction:column;gap:0.5rem;">';
            posts.forEach(function(post, idx) {
                const postUrl = '{{ url("/bai-viet") }}/' + post.slug;
                const location = post.location
                    ? '<span style="color:#94a3b8;font-size:0.7rem;"><i class="fas fa-map-marker-alt" style="color:#D4A373;margin-right:3px;"></i>' + escapeHtml(post.location) + '</span>'
                    : '';
                const excerpt = post.excerpt
                    ? '<p style="color:#64748b;font-size:0.75rem;margin:0.2rem 0 0;line-height:1.4;">' + escapeHtml(post.excerpt) + '</p>'
                    : '';
                postsHtml += `
                    <a href="${postUrl}" target="_blank" style="
                        display:block;
                        background:#FAF7F2;
                        border:1px solid rgba(212,163,115,0.3);
                        border-radius:10px;
                        padding:0.6rem 0.75rem;
                        text-decoration:none;
                        transition:all 0.2s ease;
                        cursor:pointer;
                    "
                    onmouseover="this.style.background='rgba(212,163,115,0.12)';this.style.borderColor='#D4A373';"
                    onmouseout="this.style.background='#FAF7F2';this.style.borderColor='rgba(212,163,115,0.3)';"
                    >
                        <div style="display:flex;align-items:flex-start;gap:0.5rem;">
                            <span style="
                                background:linear-gradient(135deg,#D4A373,#b8864e);
                                color:white;
                                font-size:0.65rem;
                                font-weight:700;
                                width:18px;height:18px;
                                border-radius:50%;
                                display:inline-flex;align-items:center;justify-content:center;
                                flex-shrink:0;margin-top:1px;
                            ">${idx + 1}</span>
                            <div style="flex:1;min-width:0;">
                                <div style="font-weight:600;font-size:0.82rem;color:#0F172A;line-height:1.35;margin-bottom:0.2rem;">${escapeHtml(post.title)}</div>
                                ${location}
                                ${excerpt}
                                <div style="margin-top:0.3rem;display:flex;align-items:center;gap:0.75rem;">
                                    <span style="color:#94a3b8;font-size:0.7rem;"><i class="fas fa-eye" style="color:#D4A373;margin-right:3px;"></i>${post.views} lượt xem</span>
                                    <span style="color:#D4A373;font-size:0.7rem;font-weight:600;">Đọc ngay →</span>
                                </div>
                            </div>
                        </div>
                    </a>`;
            });
            postsHtml += '</div>';
        }

        const html = `
            <div class="msg-row ${rowClass}">
                <div class="msg-avatar ${avatarClass}">
                    <i class="fas ${avatarIcon}" style="font-size:0.7rem;"></i>
                </div>
                <div style="max-width:85%;">
                    <div class="msg-bubble ${bubbleClass}">${formatted}${postsHtml}</div>
                    <div class="msg-time">${now}</div>
                </div>
            </div>
        `;

        container.insertAdjacentHTML('beforeend', html);
        container.scrollTop = container.scrollHeight;
    }

    // Escape HTML để tránh XSS khi render dữ liệu từ server
    function escapeHtml(str) {
        if (!str) return '';
        return String(str)
            .replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/"/g, '&quot;');
    }

    // Format text — convert **bold**, *italic*, bullet points
    function formatMessage(text) {
        return text
            .replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>')
            .replace(/\*(.*?)\*/g, '<em>$1</em>')
            .replace(/\n/g, '<br>');
    }

    // Hiển thị typing indicator
    function showTyping() {
        const container = document.getElementById('chatbot-messages');
        const html = `
            <div class="msg-row" id="typing-row">
                <div class="msg-avatar bot"><i class="fas fa-robot" style="font-size:0.7rem;"></i></div>
                <div class="typing-indicator">
                    <div class="typing-dot"></div>
                    <div class="typing-dot"></div>
                    <div class="typing-dot"></div>
                </div>
            </div>
        `;
        container.insertAdjacentHTML('beforeend', html);
        container.scrollTop = container.scrollHeight;
    }

    // Ẩn typing indicator
    function hideTyping() {
        const row = document.getElementById('typing-row');
        if (row) row.remove();
    }

    // Hiển thị badge khi chưa mở chatbot
    setTimeout(() => {
        if (!isOpen) {
            document.getElementById('chatbot-badge').style.display = 'flex';
        }
    }, 3000);

    // Auto-open chatbot sau khi đăng nhập thành công
    @if(session('chatbot_open'))
    setTimeout(() => {
        if (!isOpen) {
            toggleChatbot();
            // Gửi tin nhắn chào mừng cá nhân hoá
            setTimeout(() => {
                const userName = '{{ auth()->check() ? auth()->user()->name : "" }}';
                appendMessage('bot',
                    'Chào mừng **' + escapeHtml(userName) + '** đã đăng nhập! 🎉\n'
                    + 'Tôi là TravelBot, sẵn sàng tư vấn du lịch cho bạn.\n'
                    + 'Bạn muốn khám phá điểm đến nào hôm nay? ✈️',
                    []
                );
            }, 600);
        }
    }, 500);
    @endif
    </script>
</body>
</html>
