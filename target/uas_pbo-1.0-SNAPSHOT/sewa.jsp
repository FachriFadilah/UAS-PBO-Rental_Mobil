<%@ page contentType="text/html;charset=UTF-8" %>
<%
    // Cek apakah user sudah login
    String role = (String) session.getAttribute("role");
    if(role == null || !"user".equals(role)) {
        response.sendRedirect("login.jsp");
    }

    String message = "";

    if(request.getMethod().equalsIgnoreCase("POST")){
        // Ambil data form
        String nama = request.getParameter("nama");
        String email = request.getParameter("email");
        String mobil = request.getParameter("mobil");
        String tanggal = request.getParameter("tanggal");
        String lama = request.getParameter("lama");

        // Untuk sekarang, kita simpan sementara di session (bisa nanti ke DB)
        session.setAttribute("bookingNama", nama);
        session.setAttribute("bookingEmail", email);
        session.setAttribute("bookingMobil", mobil);
        session.setAttribute("bookingTanggal", tanggal);
        session.setAttribute("bookingLama", lama);

        message = "Booking berhasil! Terima kasih, " + nama + ".";
    }
%>

<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Sewa Mobil</title>
    <!-- Link ke file CSS -->
    <link rel="stylesheet" href="css/sewa.css">
</head>
<body>

<div class="sewa-card">
    <h2>Formulir Sewa Mobil</h2>

    <% if(!message.isEmpty()){ %>
        <div class="success-msg"><%= message %></div>
    <% } %>

    <form method="post" class="sewa-form">
        <div class="form-group">
            <label>Nama Lengkap</label>
            <input type="text" name="nama" placeholder="Masukkan nama lengkap" required>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" placeholder="Masukkan email" required>
        </div>

        <div class="form-group">
            <label>Mobil</label>
            <select name="mobil" required>
                <option value="">Pilih mobil</option>
                <option value="Avanza">Avanza</option>
                <option value="Xenia">Xenia</option>
                <option value="Innova">Innova</option>
                <option value="Fortuner">Fortuner</option>
            </select>
        </div>

        <div class="form-group">
            <label>Tanggal Sewa</label>
            <input type="date" name="tanggal" required>
        </div>

        <div class="form-group">
            <label>Lama Sewa (hari)</label>
            <input type="number" name="lama" min="1" placeholder="Masukkan lama sewa" required>
        </div>

        <button type="submit" class="btn-sewa">Sewa Sekarang</button>
    </form>
</div>

</body>
</html>
