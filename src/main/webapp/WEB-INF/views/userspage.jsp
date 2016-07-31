<%--
  Created by IntelliJ IDEA.
  User: Mike
  Date: 7/24/2016
  Time: 5:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="tag" uri="/WEB-INF/customTaglib.tld"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>List of users</title>

</head>
<body bgcolor="#5f9ea0">
<br>
<div align="center">
        <h1>Users</h1>

    <c:url var="addUrl" value="/users/add" />
    <c:url var="serrchUrl" value="/users/find" />

    <table style="border: 2px solid; width: 650px; text-align:center" align="center" bgcolor="#ffebcd">
        <thead style="background-color: #bce8f1;">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Admin</th>
            <th>Created Date</th>
            <th colspan="4"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="user">
            <c:url var="editUrl" value="/users/edit?id=${user.id}" />
            <c:url var="deleteUrl" value="/users/delete?id=${user.id}" />
            <tr>
                <td><c:out value="${user.id}" /></td>
                <td><c:out value="${user.name}" /></td>
                <td><c:out value="${user.age}" /></td>
                <td><c:out value="${user.admin}" /></td>
                <td><c:out value="${user.date}" /></td>
                <td><a class="btn" href="${editUrl}"><input type="button" value="Edit"/></a></td>

                <td><a class="btn" href="${deleteUrl}"><input type="button" value="Delete"/></a></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
    <br>
    <form action="${serrchUrl}">

        <strong>Search Users:</strong> <input type='text' name='name' id='name'/>
        <input type="submit" value="Search" />

    </form>
    <br>
    <c:url var="home" value="/userspage" />
    <tag:paginate max="10" offset="${offset}" count="${count}" uri="${home}" next="&raquo;" previous="&laquo;" />
    <br>
        <a href="${addUrl}"><input type="button" value="Add user"/></a>
    <br>


</div>

</body>
</html>
