<%@page import="java.sql.*" %>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
    table
    {
        width:50%;
    }
.B
{
	background:green;
	color:black;
	padding:5px;
	border-radius:10px 0px 10px 0px;
}

input[type="text"], input[type="password"], input[type="submit"]
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
</style>
</head>
<body>
    <form action="adminLoginAction.jsp">
<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a href="index.jsp">Home</a>
    <a class="active" href="adminLogin.jsp">Admin Login</a>
  </div>
</div>
<body>
<div class="container">
<center>
<table cellpadding="12">
    <tr>
        <th><h1>Admin Login</h1></th>
    </tr>
  <tr>
<td><input type="text" placeholder="Admin's Username" class="A" name="u1"></td>
</tr>
<tr>
<td><input type="password" placeholder="Password" class="A" name="u2"></td>
</tr>

<tr>
<td colspan="2"><input type="submit" class="B" value="Login"></td>
</tr>
</table>
</form>
</center>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @GROUP 25 </center></h3>
</body>
</html>
