<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Add New Product</title>
</head>
<body>
	<form action="insert_process.jsp" method="post">
	    <table border="0" cellspacing="2" cellpadding="5">
	        <thead>
	            <tr>
	                <th colspan="2">Purchase Product</th>
	            </tr>
	        </thead>
	        <tbody>
	            <tr>
	                <td><label>Product Name</label></td>
	                <td><input type="text" name="pname" required autofocus/></td>
	            </tr>
	            <tr>
	                <td><label>Quantity</label></td>
	                <td><input type="text" name="qty" required/></td>
	            </tr>
	            <tr>
	                <td><input type="submit" value="Save" /></td>
	                <td><input type="reset" value="reset"/></td>
	            </tr>
	        </tbody>
	    </table>
	</form>
	
	<br>
	
	<!-- Error -->
	<font color="red">
		<c:if test="${not empty param.errMsg}">
			<c:out value="${param.errMsg}"/>
		</c:if>
	</font>
	<!-- Success -->
	<font color="green">
		<c:if test="${not empty param.successMsg}">
			<c:out value="${param.successMsg}"/>
		</c:if>
	</font>
	<br>
	<a href="index.jsp">Go Back</a>
</body>
</html>