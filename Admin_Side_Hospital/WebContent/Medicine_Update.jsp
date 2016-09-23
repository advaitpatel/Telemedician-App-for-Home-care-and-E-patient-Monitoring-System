
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
<%

String Name=request.getParameter("First_name");
String Description=request.getParameter("Dep");
String Company=request.getParameter("Comp");
String Quantity=request.getParameter("Quant");
Integer Qua=50;
out.print(" "+Name+" "+Description+" "+Company+" "+Quantity);

%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

     <sql:setDataSource var="cl_reg" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/admin_hospital"
     user="root"  password="haresh"/>
     
     <c:set var="fn"  value="hello" />
  
	
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update medicine set Name='"+Name+"' where Name='"+Name+"';");%> 
	</sql:update>   

	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update medicine set Des='"+Description+"' where Name='"+Name+"';");%> 
	</sql:update>   
	
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update medicine set Company='"+Company+"' where Name='"+Name+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update medicine set Quantity='"+Qua+"' where Name='"+Name+"';");%> 
	</sql:update>   

<% request.getRequestDispatcher("/Message.jsp").forward(request,response);  %>
</body>
</html>