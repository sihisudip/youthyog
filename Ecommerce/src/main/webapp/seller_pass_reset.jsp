<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<body><br><br><br>
	<div class="header">
	<form action="ResetSeller" method="post">
	<label>Enter Old Password </label><input type="password" name="old_pass" placeholder="Old Password"/><br><br>
	<label>Enter New Password </label><input type="password" name="new_pass" placeholder="New Password"/><br><br>
	<label>Enter Confirm Password </label><input type="password" name="confirm_pass" placeholder="Confirm Password"/><br><br>
	<input type="submit" name="btn-seller-pass-reset" value="Save" />
	</form>
</div>
</body>
</html>
