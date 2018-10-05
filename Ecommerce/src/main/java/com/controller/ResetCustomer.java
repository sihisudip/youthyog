package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Customer;
import com.service.CustomerService;
import com.service.SellerService;

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
			
			CustomerService cs=new CustomerService();
			boolean pass_con=cs.reset_pass(old_pass, new_pass,confirm_pass, cus_email);
			if(pass_con) {
				response.sendRedirect("customer_account.jsp");
			}
			else {
				response.sendRedirect("customer_pass_reset.jsp");
			}
			
		}
		
if(request.getParameter("btn-customer-contact")!=null) {
			
			String customer_name=request.getParameter("buyer_name");
			String cus_email=request.getParameter("buyer_email");
			String mobile=request.getParameter("cus_mobile");
			String dob=request.getParameter("dob");
			
			
			Customer cus=new Customer();
			
			cus.setCustomer_name(customer_name);
			cus.setCustomer_email(cus_email);
			cus.setCustomer_mobile(mobile);
			cus.setCus_dob(dob);
			
			
			CustomerService cs=new CustomerService();
			
			boolean reset_con=cs.customer_reset(cus); 
			
			if(reset_con) {
				response.sendRedirect("customer_account.jsp");
			}
		}
		
		
	}

}
