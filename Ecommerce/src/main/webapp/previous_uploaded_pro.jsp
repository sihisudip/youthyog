<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.dao.*"%>
<%@ page import="com.bean.*"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>  
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function confirmation() {

		var x = confirm('Do you want to delete?');
		if (x) {
			return true;
		} else
			return false;
	}
</script>
<style type="text/css">
#pro_details {
	text-align: center;
}
</style>
</head>
<body>
	<%
		response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
		response.setHeader("pragma", "no-cache");
		response.setHeader("Expires", "0");

		if (session.getAttribute("email") == null) {
			response.sendRedirect("login.jsp");
		}
	%>



	<h1>All previous Shop owner Product</h1>
	<br>
	<br>
	<br>

	<%
		SellerDao sd = new SellerDao();

		String sid = (String) session.getAttribute("sid");
		List<Products> pro = sd.get_all_product(sid);
		int i = 1;
	%>
	<table id="pro_details" cellpadding="15">
		<thead>
			<tr>
				<th>Serial No</th>
				<th>Product upload date:</th>
				<th>Image</th>
				<th>Product Name</th>
				<th>Product Price</th>
				<th>Product Discount</th>
				<th>Product Description</th>
				<th></th>
				<th></th>
			</tr>
		</thead>

		<tbody>
			<%
				for (Products p : pro) {
			%>
			<tr>
				<td><%=i%></td>
				<td><%=p.getUpload_date()%></td>
				<td><img src="<%=p.getImages()%>" width="200" height="100" /></td>
				<td><%=p.getProduct_name()%></td>
				<td><%=p.getSelling_price()%></td>
				<td><%=p.getDiscount()%>%</td>
				<td><%=p.getProduct_description()%></td>
				<td>
					<a href="ProductReset?pid=<%= p.getId()%>&action=delete" onclick="return confirm('Are yout want to delete?')" >Delete</a>
				</td>
				<td><a href="edit_product.jsp?pid=<%=p.getId()%>" >Edit</a></td>
			</tr>


			<%
				i++;
				}
			%>

		</tbody>


	</table>
	<br>



</body>
</html>