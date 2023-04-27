<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shares List</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" class="navbar navbar-default navbar-fixed-top">
      <a class="navbar-brand" style="color: #a7d129;font-size: 28; font-weight: bold">StockTrad-Z</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link active" style="font-weight: bold" href="/inboard">Home <span class="sr-only">(current)</span></a>
          <a class="nav-item nav-link active" style="font-weight: bold" href="/orders">Orders</a>
          <a class="nav-item nav-link active" style="font-weight: bold" href="/product">Trade</a>
          <a style="margin-left: 1000px"class="nav-item nav-link active" href="/">Logout</a>
        </div>
      </div>
    </nav>




    <form>
      <div class="form-row">
        <div class="form-group col-md-3">
          <label for="share_name">Share name</label>
          <input type="text" class="form-control" id="share_name" value="share name">
        </div>
        <div class="form-group col-md-1">
          <label for="quantity">Quantity</label>
          <input type="number" class="form-control" id="quantity" value="0">
        </div>
      </div>
      <div class="form-group col-md-1">
        <label for="price">Price</label>
        <input type="number" class="form-control" id="price" placeholder="1234 Main St">
      </div>
      <div class="form-group">
        <label for="inputAddress2">Address 2</label>
        <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
      </div>
      <div class="form-row">
        <div class="form-group col-md-6">
          <label for="inputCity">City</label>
          <input type="text" class="form-control" id="inputCity">
        </div>
        <div class="form-group col-md-4">
          <label for="inputState">State</label>
          <select id="inputState" class="form-control">
            <option selected>Choose...</option>
            <option>...</option>
          </select>
        </div>
        <div class="form-group col-md-2">
          <label for="inputZip">Zip</label>
          <input type="text" class="form-control" id="inputZip">
        </div>
      </div>
      <div class="form-group">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" id="gridCheck">
          <label class="form-check-label" for="gridCheck">
            Check me out
          </label>
        </div>
      </div>
      <button type="submit" class="btn btn-primary">Sign in</button>
    </form>
</body>
</html>