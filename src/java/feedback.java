import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class feedback extends HttpServlet
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		PrintWriter out=response.getWriter();
		
		String s1=request.getParameter("u1");
		String s2=request.getParameter("u2");
		String s3=request.getParameter("u3");
		String s4=request.getParameter("u4");
		
		out.println("<html>");
		out.println("<body>");
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql:///am ","root","root");
			Statement st=con.createStatement();
			st.executeUpdate("insert into feedback values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
			out.println("Data Inserted Succesfully");
			response.sendRedirect("index.jsp");
			con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
} 