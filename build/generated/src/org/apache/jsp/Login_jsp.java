package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import user.module.DbConnector;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    String email = request.getParameter("signupEmail");
    String password = request.getParameter("signuppassword");
//    String db_email = "bima@gmail.com";
//    String db_password = "1234";
    String errorMessage = null;
    
//    if (email != null && password != null) {
//        if (email.equals(db_email) && password.equals(db_password)) {
//            response.sendRedirect("index.html");
//            return;
//        } else {
//            errorMessage = "Invalid credentials";
//            response.sendRedirect("Login.html");
//            return;
//        }
//    }

String query = "SELECT * FROM user WHERE email = ? AND password = ?";
PreparedStatement pstmt = DbConnector.getConnection().prepareStatement(query);
pstmt.setString(1, email);
pstmt.setString(2, password);
ResultSet resultSet = pstmt.executeQuery();

if(resultSet.next()){
    response.sendRedirect("index.html");
    
}else{
    errorMessage = "Invalid credentials.";
    response.sendRedirect("Login.jsp");
   return;
}


      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login Page</title>\n");
      out.write("         <style>\n");
      out.write("            * {\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                font-family: Arial, sans-serif;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            header {\n");
      out.write("                background-color: #3e82c6;\n");
      out.write("                padding: 1rem;\n");
      out.write("                color: white;\n");
      out.write("                border-radius: 15px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .top-bar {\n");
      out.write("                display: flex;\n");
      out.write("                justify-content: space-between;\n");
      out.write("                align-items: center;\n");
      out.write("                max-width: 1200px;\n");
      out.write("                margin: 0 auto;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .logo {\n");
      out.write("                font-size: 2rem;\n");
      out.write("                font-weight: bold;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            nav ul {\n");
      out.write("                display: flex;\n");
      out.write("                list-style: none;\n");
      out.write("                gap: 2rem;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            nav a {\n");
      out.write("                color: white;\n");
      out.write("                text-decoration: none;\n");
      out.write("                font-weight: bold;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .hero {\n");
      out.write("                padding: 4rem 2rem;\n");
      out.write("                background-image: url('Images/bg.jpg');\n");
      out.write("                background-size: cover;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .hero h1 {\n");
      out.write("                font-size: 3rem;\n");
      out.write("                margin-top: 2rem;\n");
      out.write("                margin-bottom: 1rem;\n");
      out.write("                color: #333;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .hero p {\n");
      out.write("                font-size: 1.2rem;\n");
      out.write("                margin-bottom: 2rem;\n");
      out.write("                color: #555;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .cta-button {\n");
      out.write("                background-color: #ff6b6b;\n");
      out.write("                color: white;\n");
      out.write("                padding: 1rem 2rem;\n");
      out.write("                border-radius: 25px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                font-weight: bold;\n");
      out.write("                display: inline-block;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .featured {\n");
      out.write("                max-width: 1200px;\n");
      out.write("                margin: 4rem auto;\n");
      out.write("                padding: 0 2rem;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .featured h2 {\n");
      out.write("                text-align: center;\n");
      out.write("                margin-bottom: 2rem;\n");
      out.write("                color: #333;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .products {\n");
      out.write("                display: grid;\n");
      out.write("                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));\n");
      out.write("                gap: 2rem;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .product-card {\n");
      out.write("                border: 1px solid #ddd;\n");
      out.write("                border-radius: 8px;\n");
      out.write("                padding: 1rem;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .product-card img {\n");
      out.write("                width: 100%;\n");
      out.write("                max-width: 200px;\n");
      out.write("                height: 200px;\n");
      out.write("                object-fit: cover;\n");
      out.write("                border-radius: 8px;\n");
      out.write("                margin-bottom: 1rem;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .categories {\n");
      out.write("                background-color: #f8f9fa;\n");
      out.write("                padding: 4rem 2rem;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .categories h2 {\n");
      out.write("                margin-bottom: 2rem;\n");
      out.write("                color: #333;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .category-grid {\n");
      out.write("                display: grid;\n");
      out.write("                grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));\n");
      out.write("                gap: 2rem;\n");
      out.write("                max-width: 1200px;\n");
      out.write("                margin: 0 auto;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .category-card {\n");
      out.write("                background-color: white;\n");
      out.write("                padding: 2rem;\n");
      out.write("                border-radius: 8px;\n");
      out.write("                box-shadow: 0 2px 4px rgba(0,0,0,0.1);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            footer {\n");
      out.write("                background-color: #333;\n");
      out.write("                color: white;\n");
      out.write("                padding: 2rem;\n");
      out.write("                margin-top: 4rem;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .footer-content {\n");
      out.write("                max-width: 1200px;\n");
      out.write("                margin: 0 auto;\n");
      out.write("                display: grid;\n");
      out.write("                grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));\n");
      out.write("                gap: 2rem;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .footer-section h3 {\n");
      out.write("                margin-bottom: 1rem;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .footer-section ul {\n");
      out.write("                list-style: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .footer-section ul li {\n");
      out.write("                margin-bottom: 0.5rem;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .footer-section a {\n");
      out.write("                color: white;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            .form-container {\n");
      out.write("                background-color: #f5dc05;\n");
      out.write("                padding: 2rem;\n");
      out.write("                border-radius: 10px;\n");
      out.write("                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);\n");
      out.write("                width: 100%;\n");
      out.write("                max-width: 500px;\n");
      out.write("                margin-left: 35rem;\n");
      out.write("                margin-top: 3rem;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-container h2 {\n");
      out.write("                text-align: center;\n");
      out.write("                margin-bottom: 2rem;\n");
      out.write("                color: #333;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            table {\n");
      out.write("                width: 100%;\n");
      out.write("                border-spacing: 0 1rem;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            td {\n");
      out.write("                font-size: 1rem;\n");
      out.write("                padding: 0.5rem;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=\"text\"],\n");
      out.write("            input[type=\"email\"],\n");
      out.write("            input[type=\"password\"] {\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 0.8rem;\n");
      out.write("                margin-top: 0.5rem;\n");
      out.write("                border: 1px solid #ccc;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                font-size: 1rem;\n");
      out.write("                outline: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=\"submit\"] {\n");
      out.write("                background-color: #3e82c6;\n");
      out.write("                color: white;\n");
      out.write("                border: none;\n");
      out.write("                padding: 1rem;\n");
      out.write("                font-size: 1rem;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                cursor: pointer;\n");
      out.write("                width: 100%;\n");
      out.write("                margin-top: 1px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=\"submit\"]:hover {\n");
      out.write("                background-color: #1e5b8f;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=\"submit\"]:focus {\n");
      out.write("                outline: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <section class=\"hero\">\n");
      out.write("            <header>\n");
      out.write("                <div class=\"top-bar\">\n");
      out.write("                    <div class=\"logo\">ToyLand</div>\n");
      out.write("                    <nav>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"index.html\">Home</a></li>\n");
      out.write("                            <li><a href=\"NewArrivals.jsp\">New Arrivals</a></li>\n");
      out.write("                            <li><a href=\"About.jsp\">About</a></li>\n");
      out.write("                            <li><a href=\"Contact.jsp\">Contact</a></li>\n");
      out.write("                            <li><a href=\"Register.html\">Login</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("            </header>\n");
      out.write("        </section>\n");
      out.write("        <form method=\"POST\" action=\"Login.jsp\">\n");
      out.write("            <div class=\"form-container\">\n");
      out.write("                <table>               \n");
      out.write("                    \n");
      out.write("                    <h1>Login Form</h1>\n");
      out.write("\n");
      out.write("                    \n");
      out.write("        \n");
      out.write("                    <tr>\n");
      out.write("                        <td>Email:</td>\n");
      out.write("                        <td><input type=\"email\" name=\"signupEmail\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Password:</td>\n");
      out.write("                        <td><input type=\"password\" name=\"signupPassword\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td>\n");
      out.write("                        <td><input type=\"submit\" name=\"Login\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                </table>\n");
      out.write("                <p>If you don't have an account?<a href=\"Register.html\">Please sign up</a></p>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write(" ");
 
     if(errorMessage != null) { 
 
      out.write("\n");
      out.write("            <p style=\"color:red;\">");
      out.print( errorMessage );
      out.write("</p>\n");
      out.write("        ");
 } 
        
      out.write("    \n");
      out.write("            \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
