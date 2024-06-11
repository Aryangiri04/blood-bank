<%@page import="java.sql.*" %>
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}

.B {
    background: cyan;
    color: black; /* Set the text color to black */
    padding: 5px;
    border-radius: 10px 0px 10px 0px;
    transition: border-radius 0.3s; /* Add a transition for a smooth effect */
}

.B:hover {
    border-radius: 0px 10px 0px 10px;
}
.A
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}

table{width:100%}
</style>
</head>
<body>

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a  href="index.jsp">Home</a>
    <a class="active" href="search.jsp">Blood Availability</a>
    <a href="adminLogin.jsp">Admin Login</a>
  </div>
</div>

<!--<div style="max-width:100%">
  <img class="mySlides"  src="slide1.jpg" >
  <img class="mySlides"  src="slide2.png" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
-->

<body>
  <br>
  <form action="search.jsp" method="post">
 <center>
  <table>
      <tr> <th><h1>Search For Blood</h1></th></tr>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
<tr><td><select name="u1" class="A" placeholder="--Choose Blood Group--">
        
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
</tr><br>
     <tr>
<th colspan="2"><input  class="B" type="submit" name="b1" value="SEARCH"></th>

</tr>
 
  </table>
  </form>
      <%
        
    String s=request.getParameter("b1");
    if(s!=null)
    {
    String s11=request.getParameter("u1");
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///am","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("Select * from donor where blood_group='"+s11+"'");
    if(rs.next())
    {
    %>
    <br>
    <br>
    <br>
<table cellpadding="12">
<tr>
<td>ID</td>   
<td>NAME</td>   
<td>BLOOD GROUP</td>   
<td>GENDER</td>   
<td>EMAIL</td>   
<td>CONTACT</td>   
</tr>  
<%do{
%>
<tr>
    <td><%= rs.getString(1) %></td>
    <td><%= rs.getString(2) %></td>
    <td><%= rs.getString(3) %></td>
    <td><%= rs.getString(4) %></td>
    <td><%= rs.getString(5) %></td>
    <td><%= rs.getString(6) %></td>
    <td><input type="button" style="background:magenta" class="B" onclick="location.href='login.jsp'" value="Request"></td>

</tr>
<%
    }while(rs.next());
%>
</table>
    <%
   }
else
{
%>
    <%=" No Record Found"%>
<%
}
    }
    catch(Exception e)
    {
    out.println(e);
    }
    }
    %>
</center>
<!--<div class="row1"> 
<div class="container"> 
<br>         
<br>
    </tbody>
  </table>
</div>
</div>
<h3><center>All Right Reserved @GROUP 25 </center></h3>-->

</body>
</html>

