<%@page import="java.sql.*"%>
<%@page import="javax.mail.*"%>
 
<%@page import="javax.mail.internet.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.Properties"%>
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

String type=request.getParameter("type");
String name=request.getParameter("name");
String subject=request.getParameter("subject");
String date=request.getParameter("date");
String time=request.getParameter("time");
Integer Qua=50;
out.print(" "+type+" "+name+" "+subject+" "+date+""+time);

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
		<% out.print("insert into schedule (`type`, `dr_name`, `subject`, `date`, `time`) VALUES ('"+type+"' , '"+name+"', '"+subject+"', '"+date+"','"+time+"');");%> 
	</sql:update>")

		<sql:query dataSource="${cl_reg}" var="result123">
						select * from doctor where user="<%=name%>";
		</sql:query>
		<c:forEach items="${result123.rows }" var="row">
			<c:set var="email" value="${row.Email}"> </c:set>
		</c:forEach>   
<% 
String to=pageContext.getAttribute("email").toString();//change accordingly  

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
message.setSubject(type+"-Meeting - Vision Medicare");  
message.setText("you have a call for  meeting  from admin on date "+date+" & time "+time+" for following subject - \nSub:"+subject);  

//send message  
Transport.send(message);  



} catch (MessagingException e) {}  

request.getRequestDispatcher("/Message.jsp").forward(request,response);  %>

</body>
</html>