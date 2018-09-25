package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Seller;
import com.dao.SellerDao;
import com.service.SellerService;

public class ResetSeller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ResetSeller() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		
		if(request.getParameter("btn-seller-contact")!=null) {
			
			String seller_name=request.getParameter("seller_name");
			String seller_email=request.getParameter("seller_email");
			String mobile=request.getParameter("phone");
			String dob=request.getParameter("dob");
			String shop_name=request.getParameter("shop_name");
			String pro_cat=request.getParameter("pro_cat");
			
			
			Seller s=new Seller();
			
			s.setSeller_name(seller_name);
			s.setSeller_email(seller_email);
			s.setMobile(mobile);
			s.setDob(dob);
			s.setShop_name(shop_name);
			s.setProduct_cat(pro_cat);
			
			SellerService ss=new SellerService();
			
			boolean reset_con=ss.seller_reset(s); 
			
			if(reset_con) {
				response.sendRedirect("edit_seller_profile.jsp");
			}
		}
		
		if(request.getParameter("btn-seller-pass-reset")!=null) {
			String old_pass=request.getParameter("old_pass");
			String new_pass=request.getParameter("new_pass");
			String confirm_pass=request.getParameter("confirm_pass");
			
			
			String email=(String)session.getAttribute("email");
			
			SellerService ss=new SellerService();
			boolean pass_con=ss.reset_pass(old_pass, new_pass,confirm_pass, email);
			if(pass_con) {
				response.sendRedirect("edit_seller_profile.jsp");
			}
			else {
				response.sendRedirect("seller_pass_reset.jsp");
			}
			
		}
		
		
	}

}
