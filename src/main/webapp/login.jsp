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
  </head>

  <body>
    <nav class="nav nav-2">
      <a href="home_id.html">
        <img class="logo-center" src="img/logo.png" alt="" />
      </a>
    </nav>

    <form action="login" method="post" class="login">
      <div class="login-container margin-inline">
        <h1 class="text-white margin-bottom-1">Login</h1>
        <div class="login-form">
          <!-- Email -->
          <div class="input">
            <input class="input-field" type="text" name="uid"id="username" placeholder="username" pattern="[A-Za-z0-9._-]{5,}$" autocomplete="off" required />

            <label for="username" class="input-label label-size text-gray">Username</label>

            <p class="text-error">Please enter a valid username.</p>
          </div>

          <!-- Password -->
          <div class="input margin-top">
            <input class="input-field" type="password" name ="pass" id="password" placeholder="password" pattern="[A-Za-z 0-9_+-]{8,}" autocomplete="off" required />

            <label for="password" class="input-label label-size text-gray">Password</label>

            <p class="text-error">Password should be between 8 and 15 characters</p>
          </div>
        </div>

        <button type="submit" class="btn-login margin-top margin-inline">Login</button>

        <div class="remember margin-top">
          <div class="remember-me">
            <input class="remember-input" type="checkbox" name="" id="remember" />
            <p class="text-terms">Terms and conditions</p>
          </div>
          <p class="text-underline text-underline-1">Forgot password?</p>
        </div>

        <div class="google margin-top-2">
          <p class="text-gray margin-bottom-1">New to Fickster? <a href="register.jsp" class="text-white text-underline text-underline-2">Register</a></p>
        </div>
      </div>
    </form>
    
    
    <footer class="footer footer-black">
      <div class="footer-container margin-inline">
        <p class="text-gray">
          Questions? <br />
          Call 007-803-321-2130
        </p>
        <div class="links">
          <ul class="">
            <li><a class="text-terms text-underline" href="">FAQ</a></li>
            <li><a class="text-terms text-underline" href="">Cookie Preferences</a></li>
          </ul>

          <ul>
            <li><a class="text-terms text-underline" href="">Help Center</a></li>
            <li><a class="text-terms text-underline" href="">Corporate Information</a></li>
          </ul>

          <a class="text-terms text-underline" href="">Terms of Use</a>

          <a class="text-terms text-underline" href="">Privacy</a>
        </div>

        <div class="language">
          <select class="language-select" onchange="location=this.value;">
            <option value="login_en.html">English</option>
            <option value="bahasa" selected>Bahasa Indonesia</option>
          </select>
          <div class="language-icon">
            <i class="fas fa-globe globe"></i>
            <i class="fas fa-chevron-down chevron"></i>
          </div>
        </div>
      </div>
    </footer>
  </body>
</html>
