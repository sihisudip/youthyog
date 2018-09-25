package com.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Seller {
	@Id
	private String id;
	private String reg_date_time;
	private String login_date_time;
	private String seller_name;
	private String seller_email;
	private String mobile;
	private String pass;
	private String dob;
	private String product_cat;
	private String shop_name;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReg_date_time() {
		return reg_date_time;
	}
	public void setReg_date_time(String reg_date_time) {
		this.reg_date_time = reg_date_time;
	}
	public String getLogin_date_time() {
		return login_date_time;
	}
	public void setLogin_date_time(String login_date_time) {
		this.login_date_time = login_date_time;
	}
	public String getSeller_name() {
		return seller_name;
	}
	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}
	public String getSeller_email() {
		return seller_email;
	}
	public void setSeller_email(String seller_email) {
		this.seller_email = seller_email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getProduct_cat() {
		return product_cat;
	}
	public void setProduct_cat(String product_cat) {
		this.product_cat = product_cat;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	@Override
	public String toString() {
		return "Seller [id=" + id + ", reg_date_time=" + reg_date_time + ", login_date_time=" + login_date_time
				+ ", seller_name=" + seller_name + ", seller_email=" + seller_email + ", mobile=" + mobile + ", pass="
				+ pass + ", dob=" + dob + ", product_cat=" + product_cat + ", shop_name=" + shop_name + "]";
	}
	
}
