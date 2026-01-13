<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Dashboard Admin</title>
        <link rel="stylesheet" href="../css/admin.css">
    </head>
    <body>

        <div class="admin-layout">

            <%
                String activePage = "dashboard";
            %>
               <%@ include file="sidebar.jsp" %>
            <main class="content">

                <!-- HEADER -->
                <div class="page-header">
                    <h1>Dashboard</h1>
                    <span>Selamat datang kembali, Admin 👋</span>
                </div>

                <!-- STAT CARDS -->
                <div class="stats-grid">
                    <div class="stat-card">
                        <p>Total Mobil</p>
                        <h2>12</h2>
                    </div>

                    <div class="stat-card">
                        <p>Mobil Tersedia</p>
                        <h2>8</h2>
                    </div>

                    <div class="stat-card">
                        <p>Disewa</p>
                        <h2>4</h2>
                    </div>

                    <div class="stat-card highlight">
                        <p>Total Transaksi</p>
                        <h2>120</h2>
                    </div>
                </div>

                <!-- INFO BOX -->
                <div class="info-box">
                    <h3>Informasi</h3>
                    <p>
                        Gunakan menu di samping untuk mengelola data mobil,
                        pelanggan, dan transaksi rental.
                    </p>
                </div>

            </main>

        </div>

    </body>
</html>
