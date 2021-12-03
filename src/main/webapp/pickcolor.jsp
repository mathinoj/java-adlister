<%--
  Created by IntelliJ IDEA.
  User: macos
  Date: 12/2/21
  Time: 11:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Colors</h1>

<form action="/pickcolor" method="POST">
<div class="form-group">
    <label for="color">Type a color: </label>
    <textarea class="form-control" name="color" id="color" rows="1"></textarea>
</div>
    <br>
<button type="submit" class="btn btn-primary" name="color" id="colorButton">Submit</button>
</form>

</body>
</html>
