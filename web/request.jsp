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

st.executeUpdate("INSERT INTO complete(Id, name,age,blood_group, gender,contact,address)SELECT Id, name,age,blood_group, gender,contact,address FROM request WHERE Id = '"+s1+"'");
st.executeUpdate("delete from request where Id='"+s1+"'");
response.sendRedirect("requestForBlood.jsp");
}
catch(Exception e)
{
out.println(e);
}
%>
</body>
</html>