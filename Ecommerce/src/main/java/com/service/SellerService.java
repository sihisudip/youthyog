package com.service;

import com.bean.Seller;
import com.bean.SellerAddress;
import com.dao.SellerDao;

public class SellerService {
	public boolean seller_signup(Seller s1) {
		SellerDao sd1, sd2;
		Seller s2;
		String seller_email = s1.getSeller_email();
		sd1 = new SellerDao();
		s2 = sd1.fetch_seller(seller_email);
		if (s2 != null) {
			return false;
		}

		if (seller_email.isEmpty()) {
			return false;
		}
		if (s1.getPass().isEmpty()) {
			return false;
		}

		sd2 = new SellerDao();
		sd2.insert_seller(s1);
		return true;
	}

	
	public boolean validation(String email, String pass) {
		Seller ss;
		SellerDao sd = new SellerDao();
		ss = sd.fetch_seller(email);
		if (ss == null) {
			return false;
		}
		if (!pass.equals(ss.getPass())) {
			return false;
		}

		return pass.equals(ss.getPass());
	}
	
	
	public boolean seller_reset(Seller s1) {
		SellerDao sd1, sd2;
		Seller s2;
		String seller_email = s1.getSeller_email();
		
		if (seller_email.isEmpty()) {
			return false;
		}
		sd2 = new SellerDao();
		sd2.reset_seller_contact(s1);
		return true;
	}
	
	
	public boolean reset_pass(String old_pass, String new_pass,String confirm_pass, String email) {
		SellerDao sd1, sd2;
		sd1=new SellerDao();
		Seller sel=sd1.fetch_seller(email);
		String pre_pass=sel.getPass();
		String sid=sel.getId();
		
		if(!pre_pass.equals(old_pass)) {
			return false;
		}
		if(!new_pass.equals(confirm_pass)) {
			return false;
		}
		
		sd1.seller_reset_pass(new_pass,sid);
		return true;
	}
	
	
	

}
