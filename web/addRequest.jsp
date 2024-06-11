<%@page import="java.sql.*" %>
<html>
<head>
    <script type="text/javascript" src="addRequest.js"></script>

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

    <form  name="form1" action="addRequest.jsp">

<center>
<table cellpadding="12">

<tr>
    <th><h1>Details</h1></th>
</tr>

<tr>
<td>Name Of The Reciever</td>
<td><input type="text" placeholder="Name of the Reciever" class="A" id="t1" name="u1"><br>
<font id="s1"></font>
</td>
</tr>

<tr>
<td>Enter Age of The Reciever</td>
<td><input type="text" placeholder="Age" class="A" id="t2" name="u2"><br>
    <font id="s2"></font>
</td>
</tr>

<tr>
<td>Blood Group</td>
<td><select name="u3">
        <option>Blood Group A</option>
        <option>Blood Group B</option>
        <option>Blood Group O</option>
        <option>Blood Group AB</option>
        <option>O Negative</option>
        <option>O Positive</option>
        <option>AB Positive</option>
        <option>AB Negative</option>
        <option>B Positive</option>
        <option>B Negative</option>
        <option>A Positive</option>
        <option>A Negative</option>
    </select>
</td>

</tr>

<tr>
<td>Enter Gender</td>
<td><select name="u4">
        <option>Male</option>
        <option>Female</option>
    </select>
</td>

</tr>

<tr>
<td>Contact Number:</td>
<td><input type="text" placeholder="Contact" class="A" id="t3" name="u5"><br>
    <font id="s3"></font>
</td>
</tr>

<tr>
<td>Address:</td>
<td><input type="text" placeholder="Address" class="A" id="t4"name="u6"><br>
<font id="s4"></font>
</td>
</tr>


<tr>
<th colspan="2" style="font-size:80px">  <button  class="B" onclick="demo(event)" >Send Request</button></th>
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
String s6=request.getParameter("u6");
if (s1 != null && s2 != null && s3 != null && s4 != null && s5 != null && s6 != null) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql:///am", "root", "root");
                    Statement st = con.createStatement();
                    st.executeUpdate("insert into request(name,age,blood_group,gender,contact,address) values('" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + s5 + "','" + s6 + "');");
                    response.sendRedirect("final.jsp");
                } catch (Exception e) {
                    out.println(e);
                }
            } else {
                out.println("<p>Please fill in all the details before saving.</p>");
            }%>

<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @GROUP 25  </center></h3>

</body>
</html>