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
	<table class="table table-striped">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">share_name</th>
          <th scope="col">quantity</th>
          <th scope="col">price</th>
          <th scope="col">sell</th>
        </tr>
      </thead>
      <%! int i=0;%>
      <% i=0; %>
      <tbody>
        <c:forEach items="${orderList}" var="order">
            <tr>

                <% i=i+1; %>
                <th><%= i %></td>
                <td>${order.share_name}</td>
                <td>${order.quantity}</td>
                <td>${order.share_price}</td>
                <td><a href="/sell_shares?share_name=${order.share_name}&quantity=${order.quantity}&price=${order.share_price}&share_id=${order.share_id}" class="btn btn-primary btn-sm active">Sell</a></td>

            </tr>
        </c:forEach>
      </tbody>
    </table>
</body>
</html>