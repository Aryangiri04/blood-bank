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
ResultSet rs= st.executeQuery("Select * from adminlg where UNAME='"+s1+"' and UPASS='"+s2+"'");
//response.sendRedirect("passengerdetails.html");
if(rs.next())
{
    /*HttpSession session=request.getSession();
    session.setAttribute("uname",s1);*/
   Cookie ck=new Cookie("uname",s1);
    ck.setMaxAge(60*60);
    response.addCookie(ck);
    response.sendRedirect("home.jsp");
}
else
{ 
%><script>
 alert("Invalid Username or Password ");
 </script>
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

