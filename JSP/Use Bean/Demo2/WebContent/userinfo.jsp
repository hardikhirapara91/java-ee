<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<jsp:useBean id="userBean" class="com.hardik.bean.User"/>
<jsp:setProperty property="*" name="userBean"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>JSP User Bean</title>
</head>
<body>
	
	<p>The following information was saved:</p>
    <ul>
      <li>User Name: <jsp:getProperty property="username" name="userBean"/></li>
      <li>Birth Date: <jsp:getProperty property="birthdate" name="userBean"/></li>
      <li>Email Address: <jsp:getProperty property="email" name="userBean"/></li>
      <li>Sex: <jsp:getProperty property="sex" name="userBean"/></li> 
    </ul>
                          
</body>
</html>