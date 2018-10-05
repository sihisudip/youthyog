package com.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import com.bean.Customer;

public class CustomerDao {
	SessionFactory sessionFactory;
	Session session;
	
	public void insert_customer(Customer c){
	    
		
	    Configuration con = new Configuration().configure().addAnnotatedClass(Customer.class);
	    ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();

	    sessionFactory = con.buildSessionFactory(sr); 
	    
	    session=sessionFactory.openSession();
	    session.beginTransaction();
	    session.save(c);
	    session.getTransaction().commit();
	    session.close();
	    
	}

	public Customer fetch_customer(String customer_mail){
		
	    Configuration con = new Configuration().configure().addAnnotatedClass(Customer.class);
	    ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
	    sessionFactory = con.buildSessionFactory(sr); 
	    
	    session=sessionFactory.openSession();
	    session.beginTransaction();
	    //mem=(Customer)session.get(Customer.class, email);
	    Query q2=session.createQuery("from Customer where customer_email= :mail");
	    q2.setParameter("mail", customer_mail);
	    
	    Customer cus=(Customer)q2.uniqueResult();
	    System.out.println(cus);
	    
	    session.getTransaction().commit();
	    session.close();
	    return cus;
	}
	
	public void customer_reset_pass(String password, String cid){
		 Configuration con = new Configuration().configure().addAnnotatedClass(Customer.class);
		    ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();

		    sessionFactory = con.buildSessionFactory(sr); 
		    
		    session=sessionFactory.openSession();
		    session.beginTransaction();
		    Customer s=session.load(Customer.class, cid);
		    s.setPassword(password);
		    session.getTransaction().commit();
		    session.close();
		
	}
	
	public void reset_customer_contact(Customer c) {
		Customer c2;
		String cus_mail=c.getCustomer_email();
		CustomerDao cd=new CustomerDao();
		
		String id=cd.fetch_customer(cus_mail).getId();
		String customer_name=c.getCustomer_name();
		String mobile=c.getCustomer_mobile();
		String dob=c.getCus_dob();
	
		
		Configuration con = new Configuration().configure().addAnnotatedClass(Customer.class);
	    ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
	    sessionFactory = con.buildSessionFactory(sr);
	    
	    session=sessionFactory.openSession();
	    session.beginTransaction();
	    
	   
	    c2=(Customer)session.load(Customer.class, id);
	    
	    c2.setCus_dob(dob);
	    c2.setCustomer_email(cus_mail);
	    c2.setCustomer_mobile(mobile);
	    c2.setCustomer_name(customer_name);
	    
	    session.getTransaction().commit();
	    session.close();	
	}
}
