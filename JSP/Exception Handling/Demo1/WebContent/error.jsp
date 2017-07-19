<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" contentType="text/html; charset=ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Error Handling Page</title>
</head>
<body>
	
	<b>Request that failed:</b> ${pageContext.errorData.requestURI}
	<br>
	<b>Status code: </b> ${pageContext.errorData.statusCode}
	<br>
    <b>Exception:</b> ${pageContext.errorData.throwable}
</body>
</html>