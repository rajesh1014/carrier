<%-- 
    Document   : detail
    Created on : 31 Dec, 2019, 11:33:04 AM
    Author     : LAASYA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
          <h1 style="background-color: red">Career Management System</h1>
        
    </center>
      
        
           <% 
         String sql="select * from system";
             Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/career","root","root");
            Statement s=c.createStatement();
            ResultSet rs=s.executeQuery(sql);
            while(rs.next()){
               out.println("<table border='1' width='100%'>");
               //out.println("<tr><th>Name</th><th>Email</th><th>Password</th><th>Date</th><th>Gender</th></tr>");
               
        
               out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
            
           out.println("</table>");
            
            }
            
        
       %>
            
    </body>
</html>
