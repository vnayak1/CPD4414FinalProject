<%-- 
    Document   : img
    Created on : 23-Jul-2015, 3:13:30 AM
    Author     : vinayak
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
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
                int img_id = Integer.parseInt(request.getParameter("id"));
                Connection conn = DatabaseCredentials.database.getConnection();
                
                if(conn==null)
                {
            %>
                <h1> Fail</h1>
            <%    
                }else{
             
            %>
                <h1>Success</h1>
                <% 
                Statement smt = conn.createStatement();
                String query = "select image from post_ad where user_post_id ='"+img_id+"'";
                ResultSet rs = smt.executeQuery(query);
                 while (rs.next()) {
                String id = rs.getString("user_id");
                
                  Blob  b = rs.getBlob("image");            
            response.setContentType("image/jpeg");
            response.setContentLength( (int) b.length());
           // response.setContentLength(10);
            InputStream is = b.getBinaryStream();
            OutputStream os = response.getOutputStream();
            byte buf[] = new byte[(int) b.length()];
            is.read(buf);
            
           os.write(buf);
           
                %>
                <h1><%=id%></h1>
               
                
                
           
            <%
                os.close();
                 }
                }
            %>  
    </body>
</html>
