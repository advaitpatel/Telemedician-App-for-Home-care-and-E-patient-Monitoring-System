
<%@page import="com.sun.corba.se.spi.protocol.RequestDispatcherDefault"%>
<%@page import="sun.rmi.server.Dispatcher"%>
<%@page import="javax.xml.ws.Dispatch"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.Scanner" %>
<%@page import="javax.swing.plaf.basic.BasicBorders.RadioButtonBorder"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% String user=request.getParameter("User_name"); %>


 <sql:setDataSource var="cl_reg" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/admin_hospital"
     user="root"  password="haresh"/>
 
 
<sql:update dataSource="${cl_reg}" var="count">
  <% out.print("delete from patient where user = '"+user+"' "); %>
  
</sql:update>
<% request.getRequestDispatcher("/Message.jsp").forward(request,response);  %>

</body>
</html>