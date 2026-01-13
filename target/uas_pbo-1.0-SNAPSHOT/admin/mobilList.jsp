<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Data Mobil</title>
        <link rel="stylesheet" href="../css/admin.css">
    </head>
    <body>

        <div class="admin-layout">

            <%
                String activePage = "mobil";
            %>
            <%@ include file="sidebar.jsp" %>

            <main class="content">

                <!-- HEADER -->
                <div class="page-header flex-between">
                    <div>
                        <h1>Data Mobil</h1>
                        <span>Kelola seluruh armada mobil rental</span>
                    </div>

                    <a href="mobil-tambah.jsp" class="btn-primary">
                        + Tambah Mobil
                    </a>
                </div>

                <!-- TABLE CARD -->
                <div class="table-card">

                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Mobil</th>
                                <th>Tipe</th>
                                <th>Harga / Hari</th>
                                <th>Status</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Honda Brio</td>
                                <td>Manual</td>
                                <td>Rp 350.000</td>
                                <td><span class="badge success">Tersedia</span></td>
                                <td class="aksi">
                                    <a href="#" class="btn-edit">Edit</a>
                                    <a href="#" class="btn-delete">Hapus</a>
                                </td>
                            </tr>

                            <tr>
                                <td>2</td>
                                <td>Toyota Avanza</td>
                                <td>Manual</td>
                                <td>Rp 400.000</td>
                                <td><span class="badge warning">Disewa</span></td>
                                <td class="aksi">
                                    <a href="#" class="btn-edit">Edit</a>
                                    <a href="#" class="btn-delete">Hapus</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                </div>

            </main>

        </div>

    </body>
</html>
