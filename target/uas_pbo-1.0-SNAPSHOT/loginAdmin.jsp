<%@ page contentType="text/html;charset=UTF-8" %>
<%
    session.setAttribute("role", "admin");
    response.sendRedirect("admin/dashboard.jsp");
%>
