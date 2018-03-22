<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
    	
    	out.println("You are not logged in");
		out.print(" <a href=\"index.jsp\">Please Login</a>");
		
	} else {
		
		out.println("Welcome " + session.getAttribute("username"));
		out.println("<a href=\"logout.jsp\">Log out</a>");
		
    }
%>