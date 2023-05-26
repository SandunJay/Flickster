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
      /* Center the content */
      .success-container {
        text-align: center;
      }

      .success-container h2 {
        font-size: 24px;
        margin-bottom: 10px;
      }

      .success-container p {
        font-size: 18px;
        color:red;
      }

      .success-container button {
      	display:flex;
      	justify-content:center;
      	align-items:center;
        padding: 10px 20px;
        background-color: orange;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
      }

      .success-container button:hover {
        background-color: #e34439;
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
    <div class="success-container">
      <h2>Success</h2>
      <p>Click here to redirect to the login page</p>
      <a href="login.jsp">
        <button>Click here</button>
      </a>
    </div>
    <my-footer></my-footer>
  </body>
</html>
