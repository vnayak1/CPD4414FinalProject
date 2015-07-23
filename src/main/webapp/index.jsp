<%-- 
    Document   : index
    Created on : 23-Jul-2015, 1:10:06 AM
    Author     : vinayak
--%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%-- 
    Document   : news
    Created on : 21-Jul-2015, 7:00:39 PM
    Author     : vinayak
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<title>News</title>
	<link rel="stylesheet" href="../css/style.css" type="text/css">
        
        <style type="text/css">
            
   
            
        </style>
</head>
<body>
	<div id="header">
		<div class="section">
			<div class="logo">
				<a href="../index.html">WISH FINDER</a>
			</div>
			<ul>
				<li  class="selected">
					<a href="index.jsp">home</a>
				</li>
				<li>
					<a href="about.html">about</a>
				</li>
				<li>
					<a href="../jsppost.jsp">Post Ads</a>
				</li>
				<li>
                                    <a href="../jsp/signup.jsp">Sign Up</a>
				</li>
				<li>
                                    <a href="../jsp/login.jsp">Login</a>
				</li>
			</ul>
		</div>
	</div>
	<div id="body">
            <%
                
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
                String query = "select user_id,image,address,city,country,detail from post_ad";
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
            
           
           
                %>
                <h1><%=id%></h1>
                <%=os.write(buf)%>
                
                
           
            <%
                os.close();
                 }
                }
            %>    
               
	</div>	
	<div id="footer">
		<div>
			<div class="connect">
				<a href="http://freewebsitetemplates.com/go/twitter/" id="twitter">twitter</a>
				<a href="http://freewebsitetemplates.com/go/facebook/" id="facebook">facebook</a>
				<a href="http://freewebsitetemplates.com/go/googleplus/" id="googleplus">googleplus</a>
				<a href="http://pinterest.com/fwtemplates/" id="pinterest">pinterest</a>
			</div>
			<p>
				&copy; copyright 2023 | all rights reserved.
			</p>
		</div>
	</div>
</body>
</html>