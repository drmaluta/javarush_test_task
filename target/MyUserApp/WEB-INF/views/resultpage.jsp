<%--
  Created by IntelliJ IDEA.
  User: Mike
  Date: 7/29/2016
  Time: 4:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Search Results</title>
</head>
<body bgcolor="#5f9ea0">
<div align="center">
    <h1>Users</h1>

    <c:url var="mainUrl" value="/userspage" />

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
    </br>
    <a href="${mainUrl}"><input type="button" value="Return to Users List"/>
    <br>
    </br>

</div>

</body>
</html>
