   <%

      session.invalidate();
   %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
      integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="shortcut icon" href="./assets/Flickster.ico" type="image/x-icon" />
    <link rel="stylesheet" href="assets/styles.css" />
    <link rel="stylesheet" href="assets/components.css" />
    <link rel="stylesheet" href="assets/logout.css" />

	<script type="module" src="assets/footer.js"></script>
    <title>Flickster Clone</title>
  </head>

  <body>
    <nav class="nav nav-1">
      <a href="index.jsp">
        <img class="logo" src="img/logo.png" alt="" />
      </a>
      <a href="login.jsp" class="btn btn-signin">Sign In</a>
    </nav>

    <section class="redirected">
      <div class="logout-container margin-inline">
        <h1 class="text-black margin-bottom-1">Leaving So Soon</h1>
        <p class="text-black">
          Just so you know, you don’t always need to sign out of Flickster. It’s only necessary if you’re on a shared or public computer. <br />
          <br />
          You’ll be redirected to Flickster.com in 30 seconds.
        </p>

        <a href="index.jsp" class="btn btn-gonow margin-top-2 margin-bottom">Go Now</a>
      </div>
    </section>
	<my-footer></my-footer>
  </body>
</html>
