<html>
    <head>
        <link rel="stylesheet" href="style.css">
    <style>
/*body
{
background-image:url('b9.jpg');
}*/
table
{
	margin-top:150px;
	background-color:rgba(0,0,0,0.3);
	color:white;
	box-shadow:15px 15px 15px black;
}


.B
{
	background:green;
	color:white;
	padding:5px;
	border-radius:10px 0px 10px 0px;
}

/*    table {
  width: 80%;  You can use a specific value like pixels or percentage 
}*/
.A{
   /* border: none;
    background:silver;
    font-size: 16px;
	margin-left:0%;
	width:60%;	*/
	border-radius: 20px;
        height: 30px;
        font-size:18px;
        padding:15px;
        outline: none;
       /* padding:20px 45px 20px 20px; 
        width:100%;
        height: 100%;
        border:none;
        border: 2px solid;*/

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
    <form action="login2.jsp" method="post">
<center>
<table cellpadding="12">
<th><h1>Sign In</h1></th>
<tr>
<td><input type="text" placeholder="UserName" class="A" name="u1"></td>
</tr>

<tr>
<td><input type="password" placeholder="Password" class="A" name="u2"></td>
</tr>

<tr>
<th colspan="2"><input type="submit" class="B" value="Login"></th>
</tr>
<tr>
    <th>New User ? <a style="color: wheat;font-size:20px; text-decoration: none;" onmouseover="this.style.color='chartreuse'" onmouseout="this.style.color='wheat'" href="rg.html">Sign Up</a>
    </th>
</tr>

</table>
</center>
</form>
</body>
</html>