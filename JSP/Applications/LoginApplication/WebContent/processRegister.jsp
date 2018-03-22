<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="com.mysql.jdbc.PreparedStatement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>

<%
	String firstName = request.getParameter("firstname");
	String lastName = request.getParameter("lastname");
	String email = request.getParameter("email");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	DateFormat date = new SimpleDateFormat("yyyy-mm-dd");
	
	String dbUrl = "jdbc:mysql://localhost:3306/login_app_6";
	String dbUser = "root";
	String dbPassword = "admin";
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
	
	String query = "INSERT INTO `user`(`first_name`,`last_name`,`email`,`username`,`password`,`regdate`) VALUES(?,?,?,?,?,?)";
	PreparedStatement psts = (PreparedStatement) connection.prepareStatement(query);
	psts.setString(1, firstName);
	psts.setString(2, lastName);
	psts.setString(3, email);
	psts.setString(4, username);
	psts.setString(5, password);
	psts.setString(6, date.format(new Date()));
	
	int result = psts.executeUpdate();
	
	if(result > 0) {
		response.sendRedirect("welcome.jsp");	
	} else {
		response.sendRedirect("register.jsp");
	}
	
	connection.close();
%>