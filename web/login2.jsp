<html>
<body>
    <%@page import="java.sql.*" %>

    <%
String s1=request.getParameter("u1");
String s2=request.getParameter("u2");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql:///am","root","root");
Statement st=con.createStatement();
ResultSet rs =st.executeQuery("Select * from login where UNAME='"+s1+"' and UPASS='"+s2+"'");
if(rs.next())
{
response.sendRedirect("addRequest.jsp");
    }
    else
    {
    %>
    <%="Invalid Username or Password"%>
    <%
    }
    }
catch(Exception e)
{
out.println(e);
}
%>
</body>
</html>