<html>
<body>
    <%@page import="java.sql.*" %>


    <%
String s1=request.getParameter("u1");
String s2=request.getParameter("u2");
String s3=request.getParameter("u3");
String s4=request.getParameter("u4");
String s5=request.getParameter("u5");
String s6=request.getParameter("u6");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql:///am","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into donor(name,blood_group,gender,email,contact,address) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"');");
%>
<script>
    alert("Data inserted SuccessFully!!");
  window.location.href = "addNewDonor.jsp";
</script>
<%

    }
catch(Exception e)
{
out.println(e);
}
%>
</body>
</html>