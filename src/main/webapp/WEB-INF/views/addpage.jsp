<%--
  Created by IntelliJ IDEA.
  User: Mike
  Date: 7/24/2016
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Adding new user</title>
</head>
<body bgcolor="#5f9ea0">

<div style="text-align: center;">
    <h1>Create new User</h1>

    <c:url var="saveUrl" value="/users/add" />
    <form:form modelAttribute="user" method="POST" action="${saveUrl}">
        <table align="center" style="border: 2px solid; width: 650px; text-align:left" bgcolor="#f0fff0">
            <tr>
                <td><form:label path="name">Name:</form:label></td>
                <td><form:input path="name"/></td>
                <td><form:errors path="name" cssClass="error"/></td>
            </tr>

            <tr>
                <td><form:label path="age">Age:</form:label></td>
                <td><form:input path="age"/></td>
                <td><form:errors path="age" cssClass="error"/></td>
            </tr>

            <tr>
                <td><form:label path="admin">Admin:</form:label></td>
                <td><form:checkbox path="admin"/></td>
                <td><form:errors path="admin" cssClass="error"/></td>
            </tr>
            <tr>
            </tr>
        </table>
        <br>
        <input type="submit" value="Add" />

    </form:form>
</div>
</body>
</html>
