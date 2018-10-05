<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.service.ServiceRegistry"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="com.bean.Products"%>

<!doctype html>
<html lang="en">
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
<link href="cssFile/maincss.css" rel="stylesheet">
<link href="cssFile/carousel.css" rel="stylesheet">
</head>
<body>
	
	<%
		response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
		response.setHeader("pragma", "no-cache");
		response.setHeader("Expires", "0");

		if (session.getAttribute("cus_email") == null) {
			response.sendRedirect("index.jsp");
		}
	%>
	
	<%
String pro_name=request.getParameter("pro_name");

Session session2;
Configuration con = new Configuration().configure().addAnnotatedClass(Products.class);
ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();

SessionFactory sessionFactory = con.buildSessionFactory(sr); 

session2=sessionFactory.openSession();
session2.beginTransaction();

Query q=session2.createQuery("from Products");
//q.setParameter("pname", "%"+pro_name+"%");
List<Products> pro=q.list();

session2.getTransaction().commit();
session2.close();



%>
	
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<a class="navbar-brand" href="#">Website Logo</a>
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
					<span class="headermenu">

						<div class="dropdown">
							<button class="dropbtn">
								My Account 
							</button>
							<div class="dropdown-content">
								<a href="customer_account.jsp">Account Settings</a>
								<a href="#">Orders</a>
								<a href="Logout?cid=<%= session.getAttribute("cid")%>" >Logout</a>
									
							</div>
						</div>



					</span>
				</form>
				
				
				
				
				<form class="form-inline mt-2 mt-md-0">
					<span class="headermenu">Customer Supprot</span>
				</form>
				<form class="form-inline mt-2 mt-md-0">
					<span class="headermenu">Cart</span>
				</form>
				
			</div>
		</nav>
	</header>

	<main role="main"> <!-- Marketing messaging and featurettes
      ================================================== --> <!-- Wrap the rest of the page in another container to center all the content. -->


	<div class="header_searchmenu_allmenu">
	<form action="SearchProduct">
		<div class="searceare">
			<input class="form-control" type="text" placeholder="Search for products"
				aria-label="Search" name="pro_name">
				
		</div>
		<input type="submit" name="btn-search-product" value="Search">
	</form>
	</div>

	<div class="all_header_menu">
		<div class="dropdown">
			<span>Engineering</span>
			<div class="dropdown-content">
				<p>Hello World!</p>
				<p>Hello World!</p>
				<p>Hello World!</p>
				<p>Hello World!</p>
			</div>

		</div>
	</div>
	<div class="all_header_menu">Medical</div>
	<div class="all_header_menu">General</div>



	<!--- *******************  CAROSEL AREA START ************************--->

	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="images/1.jpg" alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/2.jpg" alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/1.jpg" alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<!---- CAROSEL AREA END ---> <!--- ************  FIRST ARE START OF HOME PAGE******************* ---->
	<div class="firstproductarea">
		<div class="areatitle">LATEST PRODUCT</div>
		<div class="row">
		
			<table>
			<tr>
			<%for(Products p:pro){ %>
			<td>
			<div class="col-6 col-md-2">
			<img src="<%= p.getImages() %>"><br>
			<span class="producttitle"><%= p.getProduct_name() %></span><br>
			<span class="productprice"><strong>Product Price-</strong>
						<%=p.getSelling_price() %>/- (<%=p.getDiscount() %>% Off)</span><br>
			<span class="addcart"><a href="cart.jsp?pid=<%= p.getId()%>">Add Cart</a></span>
			
			</div>
			</td>
			<%} %>
			</tr>
			</table>
			

		</div>
	</div>
	<!--- FIRTS AREA END OF HOME PAGE ---> <!--- ******************  SECOND AREA START OF HOME PAGE *******************----->

	<div class="secondproductarea">
		<div class="row">
			<div class="col-6 col-md-4">
				<img src="images/ins1.jpg">
			</div>
			<div class="col-6 col-md-4">
				<img src="images/ins2.jpg">
			</div>
			<div class="col-6 col-md-4">
				<img src="images/ins1.jpg">
			</div>
		</div>
	</div>
	<!---------- SECOND AREA END OF HOME PAGE ---------> <!---------- THIRD AREA START OF HOME PAGE -------->
	<div class="thirdproductarea">
		<div class="areatitle">Product Title</div>
		<div class="row">
			<div class="col-6 col-md-2">
				<img src="images/p2.jpg"><br>
				<center>
					<span class="addcart">Add Cart</span>
				</center>
			</div>
			<div class="col-6 col-md-2">
				<img src="images/p1.jpg"><br>
				<center>
					<span class="addcart">Add Cart</span>
				</center>
			</div>
			<div class="col-6 col-md-2">
				<img src="images/p3.jpg"><br>
				<center>
					<span class="addcart">Add Cart</span>
				</center>
			</div>
			<div class="col-6 col-md-2">
				<img src="images/p4.jpg"><br>
				<center>
					<span class="addcart">Add Cart</span>
				</center>
			</div>
			<div class="col-6 col-md-2">
				<img src="images/p3.jpg"><br>
				<center>
					<span class="addcart">Add Cart</span>
				</center>
			</div>
			<div class="col-6 col-md-2">
				<img src="images/p3.jpg"><br>
				<center>
					<span class="addcart">Add Cart</span>
				</center>
			</div>


		</div>
	</div>
	<!----------- THIRD ARE END OF HOME PAGE---------> <br>
	<!----- FOOTER AREA START------->
	<div class="all_footer_area">
		<div class="footer_first_section">
			About<br>About us<br>Contact us<br>Careers<br>Our
			Stories<br><br>
			<a href="seller_login.jsp">Seller Login</a>
		</div>
		<div class="footer_second_section">
			Help<br>Paymeny<br>Shipping<br>Cancelletion & return
		</div>
		<div class="footer_third_section">
			Ploicy<br>Return Ploicy<br>Terms & Condition<br> FAQ
		</div>
		<div class="footer_fourth_section">
			Social<br>Facebook<br>Twitter<br>Instagram
		</div>
		<div class="footer_fifth_section">
			Mail us <br> ecommerce@gmail.com
		</div>
		<div class="footer_six_section">
			Registered Office Address:<br>Kolkata
		</div>
	</div>




















	</div>

	<!-- FOOTER --> <footer class="container">
		<p class="float-right">
			<a href="#">Back to top</a>
		</p>
		<p>
			&copy; 2017-2018 Company, Inc. &middot; <a href="#">Privacy</a>
			&middot; <a href="#">Terms</a>
		</p>
	</footer> </main>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')
	</script>
	<script src="../../assets/js/vendor/popper.min.js"></script>
	<script src="../../dist/js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="../../assets/js/vendor/holder.min.js"></script>
</body>
</html>
