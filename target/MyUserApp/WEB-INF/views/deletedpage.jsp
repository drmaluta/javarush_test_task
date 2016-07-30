<%--
  Created by IntelliJ IDEA.
  User: Mike
  Date: 7/24/2016
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User was deleted</title>
</head>
<body bgcolor="#5f9ea0">
<div style="text-align: center;">
    <strong>message : ${deletedpage}</strong>
    <c:url var="mainUrl" value="/userspage" />
    <p><a href="${mainUrl}"><input type="button" value="Return to Users List"/></a></p>
</div>
</body>
</html>
