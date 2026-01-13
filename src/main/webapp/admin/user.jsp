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
                String activePage = "user";
            %>
            <%@ include file="sidebar.jsp" %>
            <main class="content">

                <!-- HEADER -->
                <div class="page-header">
                    <h1>Data User</h1>
                    <button class="btn-primary">+ Tambah User</button>
                </div>

                <!-- TABLE CARD -->
                <div class="card">

                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nama</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Status</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Andi Saputra</td>
                                <td>andi@email.com</td>
                                <td>Admin</td>
                                <td><span class="badge success">Aktif</span></td>
                                <td class="actions">
                                    <button class="btn-edit">Edit</button>
                                    <button class="btn-delete">Hapus</button>
                                </td>
                            </tr>

                            <tr>
                                <td>2</td>
                                <td>Budi Santoso</td>
                                <td>budi@email.com</td>
                                <td>User</td>
                                <td><span class="badge muted">Nonaktif</span></td>
                                <td class="actions">
                                    <button class="btn-edit">Edit</button>
                                    <button class="btn-delete">Hapus</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>


            </main>

        </div>

    </body>
</html>
