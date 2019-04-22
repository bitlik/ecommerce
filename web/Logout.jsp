<%-- 
    Document   : Logout
    Created on : 14 Feb, 2017, 8:36:41 PM
    Author     : Bhargavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
session.setAttribute("n1", "uname");
session.invalidate();
response.sendRedirect("index.jsp");
%>
    </body>
</html>
