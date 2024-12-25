
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
   
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
    

<%
if(a>0){  

%>
<p>Successful updated.</p>
<%
} else  {  
%>
<p>Error.</p>
<%
    }
%>
</body>
</html>
