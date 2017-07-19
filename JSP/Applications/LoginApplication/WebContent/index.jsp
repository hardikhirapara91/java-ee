<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Login Page</title>
</head>
<body>	
	<h3>Login</h3>
	<form method="post" action="processLogin.jsp">
	    <table border="1" width="30%" cellpadding="3">
	        <tbody>
	            <tr>
	                <td>User Name</td>
	                <td><input type="text" name="username" required autofocus/></td>
	            </tr>
	            <tr>
	                <td>Password</td>
	                <td><input type="password" name="password" required/></td>
	            </tr>
	            <tr>
	                <td><input type="submit" value="Login" /></td>
	                <td><input type="reset" value="Reset" /></td>
	            </tr>
	            <tr>
	                <td colspan="2">Yet Not Registered!! <a href="register.jsp">Register Here</a></td>
	            </tr>
	        </tbody>
	    </table>
	</form>
</body>
</html>