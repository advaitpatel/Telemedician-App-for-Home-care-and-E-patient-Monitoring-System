<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>


<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*" %>

<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<html> 
<head>
</head>

<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin_hospital","root","haresh");
	Statement st=con.createStatement();
	ResultSet rs=null;
	
	
	String ImageFile="";
	String itemName="";
	boolean isMultipart;
	isMultipart=ServletFileUpload.isMultipartContent(request);
	if (!isMultipart)
	{
		out.println("\n this should be not called");
	}
	else
	{
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		List items = null;
		try
		{
			items = upload.parseRequest(request);
		}
		catch (FileUploadException e)
		{
			out.print(" \n errrrr"+e.getMessage());
		}
 
		Iterator itr = items.iterator();
		while (itr.hasNext())
		{
			FileItem item = (FileItem) itr.next();
			if (item.isFormField())
			{
				String name = item.getFieldName();
				String value = item.getString();
				if(name.equals("ImageFile"))
				{
					ImageFile=value;
				}
 
			}
			else
			{
				try
				{
					itemName = item.getName();
					File savedFile = new File(config.getServletContext().getRealPath("/")+"image_folder\\"+itemName);
					item.write(savedFile);
				}
				catch (Exception e)
				{
					out.println(" \n Error"+e.getMessage());
				}
			}	
		}
		try
		{
				st.executeUpdate("insert into test(image) values ('"+itemName+"')");
				 out.println(" \n ha ha"+itemName);
		}
		catch(Exception el)
		{
				out.println("\n Inserting error"+el.getMessage());
		}
	}
}
catch (Exception e)
{
	out.println("\n ffinishing"+ e.getMessage());
}
out.println("\n Work done");
%>
<body>
</body>
</html>