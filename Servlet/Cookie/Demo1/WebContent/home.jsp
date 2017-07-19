<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	
	String username = "";
	
	if(cookies != null) {
		for(Cookie cookie : cookies) {
			if(cookie.getName().toString().equals("user")) {
				username = cookie.getValue();	
			}
		}
	}
	
	if(!username.equals("admin")) response.sendRedirect("login.jsp");
%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Home Page</title>
</head>
<body>
	<h3>Hello <%= username %>!</h3>
</body>
</html>