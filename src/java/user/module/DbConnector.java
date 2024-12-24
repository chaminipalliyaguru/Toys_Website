/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user.module;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class DbConnector {
//    private static String DRIVER ="com.mysql.jdbc.Driver";
//    private static String URL = "jdbc:mysql://localhost:3306/toys_website";
//    private static String USER = "root";
//    private static String PASSWORD = "";
//    
//    public static Connection getConnect(){
//        Connection con = null;
//        try {
//            Class.forName(DRIVER);
//            con = DriverManager.getConnection(URL,USER,PASSWORD);
//        } catch (Exception e) {
//            System.out.println(e.getMessage());
//        }
//        
//        return con;
//    }
    
    
//    public static Connection getConnect() {
//        Connection con = null;
//        try {
//            Class.forName("com.mysql.jdbc.Driver"); // Ensure you are using the correct MySQL driver
//            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/toys_website","root","");
//            System.out.println("Database Connection Successful!"); // Debug line
//            } catch (Exception e) {
//            System.out.println("Connection Error: " + e.getMessage());
//            e.printStackTrace();
//        }
//        return con;
//    }
    
    
    
    final static String URL = "jdbc:mysql://localhost:3306/toys_website";
    final static String DB_USER = "root";
    final static String DB_PW = "";
    final static String DRIVER = "com.mysql.jdbc.Driver";
    
    public static Connection getConnection() throws Exception{
        Class.forName(DRIVER);
        Connection con = DriverManager.getConnection(URL, DB_USER, DB_PW);
        return con;
    }
}
