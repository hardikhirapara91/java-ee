<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<!-- Check Product Name and Quantity is empty or not -->
<c:if test="${empty param.id}">
	<c:redirect url="display.jsp"/>
</c:if>

<!-- DB Connection -->
<sql:setDataSource var="dbSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/crud_app_3" user="root" password="admin"/>

<!-- Query -->
<sql:update dataSource="${dbSource}" var="result">
	
	DELETE FROM `product` WHERE `id`=?
	<sql:param value="${param.id}"/>
</sql:update>

<c:redirect url="display.jsp"/>