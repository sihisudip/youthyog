<%@page import="com.bean.Products"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="cssFile/maincss.css" rel="stylesheet">
<link href="cssFile/carousel.css" rel="stylesheet">
<style type="text/css">
.search-pro-image img{
	width: 300px; height: 250px;	
}

table{
text-align: center;
}
span.search_product_price {
	font-size: 40px;
	font-family:cursive;
}
</style>
</head>
<body>
<%
List<Products> pro=(List<Products>)session.getAttribute("product");


%>
<table cellpadding="50">
<tr>
<% for(Products p:pro){%>
<td> 
<div class="search-pro-image"><img src="<%=p.getImages()%>"></div>
</td>
<td>
<span class="producttitle"><%=p.getProduct_name()%><br></span>
<span class="producttitle"><%=p.getProduct_description()%></span><br>
</td>
<td>
<span class="search_product_price"><%=p.getSelling_price()%></span><br><br>
<span class="producttitle"><%=p.getDiscount()%>% off</span>

</td>
<%} %>
</tr>
</table>
</body>
</html>