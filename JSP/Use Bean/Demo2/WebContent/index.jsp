<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>User Info Entry Form</title>
</head>
<body bgcolor="white">
	<form action="userinfo.jsp" method="post">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Birth Date:</td>
				<td><input type="date" name="birthdate"></td>
			</tr>
			<tr>
				<td>Email Address:</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Sex:</td>
				<td><input type="text" name="sex"></td>
			</tr>
			<tr>
				<td colspan=2><input type="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>