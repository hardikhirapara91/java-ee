<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSP Use Bean Example</title>
</head>
<body>

	<h2>JSP Use Bean Example</h2>
	
	<form action="process.jsp" method="post">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" required autofocus></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" required></td>
			</tr>
			<tr>
				<td>Username:</td>
				<td><input type="text" name="username" required></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>