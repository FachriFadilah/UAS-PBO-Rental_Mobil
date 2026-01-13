<%@ page contentType="text/html;charset=UTF-8" %>

<nav class="bg-white shadow fixed w-full z-50">
    <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">

        <!-- LOGO -->
        <div class="flex items-center gap-3">
            <img src="img/logo.png" class="h-10" alt="Logo">
            <span class="text-xl font-bold text-indigo-600">Rental Mobil</span>
        </div>

        <!-- MENU -->
        <ul class="hidden md:flex gap-6 font-medium">
            <li><a href="#home" class="nav-link">Home</a></li>
            <li><a href="#profil" class="nav-link">About Us</a></li>
            <li><a href="#layanan" class="nav-link">Layanan</a></li>
            <li><a href="#mobil" class="nav-link">Mobil</a></li>
            <li><a href="#gallery" class="nav-link">Gallery</a></li>
            <li><a href="#team" class="nav-link">Tim</a></li>
            <li><a href="#artikel" class="nav-link">Artikel</a></li>
            <li><a href="#kontak" class="nav-link">Kontak</a></li>
        </ul>

        <!-- AUTH BUTTON -->
        <div class="flex items-center gap-3">
            <%
                String role = (String) session.getAttribute("role");
            %>

            <% if (role == null) { %>
            <!-- BELUM LOGIN -->
            <a href="login.jsp"
               class="bg-indigo-600 text-white px-4 py-2 rounded-lg hover:bg-indigo-700 transition-colors duration-300">
                Login
            </a>

            <% } else if ("user".equals(role)) { %>

            <!-- LOGIN USER -->
            <span class="text-gray-600 hidden md:inline">Halo, User</span>

            <!-- Tombol Sewa Sekarang -->
            <a href="sewa.jsp"
               class="bg-green-600 text-white px-4 py-2 rounded-lg hover:bg-green-700 transition-colors duration-300">
                Sewa Sekarang
            </a>
            
            <a href="logout.jsp"
               class="bg-gray-100 px-4 py-2 rounded-lg hover:bg-gray-200 transition-colors duration-300">
                Logout
            </a>


            <% } else if ("admin".equals(role)) { %>

            <!-- LOGIN ADMIN -->
            <a href="admin/dashboard.jsp"
               class="bg-indigo-600 text-white px-4 py-2 rounded-lg hover:bg-indigo-700 transition-colors duration-300">
                Dashboard
            </a>
            <a href="logout.jsp"
               class="bg-gray-100 px-4 py-2 rounded-lg hover:bg-gray-200 transition-colors duration-300">
                Logout
            </a>
            <% }%>
        </div>

        <!-- HAMBURGER -->
        <button onclick="toggleMenu()" class="md:hidden">
            <svg class="w-7 h-7" fill="none" stroke="currentColor" stroke-width="2"
                 viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round"
                  d="M4 6h16M4 12h16M4 18h16"/>
            </svg>
        </button>
    </div>
</nav>
