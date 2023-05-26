<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="ISO-8859-1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" 
    	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" 
    	crossorigin="anonymous" referrerpolicy="no-referrer"
    />
    <link rel="shortcut icon" href="./assets/netflix.ico" type="image/x-icon" />
    <link rel="stylesheet" href="assets/styles.css" />
    <link rel="stylesheet" href="assets/components.css" />
    <link rel="stylesheet" href="assets/login.css" />
    
	<script type="module" src="assets/footer.js"></script>

    <title>Flickster</title>
  </head>

  <body>    
    <nav class="nav nav-2">
      <a href="index.jsp">
        <img class="logo-center" src="img/logo.png" alt="" />
      </a>
    </nav>

    <form action="register" method="post" class="login">
      <div class="login-container margin-inline">
        <h1 class="text-white margin-bottom-1">Sign Up</h1>
        <div class="login-form">
        <!-- Name -->
        <div class="input margin-top">
            <input class="input-field" type="text" id="name" name="name" placeholder="name"  autocomplete="off" required />

            <label for="name" class="input-label label-size text-gray">Name</label>

            <p class="text-error">Please enter a  name.</p>
          </div>
          <!-- Username -->
          <div class="input margin-top">
            <input class="input-field" type="text" id="username" name="uid" placeholder="username"  pattern="[A-Za-z 0-9_+-]{8,}$"autocomplete="off" required />

            <label for="username" class="input-label label-size text-gray">Username</label>

            <p class="text-error">Please enter a valid username.</p>
          </div>
          <!-- Email -->
          <div class="input margin-top">
            <input class="input-field" type="text" id="email" name="email" placeholder="email"  pattern="[A-Za-z0-9._-]+@[A-Za-z]+\.[a-z]{2,}|\d{11,13}$" autocomplete="off" required />

            <label for="email" class="input-label label-size text-gray">Email</label>

            <p class="text-error">Please enter a valid Email.</p>
          </div>
          <!-- Phone -->
          <div class="input margin-top">
            <input class="input-field" type="text" id="phone" name="phone" placeholder="phone"  autocomplete="off" required />

            <label for="phone" class="input-label label-size text-gray">Phone number</label>

            <p class="text-error">Please enter a valid phone number.</p>
          </div>
          <!-- Password -->
          <div class="input margin-top">
            <input class="input-field" type="password" id="password" name="pass" placeholder="password"  pattern="[A-Za-z 0-9_+-]{8,}" autocomplete="off" required />

            <label for="password" class="input-label label-size text-gray">Enter your password</label>

            <p class="text-error">Password should be between 8 and 60 characters</p>
          </div>
          <div class="input margin-top">
            <input class="input-field" type="password" id="password" placeholder="password"  autocomplete="off" required />

            <label for="password" class="input-label label-size text-gray">Re enter your password</label>

            <p class="text-error">Password should be between 8 and 60 characters</p>
          </div>
        </div>

        <button type="submit" class="btn-login margin-inline margin-top" name="submit" value="Login">Sign Up</button>

        <div class="remember margin-top">
          <p class="text-underline text-underline-1">Need help?</p>
        </div>

        <div class="google margin-top-2">
          <p class="text-gray margin-bottom-1">Already a member? <a href="login.jsp" class="text-white text-underline text-underline-2">Sign up now.</a></p>
          <p class="text-terms">This page is protected by Google reCAPTCHA to ensure you're not a bot. <span class="text-terms-1 text-underline">Learn more</span></p>
        </div>
      </div>
    </form>
	<my-footer></my-footer>
  </body>
</html>
