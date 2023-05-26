
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


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
  margin-top: 80px;
  margin-right: 10px;
}

.logout_button a {
  display: inline-block;
  padding: 10px 20px;
  background-color: Orange;
  color: orange;
  border-radius: 10px;
  transition: all 0.3s ease;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.logout_button a:hover {
  transform: scale(1.05);
  background-color: #e34439;
  box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
}

		

/* CSS for form container */
.form-container {
  max-width: 500px;
  margin-top: 10px;
  background-color: rgba(18, 16, 16, 0.8);
  padding: 20px;
  border-radius: 5px;
}

.form-container label {
  display: block;
  margin-bottom: 10px;
  font-weight: bold;
  color: Orange;
}

.form-container input[type="text"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.form-container input[type="submit"] {
  background-color: #000;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.form-container input[type="submit"]:hover {
  background-color: #555;
}

/* Responsive CSS for form container and elements */
@media (max-width: 768px) {
  .form-container {
    max-width: 100%;
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
    
    <form action="update" method="post" class="form">
      <div class="form-container margin-inline">
        <%
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
      %>
      <div class="container">
        <div class="form-container">
          <form action="update" method="post">
            <input type="hidden" name="userid" value="<%=id%>">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="<%=name%>"><br>
            <label for="phone">Phone number:</label>
            <input type="text" id="phone" name="phone" value="<%=phone%>"><br>
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" value="<%=email%>"><br>
            <label for="uname">Username:</label>
            <input type="text" id="uname" name="uname" value="<%=username%>" readonly><br>
            <label for="pass">Password:</label>
            <input type="text" id="pass" name="pass" value="<%=password%>"><br>
          
            <input type="submit" name="submit" value="Update"><br>
          </form>
        </div>
      </div>
      </div>
    </form>
    <my-footer></my-footer>
  </body>
</html>
