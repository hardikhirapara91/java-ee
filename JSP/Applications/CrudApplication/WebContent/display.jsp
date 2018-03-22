<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!-- DB Connection -->
<sql:setDataSource var="dbSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/crud_app_3" user="root" password="admin"/>

<!-- Query -->
<sql:query var="result" dataSource="${dbSource}">
	SELECT * FROM `product`;
</sql:query>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Display All Products</title>
</head>
<body>
	<center>
		<table border="1" width="40%">
			<caption>Product List</caption>
			<tr>
			    <th>Product ID</th>
			    <th>Product Name</th>
			    <th>Quantity</th>
			    <th colspan="2">Action</th>
			</tr>
			<c:forEach var="product" items="${result.rows}">
			<tr>
				<td><c:out value="${product.id}"/></td>
				<td><c:out value="${product.pname}"/></td>
				<td><c:out value="${product.quantity}"/></td>
				<td><a href="update.jsp?id=<c:out value="${product.id}"/>">Update</a></td>
				<td><a href="delete.jsp?id=<c:out value="${product.id}"/>"  onclick="return confirm('Sure to delete this record?')">Delete</a></td> 
			</tr>	
			</c:forEach>
		</table>
		<br>
		<a href="index.jsp">Go Home</a>
	</center>	
</body>
</html>