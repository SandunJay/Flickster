<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String username = (String) request.getAttribute("uname");

%>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="shortcut icon" href="./assets/netflix.ico" type="image/x-icon" />
    <link rel="stylesheet" href="assets/styles.css" />
    <link rel="stylesheet" href="assets/components.css" />
    <link rel="stylesheet" href="assets/login.css" />

    <title>Netflix Clone</title>
	<style>

	.logout_button {
  position: absolute;
  top: 0;
  right: 0;
  margin-top: 80px; /* Adjust as needed */
  margin-right: 10px; /* Adjust as needed */
}
	
	.form {
		position:relative;
  		display: grid;
  		top:50px;
  		min-height: 79vh;
  		place-content: center;
		}
	.form-container {
  		margin-block-end: 2rem;
  		padding: 3rem;
		max-width: 28rem;
  		border-radius: 0.4rem;
  		background: var(--color-bg);
		
		}
        /* CSS for the buttons */
        .update-button,
        .logout-button,
        .delete-button {
          background-color: #4CAF50; /* Green background color */
          border: none;
          color: white;
          padding: 10px 20px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 16px;
          margin: 4px 2px;
          cursor: pointer;
          border-radius: 4px;
        }
      
        /* Hover effect for the buttons */
        .update-button:hover,
        .logout-button:hover,
        .delete-button:hover {
          background-color: #45a049; /* Darker green background color on hover */
        }
      
        /* Box shadow for the div */
        .box {
          box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3); /* Box shadow with offset and blur */
        }
      
        /* Rounded image */
        .rounded-image {
          border-radius: 50%; /* Makes the image circular */
        }
      
        /* Custom paragraph styling */
        .custom-paragraph {
          font-family: Arial, sans-serif; /* Change the font family */
          font-size: 18px; /* Change the font size */
          font-weight: bold; /* Make the text bold */
        }
      
        /* Input field visualization */
        .form-input {
          padding: 10px;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
          font-size: 16px;
          outline: none;
        }
      
        /* Table styling */
        table {
          width: max-content;
          margin: 0 auto;
          border-collapse: collapse;
          border: 1px solid #ddd; /* Add border to the table */
          margin-bottom: 20px;
        }
      
        th, td {
          padding: 10px;
          text-align: left;
          border-bottom: 1px solid #ddd;
          color:#c2ae30;
        }
      
        th {
          background-color: #f2f2f2;
          font-weight: bold;
        }
      
        /* Responsive styles */
        @media only screen and (max-width: 600px) {
          /* Adjust font sizes for smaller screens */
          .update-button,
          .logout-button,
          .delete-button {
            font-size: 14px;
          }
      
          .custom-paragraph {
            font-size: 16px;
          }
      
          table {
            font-size: 14px;
          }
        }
      
        @media only screen and (max-width: 400px) {
          /* Adjust font sizes for even smaller screens */
          .update-button,
          .logout-button,
          .delete-button {
            font-size: 12px;
            padding: 8px 16px;
          }
      
          .custom-paragraph {
            font-size: 14px;
          }
      
          table {
            font-size: 12px;
          }
        }
      
      </style>
  <link rel="stylesheet" href="assets/header.css">
	<script type="module" src="assets/header.js"></script>
	<script type="module" src="assets/footer.js"></script>
  </head>

  <body>
    <my-header></my-header>
    <div class="logout_button">
       <a href="logout_en.jsp"><input type="button" name="logout" value="Logout" class="logout-button"></a>
    </div>
    
    <form action="login" method="post" class="form">
      <div class="form-container margin-inline">
        <div class="container">
            <table>
              <c:forEach var="use" items="${userDetails}">
                <c:set var="id" value="${use.id}" />
                <c:set var="name" value="${use.name}" />
                <c:set var="email" value="${use.email}" />
                <c:set var="phone" value="${use.phone}" />
                <c:set var="uname" value="${use.userName}" />
                <c:set var="pass" value="${use.password}" />
                <tr>
                  <th>Field</th>
                  <th>Value</th>
                </tr>
                <tr>
                  <td>User ID</td>
                  <td>${use.id}</td>
                </tr>
                <tr>
                  <td>User Name</td>
                  <td>${use.name}</td>
                </tr>
                <tr>
                  <td>User Email</td>
                  <td>${use.email}</td>
                </tr>
                <tr>
                  <td>User Phone</td>
                  <td>${use.phone}</td>
                </tr>
                <tr>
                  <td>User Name</td>
                  <td>${use.userName}</td>
                </tr>
                <tr>
                  <td>Password</td>
                  <td>${use.password}</td>
                </tr>
              </c:forEach>
            </table>
        
            <div class="button-container">
              <c:url value="updateUser.jsp" var="userUpdate">
                <c:param name="id" value="${id}" />
                <c:param name="name" value="${name}" />
                <c:param name="email" value="${email}" />
                <c:param name="phone" value="${phone}" />
                <c:param name="username" value="${uname}" />
                <c:param name="password" value="${pass}" />
              </c:url>
              <a href="${userUpdate}"><input type="button" name="update" value="Update My Data" class="update-button"></a>
        
        
              <c:url value="deleteUser.jsp" var="deleteUser">
                <c:param name="id" value="${id}" />
                <c:param name="name" value="${name}" />
                <c:param name="email" value="${email}" />
                <c:param name="phone" value="${phone}" />
                <c:param name="username" value="${uname}" />
                <c:param name="pass" value="${pass}" />
              </c:url>
              <a href="${deleteUser}"><input type="button" name="delete" value="Delete Account" class="delete-button"></a>
            </div>
          </div>
      </div>
    </form>
    <my-footer></my-footer>
  </body>
</html>
