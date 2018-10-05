package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import com.bean.Products;

public class SearchDao {
	
	public List<Products> search_producrs(String pro_name) {
		
		Session session2;
		Configuration con = new Configuration().configure().addAnnotatedClass(Products.class);
		ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();

		SessionFactory sessionFactory = con.buildSessionFactory(sr); 

		session2=sessionFactory.openSession();
		session2.beginTransaction();

		Query q=session2.createQuery("from Products where product_name like :pname");
		q.setParameter("pname", "%"+pro_name+"%");
		List<Products> pro=q.list();

		session2.getTransaction().commit();
		session2.close();
		return pro;
		
	}
	
	
	
}
