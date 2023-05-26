package com.reviews;

public class Review {
	private int reviewID;
	private int Date;
	private String movie;
	private String review;
	private int rating;
	private int userID;
	public Review(int reviewID, int date, String movie, String review, int rating, int userID) {
		super();
		this.reviewID = reviewID;
		Date = date;
		this.movie = movie;
		this.review = review;
		this.rating = rating;
		this.userID = userID;
	}
	public int getReviewID() {
		return reviewID;
	}
	public void setReviewID(int reviewID) {
		this.reviewID = reviewID;
	}
	public int getDate() {
		return Date;
	}
	public void setDate(int date) {
		Date = date;
	}
	public String getMovie() {
		return movie;
	}
	public void setMovie(String movie) {
		this.movie = movie;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	
	

}
