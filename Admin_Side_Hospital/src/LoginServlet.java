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
import javax.servlet.http.HttpSession;

@WebServlet("/forLogin")
public class LoginServlet extends HttpServlet 
{
	
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String user=request.getParameter("username");
		String pass=request.getParameter("password");
		Connection con;
		Statement st;
		ResultSet rs;
		int flag=0;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin_hospital","root","haresh");
			st=con.createStatement();
			rs=st.executeQuery("select * from admin");
			
			while(rs.next())
			{
				if(user.equals(rs.getString(1)) && pass.equals(rs.getString(2)))
				{
					HttpSession ses=request.getSession();
					ses.setAttribute("login", user);
					flag=1;
					
					break;
				}

			}
			if(flag==1)
			{
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			}
			rs=st.executeQuery("select * from doctor");
			while(rs.next())
			{
				if(user.equals(rs.getString(1)) && pass.equals(rs.getString(2)))
				{
					HttpSession ses=request.getSession();
					ses.setAttribute("login", user);
					flag=1;
					
					break;
				}

			}
			if(flag==1)
			{
				request.getRequestDispatcher("/docindex.jsp").forward(request, response);
			}
			else
			{
				request.getRequestDispatcher("/AdminLogin.jsp").forward(request, response);
			}
			
			con.close();
			st.close();
			rs.close();
		}
		    catch(Exception e){} 
	}

}
