<%@page import="com.bean.Products"%>
<%@page import="com.dao.SellerDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<% 
if(request.getParameter("btn-cart")!=null){
	out.print("hello");
}
%>

<%
String pid=request.getParameter("pid");
SellerDao sd=new SellerDao();
Products pro=sd.get_product(pid);
%>

<div class="container" style="width:700px" align="center" >
<h3 align="center">Shopping Cart</h3>
<div class="col-md-12" align="center">
<form action="cart.jsp" method="post">
<img src='<%= pro.getImages() %>' class="img-responsive" style=" width: 30%; margin-top:80px; margin-bottom:50px;"/>
<h4 class="text-info"><%= pro.getProduct_name()%></h4>
<h4 class="text-danger">Rs.<%= pro.getSelling_price() %></h4>
<label>Enter amount</label><input type="text" class="form-control" value="1" style="margin-left:30px; margin-top:30px;"><br/><br>
<input type="submit" name="btn-cart" value="Add to Cart" class="btn btn-success"/>
</form>
</div>
</div>


</body>
</html>