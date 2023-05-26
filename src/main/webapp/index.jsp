<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="ISO-8859-1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
      integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="shortcut icon" href="./assets/netflix.ico" type="image/x-icon" />
    <link rel="stylesheet" href="assets/styles.css" />
    <link rel="stylesheet" href="assets/components.css" />
    <link rel="stylesheet" href="assets/home.css" />

    <title>Flickster Clone</title>
  </head>

  <body>
    <nav class="nav nav-4">
      <a href="index.html">
        <img class="logo" href="/img/logo.png" alt="" />
      </a>

      <div class="right">
        <div class="language">
          <select class="language-select top" onchange="location=this.value;">
            <option value="" selected>EN</option>
            <option value="home_id.html">ID</option>
          </select>
          <div class="language-icon top-icon">
            <i class="fas fa-chevron-down chevron chevron-top"></i>
          </div>
        </div>
        <a href="login.jsp" class="btn btn-signin">Sign In</a>
      </div>
    </nav>

    <header class="header">
      <div class="header-container margin-inline margin-top-1">
        <p class="text-white text-xl margin-bottom-1 text-center">Unlimited <span class="text-xl down">movies, TV shows, and more.</span></p>
        <p class="text-white text-md text-center">Watch anywhere. Cancel anytime.</p>
        <p class="text-white text-sm margin-top text-center">Ready to watch? Enter your email to create or restart your membership.</p>
        <form action="signup_password.html" class="input margin-top-1">
          <input class="input-field" type="email" id="email" placeholder="email" pattern="[A-Za-z0-9._-]+@[A-Za-z]+\.[a-z]{2,}$" autocomplete="off" required />

          <label for="email" class="input-label label-size">Email address</label>

          <p class="text-error">Please enter a valid email address</p>

          <button type="submit" class="btn-primary margin-top-1">
            Get Started
            <i class="fas fa-chevron-right margin-left"></i>
          </button>
        </form>
      </div>
    </header>

    <section class="text-white border-gray">
      <div class="features margin-inline">
        <div class="text-area">
          <p class="text-lg">Enjoy on your TV.</p>
          <p class="text-md-1">Watch on Smart TVs, Playstation, Xbox, Chromecast, Apple TV, Blu-ray players, and more.</p>
        </div>
        <div class="img-area">
          <img src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/tv.png" alt="" />
          <video class="video-1" autoplay playsinline loop>
            <source src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/video-tv-0819.m4v" type="video/mp4" />
          </video>
        </div>
      </div>
    </section>

    <section class="text-white border-gray">
      <div class="features margin-inline">
        <div class="text-area grid-reversed">
          <p class="text-lg">Download your shows to watch offline.</p>
          <p class="text-md-1">Save your favorites easily and always have something to watch.</p>
        </div>
        <div class="img-area">
          <img src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/mobile-0819.jpg" alt="" />
          <div class="download">
            <img src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/boxshot.png" alt="" />
            <div class="download-text">
              <span class="text-white-1">Stranger Things</span>
              <span class="text-blue">Downloading...</span>
            </div>
            <img src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/download-icon.gif" alt="" />
          </div>
        </div>
      </div>
    </section>

    <section class="text-white border-gray">
      <div class="features margin-inline">
        <div class="text-area">
          <p class="text-lg">Watch everywhere.</p>
          <p class="text-md-1">Stream unlimited movies and TV shows on your phone, tablet, laptop, and TV.</p>
        </div>
        <div class="img-area">
          <img class="devices" src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/device-pile-id.png" alt="" />
          <video class="video-2" autoplay playsinline loop>
            <source src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/video-devices-id.m4v" type="video/mp4" />
          </video>
        </div>
      </div>
    </section>

    <section class="text-white border-gray">
      <div class="features margin-inline">
        <div class="text-area grid-reversed">
          <p class="text-lg">Create profiles for kids.</p>
          <p class="text-md-1">Send kids on adventures with their favorite characters in a space made just for them—free with your membership.</p>
        </div>
        <div class="img-area">
          <img src="https://occ-0-6707-64.1.nflxso.net/dnm/api/v6/19OhWN2dO19C9txTON9tvTFtefw/AAAABfpnX3dbgjZ-Je8Ax3xn0kXehZm_5L6-xe6YSTq_ucht9TI5jwDMqusWZKNYT8DfGudD0_wWVVTFLiN2_kaQJumz2iivUWbIbAtF.png?r=11f" alt="" />
        </div>
      </div>
    </section>

    <section class="faq text-white border-gray">
      <p class="text-lg text-center">Frequently Asked Question</p>
      <ul class="faq-accordion margin-inline text-md">
        <li>
          <input class="faq-input" type="radio" name="faq" id="faq-1" />
          <label class="faq-label" for="faq-1">What is Flickster?<i class="fa fa-add"></i> </label>
          <div class="faq-content">
            <p>
              Flickster is a streaming service that offers a wide variety of award-winning TV shows, movies, anime, documentaries, and more on thousands of internet-connected devices. <br />
              <br />
              You can watch as much as you want, whenever you want without a single commercial – all for one low monthly price. There's always something new to discover and new TV shows and movies are added every week!
            </p>
          </div>
        </li>

        <li>
          <input class="faq-input" type="radio" name="faq" id="faq-2" />
          <label class="faq-label" for="faq-2">How much does Flickster cost?<i class="fa fa-add"></i></label>
          <div class="faq-content">
            <p>Watch Flickster on your smartphone, tablet, Smart TV, laptop, or streaming device, all for one fixed monthly fee. Plans range from IDR54,000 to IDR186,000 a month. No extra costs, no contracts.</p>
          </div>
        </li>

        <li>
          <input class="faq-input" type="radio" name="faq" id="faq-3" />
          <label class="faq-label" for="faq-3">Where can I watch?<i class="fa fa-add"></i></label>
          <div class="faq-content">
            <p>
              Watch anywhere, anytime. Sign in with your Flickster account to watch instantly on the web at netflix.com from your personal computer or on any internet-connected device that offers the Flickster app, including smart TVs,
              smartphones, tablets, streaming media players and game consoles. <br />
              <br />
              You can also download your favorite shows with the iOS, Android, or Windows 10 app. Use downloads to watch while you're on the go and without an internet connection. Take Flickster with you anywhere.
            </p>
          </div>
        </li>

        <li>
          <input class="faq-input" type="radio" name="faq" id="faq-4" />
          <label class="faq-label" for="faq-4">How do I cancel?<i class="fa fa-add"></i></label>
          <div class="faq-content">
            <p>Flickster is flexible. There are no pesky contracts and no commitments. You can easily cancel your account online in two clicks. There are no cancellation fees – start or stop your account anytime.</p>
          </div>
        </li>

        <li>
          <input class="faq-input" type="radio" name="faq" id="faq-5" />
          <label class="faq-label" for="faq-5">What can I watch on Flickster?<i class="fa fa-add"></i></label>
          <div class="faq-content">
            <p>Flickster has an extensive library of feature films, documentaries, TV shows, anime, award-winning Flickster originals, and more. Watch as much as you want, anytime you want.</p>
          </div>
        </li>

        <li>
          <input class="faq-input" type="radio" name="faq" id="faq-6" />
          <label class="faq-label" for="faq-6">Is Flickster good for kids?<i class="fa fa-add"></i></label>
          <div class="faq-content">
            <p>
              The Flickster Kids experience is included in your membership to give parents control while kids enjoy family-friendly TV shows and movies in their own space. <br />
              <br />
              Kids profiles come with PIN-protected parental controls that let you restrict the maturity rating of content kids can watch and block specific titles you don’t want kids to see.
            </p>
          </div>
        </li>
      </ul>

      <div class="membership">
        <p class="text-md text-center margin-bottom-1 margin-top">Ready to watch? Enter your email to create or restart your membership.</p>
        <form action="signup_password.html" class="input">
          <input class="input-field" type="email" id="email" placeholder="email" pattern="[A-Za-z0-9._-]+@[A-Za-z]+\.[a-z]{2,}$" autocomplete="off" required />

          <label for="email" class="input-label label-size">Email address</label>

          <p class="text-error">Please enter a valid email or phone number.</p>

          <button type="submit" class="btn-primary margin-top-1">
            Get Started
            <i class="fas fa-chevron-right margin-left"></i>
          </button>
        </form>
      </div>
    </section>

    <footer class="footer footer-black">
      <div class="footer-container margin-inline">
        <p>
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
            <option value="" selected>English</option>
            <option value="home_id.html">Bahasa Indonesia</option>
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
