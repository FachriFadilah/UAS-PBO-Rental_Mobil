<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    /*
    =========================
    NANTI DATABASE PSQL
    =========================
    Connection conn = DBUtil.getConnection();
    PreparedStatement ps = conn.prepareStatement(
        "SELECT role FROM users WHERE username=? AND password=?"
    );
    ps.setString(1, username);
    ps.setString(2, password);
    ResultSet rs = ps.executeQuery();
    */

    // 🔥 DUMMY LOGIN (SEMENTARA)
    if("admin".equals(username) && "admin123".equals(password)) {
        session.setAttribute("role", "admin");
        response.sendRedirect("admin/dashboard.jsp");

    } else if("user".equals(username) && "user123".equals(password)) {
        session.setAttribute("role", "user");
        response.sendRedirect("index.jsp");

    } else {
        response.sendRedirect("login.jsp?error=true");
    }
%>
