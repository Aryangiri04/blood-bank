<%@include file="header.html"%>
<%@page import="java.sql.*" %>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
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
</head>
<body>
<br>
<%
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql:///am","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("Select * from complete");
    if(rs.next()) {
%>
    <br>
    <br>
    <br>
    <table cellpadding="12" id="customers">
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>AGE</td>
            <td>BLOOD GROUP</td>
            <td>GENDER</td>
            <td>CONTACT</td>            
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
<%
    } else {
%>
    <%= "No Record Found" %>
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
<h3><center>All Rights Reserved @GROUP 25 </center></h3>
</body>
</html>
