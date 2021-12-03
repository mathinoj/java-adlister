<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: macos
  Date: 12/3/21
  Time: 11:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adz</title>
</head>
<body>
<h1>Ads Here</h1>

<c:forEach var="ad" items="${ads}">
    <div class = "advertisements">
<%--        <p>${ad.id}</p>--%>
        <h2>${ad.title}</h2>
        <p>${ad.description}</p>
    </div>
</c:forEach>

<%--<c:forEach var="ad" items="${ads}">--%>
<%--    <div class="product">--%>
<%--        <h2>${ad.title}</h2>--%>
<%--        <p>${ad.description}</p>--%>
<%--        <p4>${ad.id}</p4>--%>
<%--        <br>--%>
<%--        <p4>${ad.userId}</p4>--%>
<%--    </div>--%>
<%--</c:forEach>--%>

<%--<h1>Here are all the products:</h1>--%>

<%--<c:forEach var="product" items="${products}">--%>
<%--    <div class="product">--%>
<%--        <h2>${product.name}</h2>--%>
<%--        <p>Price: $ ${product.price}</p>--%>
<%--    </div>--%>
<%--</c:forEach>--%>

</body>
</html>
