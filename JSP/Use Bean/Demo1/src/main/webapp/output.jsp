<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="com.hardik.bean.UserBean" scope="session"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table>
		<tr>
			<td>Name:</td>
			<td><%= user.getName() %></td>
		</tr>
		<tr>
			<td>Email: </td>
			<td><%= user.getEmail() %></td>
		</tr>
		<tr>
			<td>Username:</td>
			<td><%= user.getUsername() %></td>
		</tr>
	</table>
</body>
</html>