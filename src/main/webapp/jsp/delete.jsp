<%-- 
    Document   : delete
    Created on : 24-Jul-2015, 8:53:06 PM
    Author     : vinayak
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
        int post_id = Integer.parseInt(request.getParameter("id"));
        %>
        <%=post_id%>
    </body>
</html>
