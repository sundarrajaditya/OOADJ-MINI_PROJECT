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
<style>
  .center_div{
    margin: 60px auto;
    padding-left:40px;
    width:80% /* value of your choice which suits your alignment */
    
}
</style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" class="navbar navbar-default navbar-fixed-top">
      <a class="navbar-brand" style="color: #a7d129;font-size: 28; font-weight: bold">ShareMaster</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link active" style="font-weight: bold" href="/inboard">Home <span class="sr-only">(current)</span></a>
          <a class="nav-item nav-link active" style="font-weight: bold" href="/orders">Orders</a>
          <a class="nav-item nav-link active" style="font-weight: bold" href="/product">Trade</a>
          <a style="margin-left: 1000px"class="nav-item nav-link active" href="/logout">Logout</a>
        </div>
      </div>
    </nav>



    <div class="center_div">
    <form action="/sell" method="POST">
      <div class="form-row">
        <div class="form-group col-md-1">
          <label for="share_id">Share id</label>
          <input type="number" name="share_id" class="form-control" id="share_id" value="${order.share_id}" readonly>
        </div>
        <div class="form-group col-md-3">
          <label for="share_name">Share name</label>
          <input type="text" name="share_name" class="form-control" id="share_name" value="${order.share_name}" readonly>
        </div>
      </div>
      <div class="form-row">
             <div class="form-group col-md-1">
               <label for="price">Price</label>
               <input type="number" name="price" class="form-control" id="price" value="${order.share_price}" readonly>
             </div>
             <div class="form-group col-md-1">
               <label>Quantity</label>
               <input type="number" name="quantity" class="form-control" id="quantity" min="0" step=1 max="${order.quantity}" value="0">
             </div>

       </div>

      <div class="form-row">
        <label for="total">Total Price: </label>
        <p id="total">0</p>
      </div>


      <button type="submit" class="btn btn-primary">SELL</button>
    </form>
  </div>
    <script>
      console.log("hello")
      let quantity=document.getElementById("quantity");
      quantity.addEventListener("input",(event)=>{
        let price=document.getElementById("price");
        let total=document.getElementById("total");
        console.log(price.value);
        console.log(quantity.value);
        // console.log(quantity.nodeValue*price.nodeValue)
        total.innerHTML=""+(quantity.value*price.value);
      })
      
    </script>
</body>
</html>