<%--
  Created by IntelliJ IDEA.
  User: macos
  Date: 11/30/21
  Time: 12:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! String user = "admin"; %>
<%! String password = "password"; %>

<%--<%--%>
<%--    if (user == "admin") {--%>
<%--        request.setAttribute("userNameAdmin", false);--%>
<%--    }else{--%>
<%--        request.setAttribute("userNameAdmin", true);--%>
<%--    }--%>
<%--    visits++;--%>
<%--%>--%>


<%! int counter = 0; %>
<% counter += 1;
    request.setAttribute("NumberOfVisits", counter);
%>


<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<%@ include file="partials/navbar.jsp" %>
<%--<% request.setAttribute("message", "Hello, World!"); %>--%>
<%--<h1>Here is the message: ${message}</h1>--%>

<% request.setAttribute("welcome", "Welcome, please login below!"); %>
<h3>${welcome}</h3>


<form method="POST" action="profile.jsp">
<%--<form method="POST" action="login.jsp">--%>

    <div class="form-group">
        <label for="email">Email address</label>
        <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter email">
        <%--        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--%>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
    </div>
    <div class="form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">Check me out</label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>


<p>The current date is <%= java.time.LocalDate.now() %></p>
<p>The current time is <%= java.time.LocalTime.now() %></p>

<%
    if(request.getParameter("reset") != null && request.getParameter("reset").equals("true")){
        counter = 0;
    }
%>
<h3>Number of page visits: <%= counter %>.</h3>



<%@ include file="partials/scripts.jsp" %>

</body>
</html>
