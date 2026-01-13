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
                String activePage = "transaksi";
            %>
            <%@ include file="sidebar.jsp" %>
            <main class="content">

                <!-- HEADER -->
                <div class="page-header">
                    <h1>Data Transaksi</h1>
                </div>

                <div class="card">

                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nama User</th>
                                <th>Mobil</th>
                                <th>Tanggal</th>
                                <th>Total</th>
                                <th>Status</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>#TRX001</td>
                                <td>Andi Saputra</td>
                                <td>Toyota Avanza</td>
                                <td>12 Jan 2026</td>
                                <td>Rp 700.000</td>
                                <td><span class="badge warning">Pending</span></td>
                            </tr>

                            <tr>
                                <td>#TRX002</td>
                                <td>Budi Santoso</td>
                                <td>Honda Brio</td>
                                <td>10 Jan 2026</td>
                                <td>Rp 350.000</td>
                                <td><span class="badge success">Selesai</span></td>
                            </tr>
                        </tbody>
                    </table>

                </div>

            </main>

        </div>

    </body>
</html>
