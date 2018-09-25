package com.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import com.bean.Customer;
import com.bean.Seller;

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
	    //mem=(Seller)session.get(Seller.class, email);
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
	
	
}
