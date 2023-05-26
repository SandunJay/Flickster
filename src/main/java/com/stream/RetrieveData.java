package com.stream;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UpdateUser
 */
public class RetrieveData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String argument = request.getParameter("argumentName");
        // Use the argument as needed in the second servlet
        
        if(argument!= null) {
			List<User> userDetails = UserDBUtil.fetchUser(argument);
			request.setAttribute("userDetails", userDetails);
			

			 HttpSession session = request.getSession();
			 session.setAttribute("userName",argument);
			 
			RequestDispatcher dis = request.getRequestDispatcher("userAccount.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("unSuccess.jsp");
			dis.forward(request, response);
		}
	
	}
	

}
