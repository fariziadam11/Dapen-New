<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title', 'DMS Dapen') - Document Management System</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --sidebar-width: 280px;
            --header-height: 60px;
            --primary-color: #2563eb;
            --primary-dark: #1d4ed8;
            --sidebar-bg: #1e293b;
            --sidebar-hover: #334155;
            --text-muted: #94a3b8;
        }

        * {
            font-family: 'Inter', sans-serif;
        }

        body {
            background-color: #f1f5f9;
            min-height: 100vh;
        }

        .sidebar {
            position: fixed;
            top: 0;
            left: 0;
            width: var(--sidebar-width);
            height: 100vh;
            background: linear-gradient(180deg, #1e293b 0%, #0f172a 100%);
            z-index: 1000;
            transition: all 0.3s ease;
            overflow-y: auto;
        }

        .sidebar-header {
            padding: 20px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }

        .sidebar-header h5 {
            color: #fff;
            margin: 0;
            font-weight: 600;
        }

        .sidebar-header small {
            color: var(--text-muted);
            font-size: 0.75rem;
        }

        .sidebar-search {
            padding: 15px 20px;
        }

        .sidebar-search input {
            background: rgba(255, 255, 255, 0.1);
            border: none;
            border-radius: 8px;
            padding: 10px 15px;
            color: #fff;
            width: 100%;
            font-size: 0.875rem;
        }

        .sidebar-search input::placeholder {
            color: var(--text-muted);
        }

        .nav-section {
            padding: 15px 20px 8px;
            color: var(--text-muted);
            font-size: 0.7rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .nav-item {
            margin: 2px 10px;
        }

        .nav-link {
            display: flex;
            align-items: center;
            padding: 10px 15px;
            color: #e2e8f0;
            text-decoration: none;
            border-radius: 8px;
            transition: all 0.2s ease;
            font-size: 0.875rem;
        }

        .nav-link:hover {
            background: var(--sidebar-hover);
            color: #fff;
        }

        .nav-link.active {
            background: var(--primary-color);
            color: #fff;
        }

        .nav-link i {
            width: 20px;
            margin-right: 12px;
            font-size: 1rem;
        }

        .nav-item.has-submenu>.nav-link::after {
            content: '\F282';
            font-family: 'bootstrap-icons';
            margin-left: auto;
            transition: transform 0.2s ease;
            font-size: 0.75rem;
        }

        .nav-item.has-submenu.open>.nav-link::after {
            transform: rotate(90deg);
        }

        .submenu {
            display: none;
            padding-left: 20px;
        }

        .nav-item.has-submenu.open .submenu {
            display: block;
        }

        .submenu .nav-link {
            padding: 8px 15px;
            font-size: 0.813rem;
            color: var(--text-muted);
        }

        .submenu .nav-link:hover,
        .submenu .nav-link.active {
            color: #fff;
        }

        .main-content {
            margin-left: var(--sidebar-width);
            min-height: 100vh;
        }

        .main-header {
            background: #fff;
            height: var(--header-height);
            padding: 0 24px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .page-content {
            padding: 24px;
        }

        .page-title {
            font-size: 1.5rem;
            font-weight: 600;
            color: #1e293b;
            margin: 0;
        }

        .card {
            border: none;
            border-radius: 12px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background: #fff;
            border-bottom: 1px solid #e2e8f0;
            padding: 16px 20px;
            font-weight: 600;
        }

        .table th {
            background: #f8fafc;
            font-weight: 600;
            font-size: 0.813rem;
            color: #64748b;
            text-transform: uppercase;
        }

        .table td {
            vertical-align: middle;
            padding: 12px 16px;
            font-size: 0.875rem;
        }

        .btn {
            border-radius: 8px;
            font-weight: 500;
            font-size: 0.875rem;
            padding: 8px 16px;
        }

        .btn-primary {
            background: var(--primary-color);
            border-color: var(--primary-color);
        }

        .badge-secret {
            background: #fef2f2;
            color: #dc2626;
        }

        .badge-public {
            background: #f0fdf4;
            color: #16a34a;
        }

        @media (max-width: 992px) {
            .sidebar {
                transform: translateX(-100%);
            }

            .sidebar.show {
                transform: translateX(0);
            }

            .main-content {
                margin-left: 0;
            }
        }
    </style>
    @stack('styles')
</head>

<body>
    @include('layouts.partials.sidebar')

    <div class="main-content">
        @include('layouts.partials.header')
        <div class="page-content">
            @yield('content')
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.querySelectorAll('.nav-item.has-submenu > .nav-link').forEach(link => {
            link.addEventListener('click', function(e) {
                e.preventDefault();
                this.parentElement.classList.toggle('open');
            });
        });

        const currentPath = window.location.pathname;
        document.querySelectorAll('.submenu .nav-link').forEach(link => {
            if (link.getAttribute('href') === currentPath) {
                link.classList.add('active');
                link.closest('.has-submenu').classList.add('open');
            }
        });
    </script>
    @stack('scripts')
</body>

</html>
