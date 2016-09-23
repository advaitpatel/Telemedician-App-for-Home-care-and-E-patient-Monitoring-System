
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

 

<html>
<head>
<title>View Image Page</title>
</head>
<body>
<table width="100%" border="0">
<!-- main content -->
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin_hospital","root","haresh");
Statement st=con.createStatement();
ResultSet rs=null;


try
{
 
rs=st.executeQuery("select image from test");
 
while(rs.next())
{
	out.println(config.getServletContext().getRealPath("/")+rs.getString("image"));
	String ss=rs.getString("image");
%>
<table width="70%" height="160" border="1" align="center">
<tr>
<!-- Mention Directory where your images has been saved-->
 
<td><img src='<%=rs.getString("image")%>' width="115" height="128" /></td>
</tr>
</table>
<%
}
}
catch(Exception e)
{
out.print("eee ::"+e.getMessage());
}

%>
 
</table>
</body>
</html>
<pre>