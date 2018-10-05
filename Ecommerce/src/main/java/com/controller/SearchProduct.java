package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Products;
import com.dao.SearchDao;

public class SearchProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public SearchProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		if(request.getParameter("btn-search-product")!=null) {
			
			String pro_name=request.getParameter("pro_name");
			if(pro_name==null || pro_name.equals("")) {
				response.sendRedirect("customer_home_page.jsp");
			}
			SearchDao sd=new SearchDao();
			List<Products>pro=sd.search_producrs(pro_name);
			if(pro==null) {
				response.sendRedirect("customer_home_page.jsp");
			}
			session.setAttribute("product", pro);
			response.sendRedirect("searched_products.jsp");
			
			
		}
		
		
	}

}
