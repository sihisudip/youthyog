<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="ResetCustomer" method="post">
		<label>Enter Old Password </label><input type="password"
			name="old_pass" placeholder="Old Password" /><br>
		<br> <label>Enter New Password </label><input type="password"
			name="new_pass" placeholder="New Password" /><br>
		<br> <label>Enter Confirm Password </label><input type="password"
			name="confirm_pass" placeholder="Confirm Password" /><br>
		<br> <input type="submit" name="btn-customer-pass-reset"
			value="Save" />
	</form>

</body>
</html>