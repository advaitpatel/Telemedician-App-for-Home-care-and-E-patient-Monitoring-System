<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
HttpSession ses=request.getSession(false);
String doc=(String)ses.getAttribute("login");
String from1=request.getParameter("from1");
String to1=request.getParameter("to1");
String status=request.getParameter("status");
%>
<sql:setDataSource var="cl_reg"
driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/admin_hospital"
user="root" password="haresh"/>
<sql:query var="doc" dataSource="${cl_reg }">
select * from doctor where user='<%=doc  %>';
</sql:query>
<c:forEach var="row" items="${doc.rows}">
<c:set var="doct" value="${row.first_name } ${row.Last_name }" />
</c:forEach>
<sql:update var="as" dataSource="${cl_reg }">
insert into admin_hospital.doctor_avail (name,from1,to1,status) values ('${doct }','<%= from1 %>','<%= to1 %>','<%= status %>');
</sql:update>

<%
request.getRequestDispatcher("/docindex.jsp").forward(request,response);
%>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>