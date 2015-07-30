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

        <title>Home</title>
        <link rel="stylesheet" href="../css/style.css" type="text/css">

        <style type="text/css">

            #imagetd{


                border: solid black 1px;  

            }

        </style>
    </head>
    <body>
        <div id="header">
            <div class="section">
           
                <div class="logo">
                    <a href="index.jsp">WISH FINDER</a>
                </div>
                <ul>
                    <li class="selected">
                        <a href="index.jsp">home</a>
                    </li>
                    <li>
                        <a href="../jsp/about.jsp">Your Ads</a>
                    </li>
                    <li>
                        <a href="../jsp/post.jsp">Post Ads</a>
                    </li>
                    <li>
                        <a href="../jsp/signup.jsp">Sign Up</a>
                    </li>
                    <li>
                        <a href="../jsp/login.jsp">Login</a>
                    </li>
                    
                           
                </ul>
            </div>
            
                          <% if (session.getAttribute("name") == null){}else{%>
                 <h4 style="color:#660066; text-align:right">Hello <%= session.getAttribute("name")%>
                <a href="../jsp/logout.jsp">Logout</a></h4>
                <% }%>
            
                    <%
                        
                        if (session.getAttribute("city") == null || session.getAttribute("country") == null) {
                    %>

                    
             
            <div class="article">
                <img src="images/dream.png" alt="">
                <h1>Find your dream home anywhere anytime</h1>
            </div>
                    <%
                    }else{    
                    }%>
                    
        </div>
        <div id="body">
            
            <h1> Find your apartment here! </h1>
            <br><br>
            
            <form action="/searchdata" method="post">
                <b>City  </b> <input type="text" name="city" value="">
                <b>Country  </b> <input type="text" name="country" value="">
                <input type="submit" name="find" value="Find">
                </form>





                    <%
                        if (session.getAttribute("city") == null || session.getAttribute("country") == null) {
                    %>



                    <%
                    } else {

                        Connection conn = DatabaseCredentials.database.getConnection();

                        if (conn == null) {

                        } else {

                            String city = (String) session.getAttribute("city");
                            String country = (String) session.getAttribute("country");

                            Statement smt = conn.createStatement();
                            String query = "select user_post_id,user_id,image,address,city,country,detail,email from post_ad where city='" + city + "' and country = '" + country + "'";
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
                            <td id="imagetd" rowspan="7"><img src="img.jsp?iid=<%=post_id%>" width="200" height="200"/><td>  

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
                            <td><b>Email:  </b> <a href="mailto:<%=email%>"><%=email%></a></td>
                        </tr>
                    </table>

                    <%

            } if (empty){ %>  <h3 style="color:#ff6666"> No match found!</h3> <%}
                            }
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