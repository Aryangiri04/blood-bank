<html>
<body>
    <%@page import="java.sql.*" %>


<%
    String s2=request.getParameter("b2");
    if(s2!=null)
    {
    String s21=request.getParameter("n1");
    String s22=request.getParameter("n2");
    String s23=request.getParameter("n3");
    String s24=request.getParameter("n4");
    String s25=request.getParameter("n5");
    String s26=request.getParameter("n6");
    String s27=request.getParameter("n7");
try
{
Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///am","root","root");
    Statement st=con.createStatement();
int x=st.executeUpdate("update donor set name='"+s22+"',blood_group='"+s23+"',gender='"+s24+"',email='"+s25+"' ,contact='"+s26+"',address='"+s27+"' where id='"+s21+"'");
if(x!=0)
{
%>
<%="Data Updated Successfully"%>
<%
response.sendRedirect("editDeleteList.jsp");
    }

con.close();
}
catch(Exception e)
{
out.println(e);
}
}
%>
</body>
</html>