<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="includes/whiteheaderfont.jsp" %>

  <div class="index-features-header">
    <section>
      <h1 class="stripey">
        Organize your income and expenses the easy way
      </h1>
      <p class="stripey">
        Shoot, edit, share, explore. All from your pocket, tablet or desktop.
      </p>
      <div class="cta">
        <a href="#" class="btn-shadow btn-shadow-primary">
          Sign Up For Free
        </a>
      </div>
    </section>
  </div>

  <div class="index-features-nav d-none d-md-block">
    <ul class="nav features justify-content-center">
      <li>
        <a href="#friends" class="scroll nav-link active featureFadeInDown">
          Message your friends
        </a>
      </li>
      <li>
        <a href="#camera" class="scroll nav-link featureFadeInDown">
          All your photos online
        </a>
      </li>
      <li>
        <a href="#user" class="scroll nav-link featureFadeInDown">
          Sync your contacts
        </a>
      </li>
      <li>
        <a href="#files" class="scroll nav-link featureFadeInDown">
          All your files secured
        </a>
      </li>
    </ul>
  </div>

  <div id="friends" class="index-features-friends">
    <section class="clearfix">
      <img src="${contextPath}/resources/images/devices/devices-7.png" class="browser" />

      <div class="info">
        <h3>Message your friends</h3>
        <h4>
          Powerful dashboard that lets you control your site, store or portfolio.
        </h4>
        <p>
          Spacial has both a web app and an android app to make your website easy and always available. It offers you all the designs in collaboration with some smart people. Your projects will look great everywhere you go. Use new components that come included. It works in all browsers and your clients can pay instantly, to improve their experience.
        </p>
      </div>
    </section>
  </div>

  <div id="camera" class="index-features-camera">
    <section>
      <h3>All your photos online</h3>
      <h4>
        Apply filters to your pictures, change settings and tag all your friends
      </h4>
      <div class="pic">
        <img src="${contextPath}/resources/images/devices/devices-5.png" class="img-fluid" />
      </div>
    </section>
  </div>

  <div id="user" class="index-features-user">
    <header>
      <h3>Your files are always secured</h3>
      <h4>
        We have the best security infrastructure available, your files will always be safe and we make daily backups
      </h4>
    </header>
    <section class="clearfix">
      <img src="${contextPath}/resources/images/devices/iphone-14.png" class="devices float-right" />

      <h4>Access to your business on the go</h4>
      <p>
        Spacial has both a web app and an android app to make your website easy and always available. It offers you all the designs in collaboration with some smart people. Your projects will look great everywhere you go. Use new components that come included!
      </p>
      <p>
        Spacial is an advanced theme solution for desktop, tablet, and mobile devices. It works in all browsers and your clients can pay instantly.
      </p>
      <div class="icons">
        <i class="ion-monitor"></i>
        <i class="ion-ipad"></i>
        <i class="ion-iphone"></i>
      </div>
    </section>
  </div>

  <div id="files" class="index-features-files clearfix">
    <div class="container2">
      <div class="container1">
        <div class="col col-left">

          <div class="features">
            <div class="feature clearfix">
              <div class="image">
                <img src="${contextPath}/resources/images/icons/features-icon-upload.png" />
              </div>
              <div class="info">
                <strong>
                  Improve your workflow today
                </strong>
                <p>
                  There are many variations of passages of Lorem Ipsum available, but the majority have suffered.
                </p>
              </div>
            </div>
            <div class="feature clearfix">
              <div class="image">
                <img src="${contextPath}/resources/images/icons/features-icon-earth.png" />
              </div>
              <div class="info">
                <strong>
                  Your data in the cloud
                </strong>
                <p>
                  There are many variations of passages of Lorem Ipsum available, but the majority have suffered.
                </p>
              </div>
            </div>
            <div class="feature clearfix">
              <div class="image">
                <img src="${contextPath}/resources/images/icons/features-icon-repeat.png" />
              </div>
              <div class="info">
                <strong>
                  Easy to customize
                </strong>
                <p>
                  There are many variations of passages of Lorem Ipsum available, but the majority have suffered.
                </p>
              </div>
            </div>
          </div>

        </div>
        <div class="col col-right">
          <div class="info">
            <h3>Sync your contacts now</h3>
            <h4>
              Powerful dashboard that lets you control your site and portfolio.
            </h4>
            <p>
              Spacial has both a web app and an android app to make your website easy and always available. It offers you all the designs in collaboration with some smart people. Your projects will look great everywhere you go. Use new components that come included. It works in all browsers and your clients can pay instantly to everyone.
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="index-features-cta">
    <div class="container">
      <div class="info">
        <strong>
          Ready to get started and be awesome?
        </strong>
        <p>
          Try our 30-day trial no credit card required
        </p>
      </div>

      <a href="#">
        Sign Up Now
      </a>
    </div>
  </div>

  <div class="index-features-footer">
    <div class="container">
      <div class="links">
        <a href="#">Log In</a>
        <a href="#">Sign Up</a>
        <a href="#">About Us</a>
        <a href="#">Contact</a>
      </div>
      <div class="bottom">
        <span>
          © 2019 <a href="#">Spacial LLC.</a>
        </span>
        <span>
          <a href="#">FAQS</a>
        </span>
        <span>
          <a href="#">@spacialtheme</a>
        </span>
      </div>
    </div>
  </div>

  <script type="text/javascript">
    $(function () {
      var $features = $(".index-features-nav .features");
      var position = $features.offset().top + 40;

      $(window).scroll(function () {
        var top = $(this).scrollTop();

        if (top > position && !$features.hasClass("fixed")) {
          $features.addClass("fixed fadeInDown");
        } else if (top < position && $features.hasClass("fixed")) {
          $features.removeClass("fixed fadeInDown");
          $features.find("li:eq(0) .nav-link").addClass("active")
        }
      });

      $('body').scrollspy({ 
        target: '.index-features-nav'
      });

      setTimeout(function () {
        $(".nav-link").removeClass("featureFadeInDown");
      }, 1500);
    });
  </script>


  <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
  <script>
    // (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
    // function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
    // e=o.createElement(i);r=o.getElementsByTagName(i)[0];
    // e.src='//www.google-analytics.com/analytics.js';
    // r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
    // ga('create','UA-XXXXX-X','auto');ga('send','pageview');
  </script>
</body>
</html>