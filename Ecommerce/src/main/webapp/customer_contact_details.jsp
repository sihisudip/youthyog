<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.dao.*" %>
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
<body><br>
	<% 
	String customer_mail=(String)session.getAttribute("cus_email");
	CustomerDao sd=new CustomerDao();
	Customer cus=sd.fetch_customer(customer_mail);

	%>
	<div class="header""C:/Users/Sudip/git/youthyog/Ecommerce">
	<h1>Edit Your Details</h1><br><br>
	<div class="sign_up_form_buyer">
		<form action="ResetCustomer" method="post">
			<div class="sign_up_text">Full Name:</div>
			<input type="text" name="buyer_name" value="<%= cus.getCustomer_name()%>">
			<div class="sign_up_text">E-Mail:</div>
			<input type="text" name="buyer_email" value="<%= cus.getCustomer_email()%>">
			<div class="sign_up_text">Date of Birth:</div>
			<input type="date" name="dob" id="dob" value="<%= cus.getCus_dob()%>">
			<div class="sign_up_text">Phone Number:</div>
			<input type="text" name="cus_mobile" value="<%= cus.getCustomer_mobile()%>"><br><br><input type="submit"
				value="Save" name="btn-customer-contact">
		</form>
		</div>
		</div>
</body>
</html>