package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import com.bean.Products;
import com.bean.Seller;
import com.bean.SellerAddress;

public class SellerDao {
	
	SessionFactory sessionFactory;
	Session session;
public void insert_seller(Seller s){
    
    Configuration con = new Configuration().configure().addAnnotatedClass(Seller.class);
    ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();

    sessionFactory = con.buildSessionFactory(sr); 
    
    session=sessionFactory.openSession();
    session.beginTransaction();
    session.save(s);
    session.getTransaction().commit();
    session.close();

}

public Seller fetch_seller(String seller_mail){
	
    Configuration con = new Configuration().configure().addAnnotatedClass(Seller.class);
    ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
    sessionFactory = con.buildSessionFactory(sr); 
    
    session=sessionFactory.openSession();
    session.beginTransaction();
    //mem=(Seller)session.get(Seller.class, email);
    Query q=session.createQuery("from Seller where seller_email= :mail");
    q.setParameter("mail", seller_mail);
    
    Seller sel=(Seller)q.uniqueResult();
    System.out.println(sel);
    
    session.getTransaction().commit();
    session.close();
    return sel;
}

public void insert_product(Products p){
    
    Configuration con = new Configuration().configure().addAnnotatedClass(Products.class);
    ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();

    sessionFactory = con.buildSessionFactory(sr); 
    
    session=sessionFactory.openSession();
    session.beginTransaction();
    session.save(p);
    System.out.println(p);
    session.getTransaction().commit();
    session.close();

}	
	
public List<Products> get_all_product(String sid) {
		
	Configuration con = new Configuration().configure().addAnnotatedClass(Products.class);
    ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
    sessionFactory = con.buildSessionFactory(sr); 
    
    session=sessionFactory.openSession();
    session.beginTransaction();
    //mem=(Seller)session.get(Seller.class, email);
    Query q=session.createQuery("from Products where seller_id= :sid");
    q.setParameter("sid", sid);
    List <Products> pro=q.list();
/*    for(Products p:pro) {
    	System.out.println(p);
    }*/
    
    session.getTransaction().commit();
    session.close();
    return pro;

}

public void reset_seller_contact(Seller s) {
	Seller s2;
	String seller_mail=s.getSeller_email();
	SellerDao sd=new SellerDao();
	String id=sd.fetch_seller(seller_mail).getId();
	
	String seller_name=s.getSeller_name();
	String mobile=s.getMobile();
	String dob=s.getDob();
	String shop_name=s.getShop_name();
	String pro_cat=s.getProduct_cat();
	
	Configuration con = new Configuration().configure().addAnnotatedClass(Seller.class);
    ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
    sessionFactory = con.buildSessionFactory(sr);
    
    session=sessionFactory.openSession();
    session.beginTransaction();
    
   
    s2=(Seller)session.load(Seller.class, id);
    
    s2.setSeller_name(seller_name);
    s2.setSeller_email(seller_mail);
    s2.setMobile(mobile);
    s2.setDob(dob);
    s2.setShop_name(shop_name);
    s2.setProduct_cat(pro_cat);
    
    session.getTransaction().commit();
    session.close();	
}


public void seller_reset_pass(String pass, String sid){
    
    Configuration con = new Configuration().configure().addAnnotatedClass(Seller.class);
    ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();

    sessionFactory = con.buildSessionFactory(sr); 
    
    session=sessionFactory.openSession();
    session.beginTransaction();
    Seller s=session.load(Seller.class, sid);
    s.setPass(pass);
    session.getTransaction().commit();
    session.close();

}

public void address_upload(SellerAddress sa){
    
    Configuration con = new Configuration().configure().addAnnotatedClass(SellerAddress.class);
    ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();

    sessionFactory = con.buildSessionFactory(sr); 
    
    session=sessionFactory.openSession();
    session.beginTransaction();
    session.save(sa);
    session.getTransaction().commit();
    session.close();

}

public void delete_product(String pid){
    
    Configuration con = new Configuration().configure().addAnnotatedClass(Products.class);
    ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();

    sessionFactory = con.buildSessionFactory(sr); 
    
    session=sessionFactory.openSession();
    session.beginTransaction();
    Query q=session.createQuery("delete from Products p where p.id= :pid");
    q.setParameter("pid", pid);
    q.executeUpdate();
    
    
    session.getTransaction().commit();
    session.close();

}

public Products get_product(String pid) {
	
	Configuration con = new Configuration().configure().addAnnotatedClass(Products.class);
    ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
    sessionFactory = con.buildSessionFactory(sr); 
    
    session=sessionFactory.openSession();
    session.beginTransaction();
    Query q=session.createQuery("from Products where id= :pid");
    q.setParameter("pid", pid);
    Products pro=(Products)q.uniqueResult();
    session.getTransaction().commit();
    session.close();
    return pro;

}


public void reset_product_details(Products p, String pid) {
Products p2;


String product_name=p.getProduct_name();
double cost_price=p.getCost_price();
double selling_price=p.getSelling_price();
double discount=p.getDiscount();
String product_des=p.getProduct_description();
String images=p.getImages();


Configuration con = new Configuration().configure().addAnnotatedClass(Products.class);
ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
sessionFactory = con.buildSessionFactory(sr);

session=sessionFactory.openSession();
session.beginTransaction();


p2=(Products)session.load(Products.class, pid);

p2.setProduct_name(product_name);
p2.setCost_price(cost_price);
p2.setSelling_price(selling_price);
p2.setProduct_description(product_des);
//p2.setImages(images);

session.getTransaction().commit();
session.close();	
}

}
