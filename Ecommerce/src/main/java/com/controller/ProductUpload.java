package com.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Products;
import com.dao.SellerDao;


public class ProductUpload extends HttpServlet {
	 static final long serialVersionUID = 1L;
       
	 public ProductUpload() {
        super();
        
	 }

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		Date date=new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		HttpSession session= request.getSession();
		
		String seller_id=(String)session.getAttribute("sid");
		
		String upload_date=formatter.format(date);
		String product_name=request.getParameter("product_name");
		int total_qty;
		double cost_price=Double.parseDouble(request.getParameter("cost_price"));
		double selling_price=Double.parseDouble(request.getParameter("selling_price"));
		double discount=Double.parseDouble(request.getParameter("product_dis"));
		String product_des=request.getParameter("product_des");
		int sold_qty;
		
		//boolean availabality;
		String images=request.getParameter("product_img");
		System.out.println(images);
		
		long time= date.getTime();
        String str=Long.toString(time);
        String id=str+product_name.substring(0, 3);
				
        //*****************fileUpload****************
        
        
        
        
        
        Products pro=new Products();
        pro.setUpload_date(upload_date);
        pro.setId(id);
        pro.setSeller_id(seller_id);
        pro.setImages(images);
        pro.setProduct_description(product_des);
        pro.setCost_price(cost_price);
        pro.setSelling_price(selling_price);
        pro.setProduct_name(product_name);
        pro.setDiscount(discount);
        pro.setAvailability(true);
        
        SellerDao sd=new SellerDao();
        sd.insert_product(pro);
        
                
        session.setAttribute("conn", "Product Uploaded Successfully");
        
        response.sendRedirect("seller_profile.jsp");
        
	}

}
