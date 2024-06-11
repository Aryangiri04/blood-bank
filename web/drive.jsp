<%@include file="header.html"%>
<%@page import="java.sql.*" %>
<html>
<head>
    <script type="text/javascript" src="addNewDonor.js"></script>

 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
    .B
{
	background:green;
	color:white;
	padding:5px;
	border-radius:10px 0px 10px 0px;
}

    table {
  width: 80%; /* You can use a specific value like pixels or percentage */
}
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
hr
{
width:60%;	
}
</style>
</head>
<body>

    <form  name="form1" action="drive.jsp">

<center>
<table cellpadding="12">

<tr>
    <th><h1>Organize A Donation Drive</h1></th>
</tr>

<tr>
<td>Name of Organization</td>
<td><input type="text" placeholder="Name" class="A" id="t1" name="u1"><br>
<font id="s1"></font>
</td>
</tr>


<tr>
<td>Date</td>
<td><input type="date" placeholder="date" class="A" name="u2"></td>
</tr>
<tr>
<td>Time Duration</td>
<td><input type="text" placeholder="Time Duration" class="A" name="u3"></td>
</tr>

<tr>
<td>Organization Contact :</td>
<td><input type="text" placeholder="Contact" class="A" id="t2" name="u4"><br>
    <font id="s2"></font>
</td>
</tr>

<tr>
<td>Venue:</td>
<td><input type="text" placeholder="Venue" class="A" id="t3"name="u5"><br>
<font id="s3"></font>
</td>
</tr>


<tr>
<th colspan="2" style="font-size:80px">  <button  class="B" onclick="demo(event)" >ORGANIZE</button></th>

</tr>
</table>
</center>

</form>
 
    <%
String s1=request.getParameter("u1");
String s2=request.getParameter("u2");
String s3=request.getParameter("u3");
String s4=request.getParameter("u4");
String s5=request.getParameter("u5");
if (s1 != null && s2 != null && s3 != null && s4 != null && s5 != null) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql:///am", "root", "root");
                    Statement st = con.createStatement();
                    st.executeUpdate("insert into drive(name,date,time,contact,venue) values('" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + s5 + "');");
                    // response.sendRedirect("home.jsp");
                } catch (Exception e) {
                    out.println(e);
                }
            } else {
                out.println("<p>Please fill in all the details before saving.</p>");
            }%>

<br>
<br>
<%
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///am","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("Select * from drive");
    if(rs.next()) {
%>
    <br>
    <br>
    <br>
<center>
    <table cellpadding="12" id="customers">
        <tr>
            <td>ID</td>
            <td>Organization</td>
            <td>Date</td>
            <td>Time</td>
            <td>Contact</td>
            <td>Venue</td>
        </tr>
        <% do { %>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getString(4) %></td>
                <td><%= rs.getString(5) %></td>
                <td><%= rs.getString(6) %></td>
            </tr>
        <% } while(rs.next()); %>
    </table>
</center>
<%
    }
} catch(Exception e) {
    out.println(e);
}
%>

<br>
<br>
<h3><center>All Right Reserved @GROUP 25  </center></h3>

</body>
</html>