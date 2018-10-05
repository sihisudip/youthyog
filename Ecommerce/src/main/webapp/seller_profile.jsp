<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
</style>
<link href="cssFile/signup.css" rel="stylesheet">
<link href="cssFile/shopownerprofile.css" rel="stylesheet">

<script type="text/javascript">
	function myFunction() {
		var x = document.getElementById("myTopnav");
		if (x.className === "topnav") {
			x.className += " responsive";
		} else {
			x.className = "topnav";
		}
	}

	var password = document.getElementById("password"), confirm_password = document
			.getElementById("confirm_password");

	function validatePassword() {
		if (password.value != confirm_password.value) {
			confirm_password.setCustomValidity("Passwords Don't Match");
		} else {
			confirm_password.setCustomValidity('');
		}
	}

	password.onchange = validatePassword;
	confirm_password.onkeyup = validatePassword;
</script>
</head>
<body onload="getMessage()">
	<%
		response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
		response.setHeader("pragma", "no-cache");
		response.setHeader("Expires", "0");

		if (session.getAttribute("email") == null) {
			response.sendRedirect("seller_login.jsp");
		}
	%>


	<div class="topnav" id="myTopnav">
		<a href="#home" class="active">Home</a>

		<div class="right_area">
			<a href="#news">Cart</a> <a href="#contact">Contact</a> <a
				href="#about">About</a> <a href="javascript:void(0);" class="icon"
				onclick="myFunction()"> <i class="fa fa-bars"></i>
			</a>
		</div>
	</div>

	<div class="shop_owner_add_product_full_area">
		<div class="add_product_area_account_information">
			<div id="shop_owner_heading">Shop Add Product Area for Seller</div>
			<div id="shop_owner_account_name">
				Account Name:	<span id="shop_owner_name"><%=session.getAttribute("name") %></span>
			</div>
			<span class="shop_owner_edit_profile"><a href="edit_seller_profile.jsp" style="text-decoration: none">Edit Profile</a></span>
			<span class="shop_owner_edit_profile"><a href="Logout?sid=<%=session.getAttribute("sid") %>" style="text-decoration: none">Logout</a></span>
		</div>
		<div class="only_add_to_cart_area"><br><br>
		<a href="add_product.jsp">Add Product</a>
		<br><br>
		<a href="previous_uploaded_pro.jsp">Previous Uploaded Product</a>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
			
			


		</div>
	</div>

	<div class="all_footer_area">
		<div class="mobile_display_two_area">
			<div class="footer_first_section">
				About<br>About us<br>Contact us<br>Careers<br>Our
				Stories
			</div>
			<div class="footer_second_section">
				Help<br>Paymeny<br>Shipping<br>Cancelletion & return
			</div>
		</div>
		<div class="mobile_display_two_area">
			<div class="footer_third_section">
				Ploicy<br>Return Ploicy<br>Terms & Condition<br> FAQ
			</div>
			<div class="footer_fourth_section">
				Social<br>Facebook<br>Twitter<br>Instagram
			</div>

		</div>
		<div class="mobile_display_two_area">

			<div class="footer_fifth_section">
				Mail us <br> ecommerce@gmail.com
			</div>
			<div class="footer_six_section">
				Registered Office Address:<br>Kolkata
			</div>
		</div>
	</div>

</body>
</html>
