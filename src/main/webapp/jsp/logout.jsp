<%-- 
    Document   : logout.jsp
    Created on : 24-Jul-2015, 9:19:38 AM
    Author     : vinayak
--%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Post Ad Here</title>
	<link rel="stylesheet" href="../css/style.css" type="text/css">
        
                <style type="text/css">
            
                    label{
                
                    display:block;
                    text-align:right;

                    margin:5px;
                    position:relative;
                    margin-left:5px;
                    margin-right:15px;

                }
                
        </style>
</head>
<body>
	<div id="header">
		<div class="section">
			<div class="logo">
				<a href="../index.jsp">Wish Finder</a>
			</div>
			<ul>
				<li>
					<a href="../index.jsp">home</a>
				</li>
				<li>
					<a href="about.jsp">about</a>
				</li>
				<li class="selected">
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
        
        HEllo    
                
                <%
              session.invalidate();
              response.sendRedirect("../index.jsp");
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