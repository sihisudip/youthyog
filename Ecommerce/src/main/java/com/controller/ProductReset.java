package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Products;
import com.dao.SellerDao;

public class ProductReset extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductReset() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action=request.getParameter("action");
		if (action.equals("delete")) {

			String pid = request.getParameter("pid");

			System.out.println(pid);

			SellerDao sd = new SellerDao();
			sd.delete_product(pid);
			response.sendRedirect("previous_uploaded_pro.jsp");
		} else {
			System.out.println("else");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getParameter("btn_pro_upload") != null) {

			String product_name = request.getParameter("product_name");
			double cost_price = Double.parseDouble(request.getParameter("cost_price"));
			double selling_price = Double.parseDouble(request.getParameter("selling_price"));
			double discount = Double.parseDouble(request.getParameter("product_dis"));
			String product_des = request.getParameter("product_des");
			String images = request.getParameter("product_img");
			String pid = request.getParameter("pid");
			
			Products pro = new Products();
			
			pro.setProduct_description(product_des);
			pro.setCost_price(cost_price);
			pro.setSelling_price(selling_price);
			pro.setProduct_name(product_name);
			pro.setDiscount(discount);
			// pro.setImages(images);

			SellerDao sd = new SellerDao();
			sd.reset_product_details(pro, pid);
			response.sendRedirect("previous_uploaded_pro.jsp");

		}

	}

}
