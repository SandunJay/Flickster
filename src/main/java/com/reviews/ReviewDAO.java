package com.reviews;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

public class ReviewDAO {
    private Connection connection;
    
    public ReviewDAO() {
        this.connection = connection;
    }
    
    public boolean addReview(String movie, String review, int rating, int userId) {
        String query = "INSERT INTO reviews ( reviewedDate, movie, review, rating, userID) " +
                       "VALUES ( ?, ?, ?, ?)";
        
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            
            statement.setDate(1, new java.sql.Date(new Date().getTime()));
            statement.setString(2, movie);
            statement.setString(3, review);
            statement.setInt(4, rating);
            statement.setInt(5, userId);
            
            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
