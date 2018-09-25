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
<style type="text/css">
#dob{
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

			<div class="sign_up_header">Sign up form for Buyer</div>
			<form action="Signup" method="post">
				<div class="sign_up_text">Full Name:</div>
				<input type="text" name="buyer_name">
				<div class="sign_up_text">E-Mail:</div>
				<input type="text" name="buyer_email">
				<div class="sign_up_text">Date of Birth:</div>
				<input type="date" name="dob" id="dob">
				<div class="sign_up_text">Phone Number:</div>
				<input type="text" name="cus_mobile">
				<div class="sign_up_text">Password:</div>
				<input type="password" placeholder="Password" name="psw1"
					id="password" required>
				<div class="sign_up_text">Confirm Password:</div>
				<input type="password" placeholder="Confirm Password" name="psw2"
					id="confirm_password">
				<div class="sign_up_button">
					<input type="submit" name="btn-buyer-signup" value="Submit">
				</div>
			</form>

		</div>


	</div>



</body>
</html>
