
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt" %>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
							<%
							Calendar now=Calendar.getInstance();
							out.print(now.getTime());
							Connection con;
							Statement st;
							ResultSet rs;
							String dd;
							try
							{
								Class.forName("com.mysql.jdbc.Driver");
								con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin_hospital","root","haresh");
								st=con.createStatement();
								rs=st.executeQuery("select date from appointment where sr=2");
								while(rs.next())
								{
									dd=rs.getString("date");
									SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
									Date dd1=sdf.parse(dd);
									
									Date newdate=sdf.parse(sdf.format(new Date()));
									//Date newdate=new Date(today.getDate(),today.getMonth()-1,today.getYear());
									
									
									out.print("***"+dd1);
									out.print("***"+newdate);
									
									if(dd1.equals(newdate))
									{
										out.println("***eqauls");
										
									}
									else if(dd1.before(newdate))
									{
										out.println("***before");
									}
									else if(dd1.after(newdate))
									{
										out.println("****after");
									}
									
									
									
									
									
								}
								
							}
							catch(Exception e)
							{
								out.print("error"+e.getMessage());
							}
							
							
							%>
<body>

</body>
</html>