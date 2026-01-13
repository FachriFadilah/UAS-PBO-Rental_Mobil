<%@ page contentType="text/html;charset=UTF-8" %>
<%
    session.setAttribute("role", "user");
    response.sendRedirect("index.jsp");
%>
