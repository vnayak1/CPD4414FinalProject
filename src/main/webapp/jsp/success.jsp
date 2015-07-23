<%-- 
    Document   : success
    Created on : 22-Jul-2015, 11:40:19 PM
    Author     : vinayak
--%>

<%-- 
    Document   : post
    Created on : 22-Jul-2015, 2:17:09 AM
    Author     : vinayak
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Hairstyle</title>
	<link rel="stylesheet" href="../css/style.css" type="text/css">
        
                <style type="text/css">
            
            
        </style>
</head>
<body>
	<div id="header">
		<div class="section">
			<div class="logo">
				<a href="../index.html">Wish Finder</a>
			</div>
			<ul>
				<li>
					<a href="../index.html">home</a>
				</li>
				<li>
					<a href="../about.html">about</a>
				</li>
				<li>
					<a href="post.jsp">Post Ads</a>
				</li>
				<li>
                                    <a href="signup.jsp">Sign Up</a>
				</li>
				<li>
                                    <a href="login.jsp">Login</a>
				</li>
			</ul>
		</div>
	</div>
	<div id="body">
		
                
                
                
                    <%
                        if(session.getAttribute("success_message")==null) {
                    %>
                    
 
                        
                    <%
                        } else{
                            
               
                    %>
                           <h1><%=session.getAttribute("success_message")%></h1>
                       
 
     
                    <%
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
				&copy; copyright 2015 | all rights reserved.
			</p>
		</div>
	</div>
</body>
</html>