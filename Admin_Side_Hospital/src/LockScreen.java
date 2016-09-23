


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lock")
public class LockScreen extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin_hospital","root","haresh");
		
		String s=request.getParameter("pass");
				
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from admin");
		
		while(rs.next())
		{
			if(s.equals(rs.getString(2)))
			{
				request.getRequestDispatcher("/index.jsp").forward(request, response);
				
			}
		}
		request.getRequestDispatcher("/Lock_Screen.jsp").forward(request, response);
		
		}catch(Exception e){}
		
		
	}

}
