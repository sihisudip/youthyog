package com.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Customer;
import com.bean.Seller;
import com.dao.SellerDao;
import com.service.CustomerService;
import com.service.SellerService;


public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Signup() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Date date=new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		
		
		if(request.getParameter("btn-seller-signup")!=null) {
			
			String create_pass=request.getParameter("psw1");
			String confirm_pass=request.getParameter("psw2");
			
			if(!create_pass.equals(confirm_pass)) {
				response.sendRedirect("seller_signup.jsp");
			}
			
			
			String reg_date_time=formatter.format(date);
			String seller_name=request.getParameter("seller_name");
			String seller_email=request.getParameter("seller_email");
			String mobile=request.getParameter("phone");
			String dob=request.getParameter("dob");
			String shop_name=request.getParameter("shop_name");
			String pro_cat=request.getParameter("pro_cat");
            
            long time= date.getTime();
            String str=Long.toString(time);
            String id=str+seller_email.substring(0, 4);
            
            
			Seller s=new Seller();
			s.setId(id);
			s.setReg_date_time(reg_date_time);
			s.setSeller_email(seller_email);
			s.setMobile(mobile);
			s.setDob(dob);
			s.setShop_name(shop_name);
			s.setProduct_cat(pro_cat);
			s.setSeller_name(seller_name);
			s.setPass(create_pass);
			
			SellerService ss=new SellerService();
			
			boolean sel_con=ss.seller_signup(s);
			if (sel_con == true) {
				HttpSession session=request.getSession();
				SellerDao sd=new SellerDao();
				Seller sel=sd.fetch_seller(seller_email);
				session.setAttribute("sid", sel.getId());
				response.sendRedirect("seller_login.jsp");
			} else {
				System.out.println("Not inserted");
				request.setAttribute("error", "Something wrong..Please try again");
				response.sendRedirect("seller_signup.jsp");
			}
			

		}
		
		if(request.getParameter("btn-buyer-signup")!=null) {
		
			String buyer_name=request.getParameter("buyer_name");
			String buyer_email=request.getParameter("buyer_email");
			String buyer_dob=request.getParameter("dob");
			String buyer_mob=request.getParameter("cus_mobile");
			String pass=request.getParameter("psw1");
			String con_pass=request.getParameter("psw2");
			
			String reg_date_time=formatter.format(date);
			//String login_date_time=formatter.format(date);
			
			long time= date.getTime();
            String str=Long.toString(time);
            String id=str+buyer_email.substring(0, 4);
			
			Customer cus=new Customer();
			
			cus.setId(id);
			cus.setCustomer_name(buyer_name);
			cus.setCustomer_email(buyer_email);
			cus.setCustomer_mobile(buyer_mob);
			cus.setCus_dob(buyer_dob);
			//cus.setLogin_date_time(login_date_time);
			cus.setReg_date_time(reg_date_time);
			cus.setPassword(pass);
			
			CustomerService cs=new CustomerService();
			
			boolean cus_con=cs.customer_signup(cus);
			
			if (cus_con == true) {
				response.sendRedirect("customer_login.jsp");
			} else {
				request.setAttribute("error", "Something wrong..Please try again");
				response.sendRedirect("customer_signup.jsp");
			}
			
			
		}
		
		
		
	}

}
