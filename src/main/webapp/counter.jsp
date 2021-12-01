<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<%
    if(request.getParameter("reset") != null && request.getParameter("reset").equals("true")){
    counter = 0;
    }
%>

<h1>The current count is <%= counter %>.</h1>
<%--<h1>The current count is ${NumberOfVisits}.</h1> //this will not run java code, but will only display the preexising variables--%>

<p>The current date is <%= java.time.LocalDate.now() %></p>

<p>The current time is <%= java.time.LocalTime.now() %></p>

<p>Resetting counter: ${param.page_no}</p>

View the page source!

<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->

<%@ include file="partials/scripts.jsp" %>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>

</body>
</html>