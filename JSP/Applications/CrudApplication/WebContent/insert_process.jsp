<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<!-- Check Product Name and Quantity is empty or not -->
<c:if test="${empty param.pname or empty param.qty}">
	<c:redirect url="insert.jsp">
		<c:param name="errMsg" value="Product name and quentity is not empty."/>
	</c:redirect>
</c:if>

<!-- DB Connection -->
<sql:setDataSource var="dbSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/crud_app_3" user="root" password="admin"/>

<!-- Query -->
<sql:update dataSource="${dbSource}" var="result">
	
	INSERT INTO `product`(`pname`, `quantity`) VALUES (?,?);
	
	<sql:param value="${param.pname}"/>
	<sql:param value="${param.qty}"/>
</sql:update>

<c:if test="${result >= 1}">
	<c:redirect url="insert.jsp">
		<c:param name="successMsg" value="Congratulations ! Data inserted successfully."/>
	</c:redirect>
</c:if>