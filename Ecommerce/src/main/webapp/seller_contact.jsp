<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.dao.*" %>
<%@ page import="com.bean.*" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="cssFile/signup.css" rel="stylesheet">
<link href="cssFile/shopownerprofile.css" rel="stylesheet">
<style type="text/css">
.header{
text-align: center;
margin-top: 20px;
}
input[type="date"] {
    margin-left: 10px;
    width: 211px;
    padding: 5px;
}

</style>

</head>
<body>
<% 
	String seller_mail=(String)session.getAttribute("email");
	SellerDao sd=new SellerDao();
	Seller sel=sd.fetch_seller(seller_mail);
	
	
%>


<div class="header">
<div class="sign_up_header">Edit Your Information</div>
			<form action="ResetSeller" name="seller_signup" onsubmit="return formValidation()" method="post">
				
				<div class="sign_up_text">Owner Name:</div>
				<input type="text" name="seller_name" value="<%= sel.getSeller_name() %>">
				<div class="sign_up_text">Email Id:</div>
				<input type="text" name="seller_email" onsubmit="return validate_email()" value="<%= sel.getSeller_email() %>">
				<div class="sign_up_text">Phone Number:</div>
				<input type="text" name="phone" onkeypress="return isNumberKey(this)" value="<%= sel.getMobile() %>">
				<div class="sign_up_text">Date of Birth:</div>
				<input type="date" name="dob" id="date" value="<%= sel.getDob()%>">
				<div class="sign_up_text">Shop Name:</div>
				<input type="text" name="shop_name" value="<%= sel.getShop_name()%>">
				<div class="sign_up_text">Product category:</div>
				<input type="text" name="pro_cat" value="<%= sel.getProduct_cat()%>">
				
				
				<div class="sign_up_button" name="smt">
				<input type="submit" name="btn-seller-contact" value="Save">
				</div>
			</form>
			</div>
</body>
</html>