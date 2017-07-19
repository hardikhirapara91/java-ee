<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String username = request.getParameter("username");    
    String password = request.getParameter("password");
    
    // Database Configuration
    String dbUrl = "jdbc:mysql://localhost:3306/login_app_6";
	String dbUser = "root";
	String dbPassword = "admin";
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
	
	String query = "SELECT * FROM `user` WHERE `username`=?  AND `password`=?";
    PreparedStatement psts = connection.prepareStatement(query);
    psts.setString(1, username);
    psts.setString(2, password);
    
    ResultSet result = psts.executeQuery();
    
    if (result.next()) {
        session.setAttribute("username", username);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>