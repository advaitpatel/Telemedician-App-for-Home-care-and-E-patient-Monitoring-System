
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

String F_name=request.getParameter("First_name");

String Mobile=request.getParameter("Mobile_no");
String Address=request.getParameter("Add");

String Open_Time=request.getParameter("From");
String Close_Time=request.getParameter("To");

Integer Date=Integer.parseInt(request.getParameter("Date"));
Integer Month=Integer.parseInt(request.getParameter("Month"));
Integer Year=Integer.parseInt(request.getParameter("Year"));

out.print(" "+F_name+" "+Address+" "+Mobile+" "+Date+" "+Month+" "+Year);

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
	<% out.print("update medical_store set Name='"+F_name+"' where id='"+1+"';");%> 
	</sql:update>   

	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update medical_store set Mobile='"+Mobile+"' where id='"+1+"';");%> 
	</sql:update>   
	
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update medical_store set Address='"+Address+"' where id='"+1+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update medical_store set Open_Time='"+Open_Time+"' where id='"+1+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update medical_store set Close_Time='"+Close_Time+"' where id='"+1+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update medical_store set Date='"+Date+"' where id='"+1+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update medical_store set Month='"+Month+"' where id='"+1+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update medical_store set Year='"+Year+"' where id='"+1+"';");%> 
	</sql:update>   
<% request.getRequestDispatcher("/Message.jsp").forward(request,response);  %>

</body>
</html>