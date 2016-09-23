
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
HttpSession ses=request.getSession();
String pat=(String)ses.getAttribute("login");

try
{
 
rs=st.executeQuery("select * from history where p_user='"+pat+"' and medical is not null");
 
while(rs.next())
{
	out.println(rs.getString("medical"));
	String ss=rs.getString("medical");
%>
<table width="70%" height="160" border="1" align="center">
<tr>
<!-- Mention Directory where your images has been saved-->
 
<td><img src='image_folder\\<%=rs.getString("medical")%>' width="115" height="128" /></td>
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