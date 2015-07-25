<%-- 
    Document   : about
    Created on : 24-Jul-2015, 8:46:06 AM
    Author     : vinayak
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<title>Your Ad</title>
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
				<li class="selected">
                                    <a href="about.jsp">about</a>
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
                        if (session.getAttribute("name") == null) {
                    %>
                    
                    <h1>Please login to check your account</h1>

                    <%
                    } else {

                        Connection conn = DatabaseCredentials.database.getConnection();

                        if (conn == null) {

                        } else {

                            String username = (String) session.getAttribute("name");
                            

                            Statement smt = conn.createStatement();
                            String query = "select user_post_id,user_id,image,address,city,country,detail,email from post_ad where user_id = '"+username+"'";
                            ResultSet rs = smt.executeQuery(query);
                            
                            boolean empty= true;
                            
                            while (rs.next()) {
                                String id = rs.getString("user_id");
                                String address = rs.getString("address");
                                String city_display = rs.getString("city");
                                String country_display = rs.getString("country");
                                String detail = rs.getString("detail");
                                String email = rs.getString("email");
                                int post_id = rs.getInt("user_post_id");
                                empty =false;

                    %>


                    <br><br><br>
                    <table>
                        <tr>
                            <td id="imagetd" rowspan="8"><img src="../img.jsp?iid=<%=post_id%>" width="200" height="200"/><td>  

                        </tr>
                        <tr>
                            <td><b>Name:  </b><%=id%></td>
                        </tr>
                        <tr>
                            <td><b>Address:  </b> <%=address%></td>
                        </tr>
                        <tr>
                            <td><b>City:  </b> <%=city_display%></td>
                        </tr>
                        <tr>
                            <td><b>Country:  </b> <%=country_display%></td>
                        </tr>
                        <tr>
                            <td><b>Detail about ad:  </b> <%=detail%></td>
                        </tr>
                        <tr>
                            <td><b>Email:  </b> <%=email%></td>
                        </tr>
                        <tr>
                            <td><b><a href="delete.jsp?id=<%=post_id%>">Delete Post</a></b></td>
                        </tr>
                    </table>

                    <%

            } if (empty){ %>  <h3 style="color:#ff6666"> No data available!</h3> <%}
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
				&copy; copyright 2015 | all rights reserved.
			</p>
		</div>
	</div>
</body>
</html>