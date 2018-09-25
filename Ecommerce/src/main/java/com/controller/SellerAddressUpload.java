package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Seller;
import com.bean.SellerAddress;
import com.dao.SellerDao;


public class SellerAddressUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SellerAddressUpload() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		
		String sid=(String)session.getAttribute("sid");
		String seller_add=request.getParameter("address");
		String city=request.getParameter("city");
		int pin=Integer.parseInt(request.getParameter("pin"));
		String landmark=request.getParameter("landmark");
		
		
		SellerAddress  sa=new SellerAddress();
		
		sa.setAddress(seller_add);
		sa.setCity(city);
		sa.setPincode(pin);
		sa.setLandmark(landmark);
		sa.setSid(sid);
		
		SellerDao ss=new SellerDao();
		
		ss.address_upload(sa);
		response.sendRedirect("edit_seller_profile.jsp");
		
	}

}
