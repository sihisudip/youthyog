package com.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Products {
	
	@Id
	private String id;
	private String seller_id;
	private String upload_date;
	private String product_name;
	private int total_qty;
	private double cost_price;
	private double selling_price;
	private String product_description;
	private double discount;
	private int sold_qty;
	private boolean availability;
	private String images;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSeller_id() {
		return seller_id;
	}
	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}
	public String getUpload_date() {
		return upload_date;
	}
	public void setUpload_date(String upload_date) {
		this.upload_date = upload_date;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getTotal_qty() {
		return total_qty;
	}
	public void setTotal_qty(int total_qty) {
		this.total_qty = total_qty;
	}
	public double getCost_price() {
		return cost_price;
	}
	public void setCost_price(double cost_price) {
		this.cost_price = cost_price;
	}
	public double getSelling_price() {
		return selling_price;
	}
	public void setSelling_price(double selling_price) {
		this.selling_price = selling_price;
	}
	public String getProduct_description() {
		return product_description;
	}
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public int getSold_qty() {
		return sold_qty;
	}
	public void setSold_qty(int sold_qty) {
		this.sold_qty = sold_qty;
	}
	public boolean isAvailability() {
		return availability;
	}
	public void setAvailability(boolean availability) {
		this.availability = availability;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	@Override
	public String toString() {
		return "Products [id=" + id + ", seller_id=" + seller_id + ", upload_date=" + upload_date + ", product_name="
				+ product_name + ", total_qty=" + total_qty + ", cost=" + cost_price + ", price=" + selling_price
				+ ", product_description=" + product_description + ", discount=" + discount + ", sold_qty=" + sold_qty
				+ ", availability=" + availability + ", images=" + images + "]";
	}
	
	
	
	
	
}
