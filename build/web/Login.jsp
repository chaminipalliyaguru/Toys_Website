<%@page import="user.module.DbConnector"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String full_name = request.getParameter("signupName");
    String email = request.getParameter("signupEmail");
    String password = request.getParameter("signupPassword");
    String confirm_password = request.getParameter("confirmPassword");
    
    String query = "INSERT INTO user(full_name,email,password,confirm_password) VALUES (?, ?, ?, ?)";
    Connection con = DbConnector.getConnection();
    PreparedStatement pstmt = con.prepareStatement(query);
    pstmt.setString(1, full_name);
    pstmt.setString(2, email);
    pstmt.setString(3, password);
    pstmt.setString(4, confirm_password);
    int a = pstmt.executeUpdate();
    
//    Connection con = null;
//
//    if (full_name != null && email != null && password != null && confirm_password != null) {
//        try {
//            // Get database connection
//            con = DbConnector.getConnection();
//
//            // Insert query
//            String query = "INSERT INTO user(full_name,email,password,confirm_password) VALUES (?, ?, ?, ?)";
//            PreparedStatement pstmt = con.prepareStatement(query);
//            pstmt.setString(1, full_name);
//            pstmt.setString(2, email);
//            pstmt.setString(3, password);
//            pstmt.setString(4, confirm_password);
//
//            if (pstmt.executeUpdate() > 0) {
//                out.println("Successfully saved.");
//            } else {
//                out.println("Error occurred while saving data.");
//            }
//        } catch (SQLException e) {
//            out.println("Database Error: " + e.getMessage());
//            e.printStackTrace();
//        } finally {
//            if (con != null) {
//                con.close();
//            }
//        }
//    } else {
//        out.println("Please fill all the fields.");
//    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
<!--    <h2>Sign Up</h2>
    <form method="POST" action="Login.jsp">
        <h1>Full Name:<%=full_name%></h1>
        <input type="text" name="signupName" required><br>
        <h1>Email: <%=email%></h1>
        <input type="email" name="signupEmail" required><br>
        <h1>Password:<%=password%></h1>
        <input type="password" name="signupPassword" required><br>
        <h1>Confirm Password:<%=confirm_password%></h1>
        <input type="password" name="confirmPassword" required><br>
        <button type="submit">Sign Up</button>
    </form>-->

<%
if(a>0){  

%>
<p>Successful updated.</p>
<%
}else  {  
%>
<p>Error.</p>
<%
    }
%>
</body>
</html>
