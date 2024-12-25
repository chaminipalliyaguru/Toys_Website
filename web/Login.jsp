<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String db_email = "bima@gmail.com";
    String db_password = "1234";

    if (email != null && password != null) { // Ensure parameters are not null
        if (email.equals(db_email) && password.equals(db_password)) {
            response.sendRedirect("index.html");
            return; // Stop further processing
        } else {
            response.sendRedirect("login.jsp?s=0");
            return; // Stop further processing
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        

    </head>
    <body>
            
            <%
                if ("0".equals(request.getParameter("s"))) {
            %>
            <p style="color:red;">Incorrect email or password</p>
            <%
            response.sendRedirect("Login.html"); 
            %>
            <%
                }else{
                  response.sendRedirect("Login.html");  
}
            %>
           
        </form>
    </body>
</html>
