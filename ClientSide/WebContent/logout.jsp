<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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

request.getRequestDispatcher("/index.jsp").forward(request,response);




%>

<sql:setDataSource var="ad_log" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/admin_hospital"
     user="root"  password="haresh" />


<sql:query var="result" dataSource="${ad_log }">
	select distinct(logout) from history where p_user='<%=ss  %>' and logout is not null;
</sql:query>

<c:choose>
<c:when test="${result.rowCount==0 }">
<sql:update dataSource="${ad_log }">
insert into history(p_user,logout) values ('<%=ss  %>','<%= date+time %>') 
</sql:update>
</c:when>

<c:otherwise>
<sql:update dataSource="${ad_log }">
UPDATE history SET logout='<%=date+time  %>' WHERE p_user='<%=ss %>' and logout is not null;
</sql:update>

</c:otherwise>


</c:choose>


<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	


</body>
</html>