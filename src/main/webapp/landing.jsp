<%--
  Created by IntelliJ IDEA.
  User: macos
  Date: 11/30/21
  Time: 10:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! int visits = 0;
//boolean hasUserBeenHere = false; THIS IS PRETTY MUCH LINE 10
%>
<%

    if (visits == 0) {
        request.setAttribute("hasUserBeenHere", false);
    }else{
        request.setAttribute("hasUserBeenHere", true);
    }

    visits++;
%>

<%--setAttribute sets an asstribute for jsp to interpret the language,,,,, SETTING A VARIABLE SPECIFIC TO jsp --%>

<html>
<head>
    <title>Title</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

</head>
<body>

<%@ include file="partials/navbar.jsp"%>

<h1>Mission Statement</h1>

<c: choose>
    <c:when test="${hasUserBeenHere}">
        <h2>Welcome Back</h2>
    </c:when>
    <c:otherwise>
        <h2>Hello for first time</h2>
    </c:otherwise>
</c:>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga ullam ut voluptate. Accusantium distinctio ducimus enim error exercitationem fugit, id incidunt laborum libero nisi, nostrum perferendis quibusdam rerum totam unde!</p>

<%@ include file="partials/scripts.jsp"%>
</body>
</html>
