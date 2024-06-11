<%@include file="header.html"%>
<%@page import="java.sql.*" %>
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
.C
{
 	border-radius:20px;   
}
hr
{
width:60%;	
}
</style>
</head>
<body>
<center>
<%
    String s11=request.getParameter("u1");

try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///am","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("Select * from donor where ID='"+s11+"'");
    if(rs.next())
    {
    %>
<form action="updateDonorAction.jsp" method="post">
    <table cellpadding="12">
        <th><h2>Donor Details</h2></th>
<tr>
    <td><input type="hidden" name="n1" class="C" value="<%= rs.getString(1) %>"></td>
</tr>
<tr>
    <td>NAME</td>   
    <td><input type="text" name="n2" class="C" value="<%= rs.getString(2) %>"></td>
</tr>

<tr>
    <td>BLOOD GROUP</td>   
    <td><input type="text" name="n3" class="C" value="<%= rs.getString(3) %>"></td>
</tr>

<tr>
    <td>GENDER</td>   
    <td><input type="text" name="n4" class="C" value="<%= rs.getString(4) %>"></td>
</tr>

<tr>
    <td>EMAIL</td>   
    <td><input type="text" name="n5" class="C" value="<%= rs.getString(5) %>"></td>
</tr>
<tr>
    <td>CONTACT</td>   
    <td><input type="text" name="n6" class="C" value="<%= rs.getString(6) %>"></td>
</tr>
<tr>
    <th colspan="2"><input style="color:black" type="submit" value="update" class="B" name="b2" ></th>
</tr>
</table>
</form>
    <%
   }
    }
    catch(Exception e)
    {
    out.println(e);
    }
    
    %>

</div>

</center>

<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @GROUP 25 </center></h3>

</body>
</html>