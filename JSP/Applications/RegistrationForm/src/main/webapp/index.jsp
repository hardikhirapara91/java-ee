<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Registration Form</title>
</head>
<body>
	
	<h2>Registration Form</h2>
	
	<form action="process.jsp" method="post">
		<table>
			<tr>
				<td>Username:</td>
				<td><input type="text" name="uname" onclick="this.value=''"/></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="email" onclick="this.value=''"/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" onclick="this.value=''"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit"></td>
			</tr>
		</table> 
	</form>
</body>
</html>