package com.stream;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
//@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uid");
	    String password = request.getParameter("pass");
	    boolean isTrue;
	    
	    isTrue = UserDBUtil.validate(username, password);

	    if (isTrue== true) {
			List<User> userDetails = UserDBUtil.fetchUser(username);
			request.setAttribute("userDetails", userDetails);
		

			String argument = request.getParameter("uid");
	        request.setAttribute("uname", argument);
			
			RequestDispatcher dis = request.getRequestDispatcher("userHome.jsp");
			dis.forward(request, response);
	    } else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location ='login.jsp'");
			out.println("</script>");
		}

	}


}
