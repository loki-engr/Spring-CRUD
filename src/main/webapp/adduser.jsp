<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body>

<%@page import="com.javapoint.dao.UserDao"%>
<jsp:useBean id="u" class="com.javapoint.bean.User" ></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i = UserDao.save(u);
if(i > 0) {
response.sendRedirect("adduser-success.jsp");
} else {
response.sendRedirect("adduser-error.jsp");
} %>

</body>
</html>