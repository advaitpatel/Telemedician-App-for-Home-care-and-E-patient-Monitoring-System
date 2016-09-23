
<%@page import="com.sun.corba.se.spi.protocol.RequestDispatcherDefault"%>
<%@page import="sun.rmi.server.Dispatcher"%>
<%@page import="javax.xml.ws.Dispatch"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.Scanner" %>
<%@page import="javax.swing.plaf.basic.BasicBorders.RadioButtonBorder"%>
<%@page import="java.sql.*"%>
<%@page import="javax.mail.*"%>
 
<%@page import="javax.mail.internet.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.Properties"%>
<%@ page import="java.math.BigInteger"%>
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
String Mobile=request.getParameter("Mobile_no");
String U_name=request.getParameter("User_name");
String Password=request.getParameter("Set_pwd");
//String sp=request.getParameter("Special");
Integer Date=Integer.parseInt(request.getParameter("Date"));
Integer Month=Integer.parseInt(request.getParameter("Month"));
Integer Year=Integer.parseInt(request.getParameter("Year"));

out.print(" "+U_name+" "+Password+" "+F_name+" "+Gender+"  "+Mobile+" "+Email+"  "+Date+" "+Month+" "+Year);

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
     
     
  
     
     
	<%
	try
	{
	%>
	<sql:update dataSource="${cl_reg}">
	<% 
	out.print("insert into patient (user,pass,First_name,Last_name,Gender,Mobile,Email,Date,Month,Year) values ('"+U_name+"' , '"+Password+"', '"+F_name+"', '"+L_name+"', '"+Gender+"', '"+Mobile+"', '"+Email+"', "+Date+", "+Month+", "+Year+");"); 
	%>
	</sql:update>
	<%
	}
	catch(Exception e)
	{
		request.getRequestDispatcher("/SignUp.jsp").forward(request,response);
	}
	%>

<%
String to=Email;//change accordingly  

//Get the session object  
Properties props = new Properties();  
props.put("mail.smtp.host", "smtp.gmail.com");  
props.put("mail.smtp.socketFactory.port", "465");  
props.put("mail.smtp.socketFactory.class",  
        "javax.net.ssl.SSLSocketFactory");  
props.put("mail.smtp.auth", "true");  
props.put("mail.smtp.port", "465");  

Session session1 = Session.getInstance(props,  
new javax.mail.Authenticator() {  
protected PasswordAuthentication getPasswordAuthentication() {  
return new PasswordAuthentication("visionmedicareinfo@gmail.com","visionmedi");//change accordingly  
}  
});  

//compose message  
try {  
MimeMessage message = new MimeMessage(session1);  
message.setFrom(new InternetAddress("visionmedicareinfo@gmail.com"));//change accordingly  
message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
message.setSubject("Registration - Vision Medicare");  
message.setText("You have been successfully registered with vision medicare \n Thank you for being with us");  
 
//send message  
Transport.send(message);  

  

} catch (MessagingException e) {}  

request.getRequestDispatcher("/Success.jsp").forward(request,response);  %>
</body>
</html>