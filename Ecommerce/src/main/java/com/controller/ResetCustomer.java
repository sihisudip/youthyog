package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.CustomerService;

public class ResetCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ResetCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session= request.getSession();
		
		if(request.getParameter("btn-customer-pass-reset")!=null) {
			String old_pass=request.getParameter("old_pass");
			String new_pass=request.getParameter("new_pass");
			String confirm_pass=request.getParameter("confirm_pass");
			
			
			String cus_email=(String)session.getAttribute("cus_email");
			
			CustomerService ss=new CustomerService();
			boolean pass_con=ss.reset_pass(old_pass, new_pass,confirm_pass, cus_email);
			if(pass_con) {
				response.sendRedirect("edit_seller_profile.jsp");
			}
			else {
				response.sendRedirect("seller_pass_reset.jsp");
			}
			
		}
		
		
		
		
	}

}
