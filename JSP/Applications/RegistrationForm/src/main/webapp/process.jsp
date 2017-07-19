<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.hardik.dao.UserDao" %>

<jsp:useBean id="userObj" class="com.hardik.bean.User"/>
<jsp:setProperty property="*" name="userObj"/>


<%

	boolean status = UserDao.addUser(userObj);
	
	if(status) {
		out.print("You are successfully registered.");
	} else {
		out.print("You are not successfully registered.");
	}
	
%>