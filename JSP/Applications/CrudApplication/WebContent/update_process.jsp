<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!-- DB Connection -->
<sql:setDataSource var="dbSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/crud_app_3" user="root" password="admin"/>

<!-- Query -->
<sql:update dataSource="${dbSource}" var="result">
	
	UPDATE `product` SET `pname`=?, `quantity`=? WHERE `id`=?
	
	<sql:param value="${param.pname}"/>
	<sql:param value="${param.qty}"/>
	<sql:param value="${param.id}"/>
</sql:update>

<c:redirect url="display.jsp"/>