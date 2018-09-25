<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="cssFile/signup.css" rel="stylesheet">

<script type="text/javascript">

	function formValidation() {

		var name = document.seller_signup.seller_name.value;
		if (name === "") {
			alert('Name must be filled.');
			return false;
		}

		var email = document.seller_signup.seller_email.value;
		if (email === "") {
			alert('Email must be filled.');
			return false;
		}
		
		var dob = document.seller_signup.dob.value;
		/* if (dob === "") {
			alert('DOB must be filled.');
			return false;
		} */
		
		var shop = document.seller_signup.shop_name.value;
		if (shop === "") {
			alert('Shop name must be filled.');
			return false;
		}
		
		var pro_cat = document.seller_signup.pro_cat.value;
		if (pro_cat === "") {
			alert('Product catagory must be filled.');
			return false;
		}
		
		var shop_add = document.seller_signup.shop_add.value;
		if (shop_add === "") {
			alert('Shop address must be filled.');
			return false;
		}
		
		var mob = document.seller_signup.phone.value;
		if (mob === "" || mob.length > 10 || mob.length < 10) {
			alert('Mobile number must be filled.');
			return false;
		}
		var psw1 = document.seller_signup.psw1.value;
		if (psw1 === "" || psw1 === null) {
			alert('Password must be filled.');
			return false;
		}
		var psw2 = document.seller_signup.psw2.value;
		if (psw2 === "" || psw2 === null) {
			alert('Password must be filled.');
			return false;
		}

		if (psw1 !== psw2) {
			alert("Passwords do not match.");
			return false;
		}
		return true;

	}

	function isName(e) {
		var charCode = (e.which) ? e.which : e.keyCode;
		if ((charCode > 64 && charCode < 91)
				|| (charCode > 96 && charCode < 123))
			return true;
		return false;
	}

	function validate_email(email) {

		var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

		if (reg.test(email.value) === false) {
			alert('Invalid Email ID');
			return false;
		}

	}

	function isNumberKey(e) {
		var charCode = (e.which) ? e.which : e.keyCode;
		if ((charCode<48 || charCode>57))
			return false;
		return true;
	}

	function myFunction() {
		var x = document.getElementById("myTopnav");
		if (x.className === "topnav") {
			x.className += " responsive";
		} else {
			x.className = "topnav";
		}
	}

</script>
<style type="text/css">
.date{
	 margin-left: 10px;
    width: 211px;
    padding: 5px;
}


</style>
</head>
<body>

	<div class="topnav" id="myTopnav">
		<a href="#home" class="active">Home</a>

		<div class="right_area">
			<a href="#news">Cart</a> <a href="#contact">Contact</a> <a
				href="#about">About</a> <a href="javascript:void(0);" class="icon"
				onclick="myFunction()"> <i class="fa fa-bars"></i>
			</a>
		</div>
	</div>

	<div class="sign_up_main_area">

		<div class="sign_up_form_buyer">

			<div class="sign_up_header">Sign up form for Seller</div>
			<form action="Signup" name="seller_signup" onsubmit="return formValidation()" method="post">
				<div class="sign_up_text">Owner Name:</div>
				<input type="text" name="seller_name">
				<div class="sign_up_text">Email Id:</div>
				<input type="text" name="seller_email" onsubmit="return validate_email()">
				<div class="sign_up_text">Date of Birth:</div>
				<input type="date" name="dob" class="date">
				<div class="sign_up_text">Shop Name:</div>
				<input type="text" name="shop_name">
				<div class="sign_up_text">Product category:</div>
				<input type="text" name="pro_cat">
				<div class="sign_up_text">Phone Number:</div>
				<input type="text" name="phone" onkeypress="return isNumberKey(this)">
				<div class="sign_up_text">Password:</div>
				<input type="password" placeholder="Password" id="password" name="psw1">
				<div class="sign_up_text">Confirm Password:</div>
				<input type="password" placeholder="Confirm Password"
					id="confirm_password" name="psw2">
				<div class="sign_up_button" name="smt">
					<input type="submit" name="btn-seller-signup" value="Submit">
				</div>
			</form>

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
