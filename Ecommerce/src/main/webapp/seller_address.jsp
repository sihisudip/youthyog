<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="cssFile/signup.css" rel="stylesheet">
<link href="cssFile/shopownerprofile.css" rel="stylesheet">

<style type="text/css">
.header{
text-align: center;}
</style>
</head>
<body><br><br><br><br>
	<div class="header">
	<div class="sign_up_header">Fill up Your Address</div>
	<form action="SellerAddressUpload" method="post">
	<div class="sign_up_text">Enter Address:</div>
	<input type="text" name="address">
	<div class="sign_up_text">Enter City:</div>
	<input type="text" name="city">
	<div class="sign_up_text">Enter Pin:</div>
	<input type="text" name="pin">
	<div class="sign_up_text">Enter Landmark:</div>
	<input type="text" name="landmark"><br><br>
	<input type="submit" name="btn-seller-add" value="Submit"> 
	</form>
	</div>
</body>
</html>