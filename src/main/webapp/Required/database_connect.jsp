<%@page import="java.sql.*"%>
<%! Connection con;%>
<% Class.forName("com.mysql.cj.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_depo","root","");
   //out.println("Connect to database");
%>