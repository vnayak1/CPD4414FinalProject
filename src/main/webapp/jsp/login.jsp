<%-- 
    Document   : login
    Created on : 21-Jul-2015, 7:40:17 PM
    Author     : vinayak
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<title>Login</title>
	<link rel="stylesheet" href="../css/style.css" type="text/css">
        
                <style type="text/css">
            
            label{
                

                    display:block;
                    text-align:right;

                    margin:5px;
                    position:relative;
                    margin-left:5px;
                    margin-right:0px;



            }
            
        </style>
</head>
<body>
	<div id="header">
		<div class="section">
			<div class="logo">
				<a href="../index.jsp">WISH FINDER</a>
			</div>
			<ul>
				<li>
					<a href="../index.jsp">home</a>
				</li>
				<li>
					<a href="about.jsp">about</a>
				</li>
				<li>
					<a href="post.jsp">Post Ads</a>
				</li>
				<li>
                                    <a href="signup.jsp">Sign Up</a>
				</li>
				<li class="selected">
					<a href="login.jsp">Login</a>
				</li>
			</ul>
		</div>
	</div>
	<div id="body">
                    
            
                                    <form action="/login" method="post">
                                        <label for="username"> Username:  <input type="text" id="username" name="username" value="vinayak" required></label><br>
                                        <label for="password">Password:  <input type="password" id="password" name="password" value="vinayak" required></label><br>
                         <label for="submit"><input type="submit" name="submit" id="submit"></label>
                    </form>
                    
               
                    <%
                        if(session.getAttribute("error")==null) {
                    %>
                                   
                         
                
                    <%
                        } else {
                    %>
                      <h1><%= session.getAttribute("error") %></h1>  
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
				&copy; copyright 2023 | all rights reserved.
			</p>
		</div>
	</div>
</body>
</html>