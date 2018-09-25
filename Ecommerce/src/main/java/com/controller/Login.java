package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Customer;
import com.bean.Seller;
import com.dao.CustomerDao;
import com.dao.SellerDao;
import com.service.CustomerService;
import com.service.SellerService;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Login() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (request.getParameter("btn-seller-login") != null) {
			String email = request.getParameter("email");
			String pass = request.getParameter("pass");
			
			SellerService ss=new SellerService();
			
			boolean log_con=ss.validation(email, pass);
			if(log_con==true){
	            HttpSession session=request.getSession();
	            session.setAttribute("email", email);
	            
	            SellerDao sd=new SellerDao();
	            Seller s=sd.fetch_seller(email);
	            String name=s.getSeller_name();
	            String sid=s.getId();
	            
	            session.setAttribute("sid", sid);
	            session.setAttribute("name", name);
	            response.sendRedirect("seller_profile.jsp");
	        }
	        else{
	            response.sendRedirect("login.jsp");
	        }
			

		}
		
		
		if (request.getParameter("btn-customer-login") != null) {
			String email = request.getParameter("cus_email");
			String pass = request.getParameter("cus_pass");
			
			CustomerService cs=new CustomerService();
			
			boolean log_con=cs.validation(email, pass);
			if(log_con==true){
	            HttpSession session=request.getSession();
	            session.setAttribute("cus_email", email);
	            
	            CustomerDao cd= new CustomerDao();
	            Customer cus=cd.fetch_customer(email);
	            String cus_name=cus.getCustomer_name();
	            String cid=cus.getId();
	            
	            session.setAttribute("cid", cid);
	            session.setAttribute("cus_name", cus_name);
	            response.sendRedirect("customer_home_page.jsp");
	        }
	        else{
	            response.sendRedirect("customer_login.jsp");
	        }
			

		}
	}

}
