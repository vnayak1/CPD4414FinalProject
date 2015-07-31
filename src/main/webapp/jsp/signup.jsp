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
	
	<title>Sign Up</title>
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
					<a href="about.jsp">Your Ads</a>
				</li>
				<li>
					<a href="post.jsp">Post Ads</a>
				</li>
				<li class="selected">
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
                        
                        if (session.getAttribute("success_message") ==null ) {}else{
                    %>
                    
                      <h1>Please choose different user id</h1>
                    <%
                    
                        }
                    
                    %>
                
            
            
            
                    <%
                        if(session.getAttribute("name")==null) {
                    %>
                    
                    <form action="/signup" method="post">               
                        <label for="user_id" >User Id<input type="text" value="" id="user_id" name="user_id" required/></label><br>
                        <label for="username">Username<input type="text" value="" id ="username" name="username" required/></label><br>
                        <label for="password">Password<input type="text" value="" name="password" required/></label><br>
                        <label for="email">Email<input type="text" value="" name="email" required/></label><br>
                        <label for="age">Age<input type="text" value="" name="age" required/></label><br>
                        <label for="signup"><input type="submit" name="signup" value="Sign Up"></label>
                    <form>
                    <%
                        } else {
                    %>
                        <h1> You are already logged in </h1>
                    <%
                        }
                    %>
            
            
	</div>	
	<div id="footer">
		<div>
			
			<p>
				&copy; copyright 2015 | all rights reserved.
			</p>
		</div>
	</div>
</body>
</html>