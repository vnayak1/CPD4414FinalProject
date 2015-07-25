<%-- 
    Document   : delete
    Created on : 24-Jul-2015, 8:53:06 PM
    Author     : vinayak
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
                       
                Connection conn = DatabaseCredentials.database.getConnection();
                                            
                Statement smt = conn.createStatement();
                String query = "delere from post_ad where user_post_id ='"+post_id+"'";
                 smt.executeUpdate(query);
                
                response.sendRedirect("about.jsp");
        %>        
    </body>
</html>
