<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.service.ServiceRegistry"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="com.bean.Products"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
</head>
<body>
<%
String pro_name=request.getParameter("pro_name");

Session session2;
Configuration con = new Configuration().configure().addAnnotatedClass(Products.class);
ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();

SessionFactory sessionFactory = con.buildSessionFactory(sr); 

session2=sessionFactory.openSession();
session2.beginTransaction();

Query q=session2.createQuery("from Products where product_name like :pname");
q.setParameter("pname", "%"+pro_name+"%");
List<Products> pro=q.list();

for(Products p:pro){
	System.out.println(p);
}
session2.getTransaction().commit();
session2.close();

response.sendRedirect("search_page.jsp");

%>
</body>
</html>