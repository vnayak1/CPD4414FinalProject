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
            
            label{
                

                    display:block;
                    text-align:right;

                    margin:5px;
                    position:relative;
                    margin-left:5px;
                    margin-right:50px;



            }
            #imagelabel{}
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
		<h3>Post your ad here!</h3>
                
                
                
                    <%
                        if(session.getAttribute("name")==null) {
                    %>
                    
                        <h1> You need to login first </h1>
                        
                    <%
                        } else {session.getAttribute("name");
                    %>
                        
                    
                            
                        <form action="/postad" method="post" enctype="multipart/form-data">
                            <input type="hidden" name="user_id" value="<%=session.getAttribute("name")%>">
                            <label id="imagelabel" for="image">Image<input type="file" value="" name="image" required/></label><br>
                            <label for="address">Address<input type="text" value="" name="address" required/></label><br>
                            <label for="city">City<input type="text" value="" name="city" required/></label><br>
                            <label for="country">Country<input type="text" value="" name="country" required/></label><br>
                            <label for="detail">Detail<input type="text" value="" name="detail" required/></label><br>
                            <label for="signup"><input type="submit" name="signup" value="Sign Up"></label>
                        <form>
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