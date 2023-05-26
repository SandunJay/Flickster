package com.stream;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//Sends data to DAO associated with register controller 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		RequestDispatcher dis = null;
		
//		register method in user DAO is called 
		isTrue = UserDBUtil.register(name, email, phone, username, password);
		
		if (isTrue== true) {
			dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			dis = request.getRequestDispatcher("unSuccess.jsp");
			dis.forward(request, response);
		}
	}

}
