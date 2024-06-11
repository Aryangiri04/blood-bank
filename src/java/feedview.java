import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class feedview extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
{
PrintWriter out=response.getWriter();
out.println("<html>");
out.println("<head>");
out.println("<style type='text/css'>body{background-image:url('b9.jpg');}#mymenu{background-color:rgba(0,0,0,0.3);color:white;text-align:right;}#mymenu ul li{display:inline-block;padding:20px;}#mymenu ul li:hover{background:cyan}table{margin-top:150px;background-color:rgba(0,0,0,0.3);color:white;box-shadow:15px 15px 15px black;}.B{background:linear-gradient(blue,magenta);color:white;padding:5px;border-radius:0px 10px 0px 10px;	}.A{border-radius:20px}.B{background:linear-gardient(red,green);color:white;padding:5px;border-radius:10px 0px 10px 0px;}</style>");
out.println("</head>");
out.println("<body>");
out.println("<form action=\"update\">");
out.println("<div id=mymenu>");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql:///am","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("Select * from feedback");
{
out.println("<center>");
out.println("<table border=1 bgcolor='cyan' cellpadding='12'>");
out.println("<tr>");
out.println("<td>Name</td>");
out.println("<td>Email</td>");
out.println("<td>Subject</td>");
out.println("<td>Message</td>");
out.println("</tr>");
while(rs.next())
{

out.println("<tr>");
out.println("<td name='u1'>" +rs.getString(1)+"</td>");
out.println("<td>"+rs.getString(2)+"</td>");
out.println("<td>"+rs.getString(3)+"</td>");
out.println("<td>"+rs.getString(4)+"</td>");
out.println("</tr>");
}
out.println("</table>");
out.println("</center>");
}
con.close();
}
catch(Exception e)
{
out.println(e);
}
out.println("</div>");
out.println("</form>");
out.println("</body>");
out.println("</html>");
out.close();
}
}