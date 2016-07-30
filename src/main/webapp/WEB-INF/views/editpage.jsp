<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit user</title>

</head>
<body bgcolor="#5f9ea0">
<div style="text-align: center;">
    <h1>Edit user</h1>
    <c:url var="saveUrl" value="/users/edit" />
    <form:form modelAttribute="user" method="POST" action="${saveUrl}">
        <form:input type="hidden" path="id" id="id"/>
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
                <td><form:label path="Admin">Admin:</form:label></td>
                <td><form:checkbox path="Admin"/></td>
                <td><form:errors path="Admin" cssClass="error"/></td>
            </tr>
            <tr>
            </tr>
        </table>
        <br>
        <input type="submit" value="Update" />
    </form:form>

</div>
</body>
</html>