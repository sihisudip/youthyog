<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title></title>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../../../favicon.ico">

<title>E-Commerce Website</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="cssFile/loginsignup.css" rel="stylesheet">
<link href="cssFile/maincss.css" rel="stylesheet">
<link href="cssFile/carousel.css" rel="stylesheet">
</head>

<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<a class="navbar-brand" href="index.jsp">Website Logo</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#"><span
							class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="#"></a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#"></a>
					</li>
				</ul>
				<form class="form-inline mt-2 mt-md-0">
					<span class="headermenu">Customer Supprot</span>
				</form>
				<form class="form-inline mt-2 mt-md-0">
					<span class="headermenu">Cart</span>
				</form>
				<form class="form-inline mt-2 mt-md-0">
					<span class="headermenu">Login & Sign Up</span>
				</form>
			</div>
		</nav>
	</header>
	<div class="login_signup_total_area">
		<div class="loginheader">E-Commerce Website</div>
		<form action="Login" method="post">
			<div class="formboxarea">
				<div class="boxheadertext">Login</div>
				<div class="emal_phone_text_line">Email or mobile phone number</div>
				<input type="text" name="email">
				<div class="emal_phone_text_line">Password</div>
				<input type="password" name="pass"><br>
				<div class="login_sing_up_button">
					<input type="submit" name="btn-seller-login" value="Continue">
				</div>
			</div>
		</form>
		<div class="newuser">
			New to E-Commerce<br>
			<hr>
			<div class="login_sing_up_create_account_button"></div>
			<a href="seller_signup.jsp"><input type="submit"
				value="Create Your E-Commerce Account"></a>
		</div>

	</div>
</body>
</html>