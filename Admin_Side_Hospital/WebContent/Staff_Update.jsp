
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
String L_name=request.getParameter("Last_name");
String Gender=request.getParameter("gender");
String Email=request.getParameter("Email_id");
Integer Mobile=Integer.parseInt(request.getParameter("Mobile_no"));
String Address=request.getParameter("Add");
String U_name=request.getParameter("User_name");
String Password=request.getParameter("Set_pwd");
String Blood_group=request.getParameter("Blood_gp");
String sp=request.getParameter("Dep");
Integer Date=Integer.parseInt(request.getParameter("Date"));
Integer Month=Integer.parseInt(request.getParameter("Month"));
Integer Year=Integer.parseInt(request.getParameter("Year"));

out.print(" "+U_name+" "+Password+" "+F_name+" "+Gender+" "+Address+" "+Mobile+" "+Email+" "+sp+" "+Blood_group+" "+Date+" "+Month+" "+Year);

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
	<% out.print("update staff set First_name='"+F_name+"' where user='"+U_name+"';");%> 
	</sql:update>   

	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update staff set Last_name='"+L_name+"' where user='"+U_name+"';");%> 
	</sql:update>   
	
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update staff set Gender='"+Gender+"' where user='"+U_name+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update staff set Address='"+Address+"' where user='"+U_name+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update staff set Mobile='"+Mobile+"' where user='"+U_name+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update staff set Email='"+Email+"' where user='"+U_name+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update staff set Department='"+sp+"' where user='"+U_name+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update staff set Blood_Group='"+Blood_group+"' where user='"+U_name+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update staff set Date="+Date+"  where user='"+U_name+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update staff set Month="+Month+"  where user='"+U_name+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update staff set Year="+Year+"  where user='"+U_name+"';");%> 
	</sql:update>   
	
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update staff set user='"+U_name+"' where user='"+U_name+"';");%> 
	</sql:update>   
	<sql:update dataSource="${cl_reg}" var="result">
	<% out.print("update staff set pass='"+Password+"' where user='"+U_name+"';");%> 
	</sql:update>   
	
<% request.getRequestDispatcher("/Message.jsp").forward(request,response);  %>
</body>
</html>