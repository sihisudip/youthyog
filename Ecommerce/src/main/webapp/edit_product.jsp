<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ page import="com.dao.*" %>
<%@ page import="java.util.List" %>
<%@ page import="com.bean.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.header{
text-align: center;
}

</style>
</head>
<body>

<%

String pid=request.getParameter("pid");
SellerDao sd=new SellerDao();
Products pro=sd.get_product(pid);

System.out.print(pro);

%>
<div class="header">
<div class="Shop_owner_product_upload_form">
				<h1>Edit Product Details</h1>
				<form action="ProductReset" name="shop_owner" method="post" >
					<br>
					<input type="hidden" name="pid" value=<%= pid%>>
					<div class="shop_owner_add_product_text_feild">Product Name:</div>
					<input type="text" name="product_name" value="<%= pro.getProduct_name()%>"><br>
					<div class="shop_owner_add_product_text_feild">Selling Price:</div>
					<input type="text" name="selling_price" value="<%= pro.getSelling_price()%>"><br>
					<div class="shop_owner_add_product_text_feild">Cost Price:</div>
					<input type="text" name="cost_price" value="<%= pro.getCost_price()%>"><br>
					<div class="shop_owner_add_product_text_feild">Product
						Discount:</div>
					<input type="text" name="product_dis" value="<%= pro.getDiscount()%>"><br>
					<div class="shop_owner_add_product_text_feild">Product
						Category:</div>
					<input type="text" name="product_cat"><br>
					<div class="shop_owner_add_product_text_feild">Product
						Description:</div>
					<input type="text" name="product_des" value="<%= pro.getProduct_description()%>"><br>
					<div class="shop_owner_add_product_text_feild">Product
						Images:</div>
					<input type="file" name="product_img" accept="image/*"><br><br>
					 <input	type="submit" name="btn_pro_upload" value="Save">
				</form>
			</div>
</div>


</body>
</html>