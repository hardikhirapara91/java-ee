<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="user" class="com.hardik.bean.UserBean" scope="session"/>

<jsp:setProperty property="*" name="user"/>

<a href="output.jsp">Output</a>