package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Logout() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	HttpSession session=request.getSession();
		 	
		 	if(request.getParameter("sid")!=null) {
	        session.removeAttribute("email");
	        session.invalidate();
	        response.sendRedirect("login.jsp");
		 	}
		 	
		 	
		 	if(request.getParameter("cid")!=null) {
		 		session.removeAttribute("cus_email");
		        session.invalidate();
		        response.sendRedirect("index.jsp");
		 	}
		
	}
}
