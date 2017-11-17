<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login</title>
</head>
<body>
	<h2>Login</h2>
	<form action="Login" method="post">
		<table>
			<tr>
				<td>Username:</td>
				<td><input type="text" name="username" required autofocus></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" required></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;"><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form>
</body>
</html>