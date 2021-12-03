<%--
  Created by IntelliJ IDEA.
  User: macos
  Date: 12/1/21
  Time: 12:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Pizza Order</title>
</head>
<body>
<h1>PIZZA</h1>

<%--<form method="POST" action="/register">--%>
<form method="POST">
    <div class="form-group">
        <label for="crustSelect">Choose Crust</label>
        <select class="form-control" name="crustSelect" id="crustSelect">
            <option selected>Choose...</option>
            <option>Thin</option>
            <option>Hand Tossed</option>
            <option>Pan</option>
<%--            <option value="pan">Pan</option>--%>
        </select>
    </div>
    <div class="form-group">
        <label for="sauceSelect">Choose Sauce</label>
        <select class="form-control" name="sauceSelect" id="sauceSelect">
<%--            <select name="sauceSelect" id="sauceSelect">--%>
            <option selected>Choose...</option>
            <option>Tomato</option>
            <option>Pesto</option>
            <option>Alfredo</option>
        </select>
    </div>
    <h6>Choose Toppings</h6>
    <div class="form-check form-check-inline" id="toppings">
        <input class="form-check-input" name="toppings" type="checkbox" id="cheese" value="Cheese">
        <label class="form-check-label" for="cheese">Cheese</label>
    </div>
    <div class="form-check form-check-inline">
        <input class="form-check-input" name="toppings" type="checkbox" id="pepperoni" value="Pepperoni">
        <label class="form-check-label" for="pepperoni">Pepperoni</label>
    </div>
    <div class="form-check form-check-inline">
        <input class="form-check-input" name="toppings" type="checkbox" id="sausage" value="Sausage">
        <label class="form-check-label" for="sausage">Italian Sausage</label>
    </div>
    <div class="form-check form-check-inline">
        <input class="form-check-input" name="toppings" type="checkbox" id="olives" value="Olives">
        <label class="form-check-label" for="olives">Olives</label>
    </div>
    <div class="form-check form-check-inline">
        <input class="form-check-input" name="toppings" type="checkbox" id="tomato" value="Tomato">
        <label class="form-check-label" for="tomato">Tomato</label>
    </div>
    <div class="form-check form-check-inline">
        <input class="form-check-input" name="toppings" type="checkbox" id="bacon" value="Bacon">
        <label class="form-check-label" for="bacon">Bacon</label>
    </div>
    <br>
    <br>
    <div class="form-group">
        <label for="address">Delivery Address</label>
        <textarea class="form-control" name="address" id="address" rows="3"></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>


</body>
</html>
