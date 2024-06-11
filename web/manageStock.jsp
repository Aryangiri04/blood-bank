<%@include file="header.html"%>
<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"],select
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

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 55%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
<script>
function units() {
    var x = document.getElementById("t2").value;

    // Check if the input contains only digits greater than zero
    if (!/^[1-9]\d*$/.test(x)) {
        document.getElementById("s1").innerHTML = "Invalid Input. Please enter digits greater than zero.";
        return false;
    }

    return true;
}
function demo() {
    var x = document.getElementById("t1").value;
    var form = document.getElementById("form1");

    if (units()) {
        // Check the selected value and set the form action accordingly
        if (x === "Increase") {
            form.action = "manageStockAction.jsp";
        } else if (x === "Decrease") {
            form.action = "manageStockAction2.jsp";
        }
        
        // Submit the form
        form.submit();
    } else {
        event.preventDefault(); // Prevent form submission
    }
}
</script>
</head>
<body>
    <br>
    <br>
    <br>
<center>
<form id="form1" name="form1" action="" method="post">  
    <table cellpadding="12" id="customers">
        <tr>
            <th>Increase/Decrease</th>
        </tr>
        <tr>
            <td>
                <select id="t1">
                    <option>Increase</option>
                    <option>Decrease</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>Select Blood Group</th>
        </tr>
        <tr>
            <td>
                <select name="u1">
                    <option>A+</option>
                    <option>A-</option>
                    <option>B+</option>
                    <option>B-</option>
                    <option>O+</option>
                    <option>O-</option>
                    <option>AB+</option>
                    <option>AB-</option>
                </select>
            </td>
        </tr>
        <tr>
            <th>UNITS</th>
        </tr>
        <tr>
<td><input id="t2" type="text"  placeholder="Enter Units" class="C" name="u2"><br>
        <center><font id="s1"> </font></center>
</td>
        </tr>
        <th><button class="A" onclick="demo(event)">SAVE</button></th>
    </table>
    </form>
</center>
<br>
<%
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///am","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("Select * from stock");
    if(rs.next()) {
%>
    <br>
    <br>
    <br>
<center>
    <table cellpadding="12" id="customers">
        <tr>
            <td>BLOOD GROUP</td>
            <td>UNITS</td>
        </tr>
        <% do { %>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
            </tr>
        <% } while(rs.next()); %>
    </table>
</center>
    <%
    } 
else {
%>
<center>
    <h1> <%= "No Record !!" %></h1>
</center>
<%
    }
} catch(Exception e) {
    out.println(e);
}
%>


 

<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @GROUP 25 </center></h3>
</body>
</html>