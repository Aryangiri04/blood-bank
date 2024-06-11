<html>
<body>
    <%@page import="java.sql.*" %>

  <% 
    String s1=request.getParameter("u1");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql:///am","root","root");
Statement st=con.createStatement();
st.executeUpdate("delete from donor where id='"+s1+"'");
response.sendRedirect("editDeleteList.jsp");
    }
catch(Exception e)
{
out.println(e);
}
%>
</body>
</html>

