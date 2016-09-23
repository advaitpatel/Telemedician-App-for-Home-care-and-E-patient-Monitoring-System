<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
HttpSession ses=request.getSession(false);
String ss=(String)ses.getAttribute("login");
ses.removeAttribute("login");
String date="",time="";

Calendar dd=Calendar.getInstance();


int d=dd.get(Calendar.DAY_OF_MONTH);
int m=dd.get(Calendar.MONTH);
m++;
int y=dd.get(Calendar.YEAR);


int h=dd.get(Calendar.HOUR);
int mn=dd.get(Calendar.MINUTE);
int s=dd.get(Calendar.SECOND);



date=""+d+"/"+m+"/"+y;
time=" "+h+":"+mn;

%>

<sql:setDataSource var="ad_log" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/admin_hospital"
     user="root"  password="haresh" />
     
     <sql:update dataSource="${ad_log }">
UPDATE admin_dt SET logout='<%=date+time  %>' WHERE user='<%=ss %>';


</sql:update>



<% request.getRequestDispatcher("/AdminLogin.jsp").forward(request,response); %>











</body>
</html>