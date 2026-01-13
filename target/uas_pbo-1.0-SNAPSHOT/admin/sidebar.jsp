<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String uri = request.getRequestURI();
%>

<aside class="sidebar">

    <!-- BRAND -->
    <div class="brand">
        <img src="../img/logo.png" alt="Logo">
        <div class="brand-text">
            <span class="title">Admin Panel</span>
            <span class="subtitle">Rental Mobil</span>
        </div>
    </div>

    <!-- MENU -->
    <ul class="menu">

        <li class="<%= uri.contains("dashboard.jsp") ? "active" : "" %>">
            <a href="dashboard.jsp">
                <i class="fa-solid fa-chart-line"></i>
                <span>Dashboard</span>
            </a>
        </li>

        <li class="<%= uri.contains("mobil") ? "active" : "" %>">
            <a href="mobilList.jsp">
                <i class="fa-solid fa-car"></i>
                <span>Data Mobil</span>
            </a>
        </li>
        <li class="<%= uri.contains("user") ? "active" : "" %>">
            <a href="user.jsp">
                <i class="fa-solid fa-car"></i>
                <span>User</span>
            </a>
        </li>
        <li class="<%= uri.contains("transaksi") ? "active" : "" %>">
            <a href="transaksi.jsp">
                <i class="fa-solid fa-car"></i>
                <span>Transaksi</span>
            </a>
        </li>

        <li class="divider"></li>

        <li class="logout">
            <a href="../index.jsp">
                <i class="fa-solid fa-right-from-bracket"></i>
                <span>Logout</span>
            </a>
        </li>

    </ul>
</aside>
