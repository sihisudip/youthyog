package com.service;

import com.bean.Customer;
import com.bean.Seller;
import com.bean.Customer;
import com.dao.CustomerDao;
import com.dao.SellerDao;
import com.dao.CustomerDao;

public class CustomerService {
	public boolean customer_signup(Customer c1) {
		CustomerDao sd1, sd2;
		Customer c2;
		String customer_email = c1.getCustomer_email();
		sd1 = new CustomerDao();
		c2 = sd1.fetch_customer(customer_email);
		if (c2 != null) {
			return false;
		}

		if (customer_email.isEmpty()) {
			return false;
		}
		if (c1.getPassword().isEmpty()) {
			return false;
		}

		sd2 = new CustomerDao();
		sd2.insert_customer(c1);
		return true;
	}

	public boolean validation(String email, String pass) {
		Customer cus;
		CustomerDao cd = new CustomerDao();
		cus = cd.fetch_customer(email);
		if (cus == null) {
			return false;
		}
		if (!pass.equals(cus.getPassword())) {
			return false;
		}

		return pass.equals(cus.getPassword());
	}
	
	
	public boolean reset_pass(String old_pass, String new_pass,String confirm_pass, String cus_email) {
		CustomerDao cd1,cd2;
		cd1=new CustomerDao();
		Customer cus=cd1.fetch_customer(cus_email);
		String pre_pass=cus.getPassword();
		String cid=cus.getId();
		
		if(!pre_pass.equals(old_pass)) {
			return false;
		}
		if(!new_pass.equals(confirm_pass)) {
			return false;
		}
		
		cd1.customer_reset_pass(new_pass,cid);
		return true;
	}
	
	public boolean customer_reset(Customer c1) {
		CustomerDao cd1, cd2;
		Customer c2;
		String cus_email=c1.getCustomer_email();
		
		if (cus_email.isEmpty()) {
			return false;
		}
		cd2 = new CustomerDao();
		cd2.reset_customer_contact(c1);
		return true;
	}
}
