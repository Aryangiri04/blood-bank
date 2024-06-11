<%@page import="java.sql.*"%>
<%
String s1 = request.getParameter("u1");
String s2 = request.getParameter("u2");
int s3 = Integer.parseInt(s2);

try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql:///am", "root", "root");
    Statement st = con.createStatement();

    // Fetch the existing units from the database
    ResultSet rs = st.executeQuery("SELECT units FROM stock WHERE blood_group='" + s1 + "'");
    
    if (rs.next()) {
        // Add the existing units with the new units
        int existingUnits = rs.getInt("units");
        int totalUnits = existingUnits - s3;

        // Update the record with the new total units
        st.executeUpdate("UPDATE stock SET units=" + totalUnits + " WHERE blood_group='" + s1 + "'");
        response.sendRedirect("manageStock.jsp");
    }
}
catch(Exception e) {
    out.println(e);
}
%>
