package com.reviews;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stream.User;

public class MovieReviewServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
		        // Retrieve the form data
		        String movie = request.getParameter("movie");
		        String review = request.getParameter("review");
		        int rating = 0;
		        int userId = 0;

		        // Parse rating and userId values
		        try {
		            rating = Integer.parseInt(request.getParameter("rating"));
		            userId = Integer.parseInt(request.getParameter("id")); // Assuming 'id' is the user ID attribute
		        } catch (NumberFormatException e) {
		            // Handle invalid integer values
		            // You can redirect to an error page or display an error message
		            // For simplicity, let's redirect to an error page in this example
		            response.sendRedirect("reviewSuccess.jsp");
		            return;
		        }

		        // Create a ReviewDAO instance and add the review
		        ReviewDAO reviewDAO = new ReviewDAO();

		        // Check if the review was added successfully
		        if (reviewDAO.addReview(movie, review, rating, userId)) {
		            // Redirect to a success page
		            response.sendRedirect("unSuccess.jsp");
		        } else {
		            // Review addition failed
		            // You can redirect to an error page or display an error message
		            // For simplicity, let's redirect to an error page in this example
		            response.sendRedirect("reviewSuccess.jsp");
		        }
		    } catch (Exception e) {
		        // Handle any other exceptions that might occur
		        e.printStackTrace();
		        // You can redirect to an error page or display an error message
		        // For simplicity, let's redirect to an error page in this example
		        response.sendRedirect("error.jsp");
		    }
    }
    
    private Connection getConnection() throws SQLException {
        // Update with your actual database connectivity details
        String url = "jdbc:mysql://localhost:3306/flickster";
        String username = "root";
        String password = "Sandun@22612";
        
        return DriverManager.getConnection(url, username, password);
    }
}
