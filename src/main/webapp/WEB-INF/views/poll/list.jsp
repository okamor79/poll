<%--
  Created by IntelliJ IDEA.
  User: Oleh Kaminskyi
  Date: 08.05.2018
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglib.jsp" %>

<html>
<head>
    <title>Poll List</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          crossorigin="anonymous">
</head>
<body>
<div class="container">

    <table class="table table-condensed table-hover table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Full name</th>
            <th>Email</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pollList}" var="poll">
            <tr>
                <td class="text-center">${poll.id}</td>
                <td><a href="${rootURL}/poll/detail/${poll.id}">${poll.fullName}</a></td>
                <td>${poll.email}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>

</body>
</html>
