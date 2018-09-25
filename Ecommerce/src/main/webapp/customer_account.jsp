<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#header {
	text-align: center;
}
.textbox {display:none;}
</style>

<script type="text/javascript">

function disp_qa()
{
    document.getElementById("form_d").style.display="block";
    document.getElementById("form_da").style.display = "block";
    document.getElementById("form_sub").style.display="block";
    document.getElementById("form_can").style.display="block";
}



function invisible(){

	document.getElementById("pass_change").style.display="none";

}
</script>
</head>
<body>
	<a href="customer_home_page.jsp">Home</a>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div id="header">
		<a href="#">Contact Details</a>&emsp; <a href="javascript:void()"
			onclick="disp_qa()">Reset Password</a>&emsp;
			
	</div>
</body>
</html>