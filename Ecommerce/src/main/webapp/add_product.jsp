<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<style type="text/css">
.Shop_owner_product_upload_form{
text-align: center;
}
</style>
<link href="cssFile/signup.css" rel="stylesheet">
<link href="cssFile/shopownerprofile.css" rel="stylesheet">
</head>
<body>
	<%
		response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
		response.setHeader("pragma", "no-cache");
		response.setHeader("Expires", "0");

		if (session.getAttribute("email") == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	
	<div class="Shop_owner_product_upload_form">
				<h1>Upload Your Product</h1>
				<form action="ProductUpload" name="shop_owner" method="post" >
					<br>
					<div class="shop_owner_add_product_text_feild">Product Name:</div>
					<input type="text" name="product_name"><br>
					<div class="shop_owner_add_product_text_feild">Selling Price:</div>
					<input type="text" name="selling_price"><br>
					<div class="shop_owner_add_product_text_feild">Cost Price:</div>
					<input type="text" name="cost_price"><br>
					<div class="shop_owner_add_product_text_feild">Product
						Discount:</div>
					<input type="text" name="product_dis"><br>
					<div class="shop_owner_add_product_text_feild">Product
						Category:</div>
					<input type="text" name="product_cat"><br>
					<div class="shop_owner_add_product_text_feild">Product
						Description:</div>
					<input type="text" name="product_des"><br>
					<div class="shop_owner_add_product_text_feild">Product
						Images:</div>
					<input type="file" name="product_img" accept="image/*"><br><br>
					 <input	type="submit" name="btn_pro_upload" value="Upload">
				</form>
			</div>

</body>
</html>