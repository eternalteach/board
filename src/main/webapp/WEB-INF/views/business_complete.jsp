<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="includes/blackheaderfont.jsp" %>

  <script type="text/javascript">
    $(function () {
      $(".ion-search").click(function (e) {
        e.preventDefault();

        $(".search input:text").toggleClass("nice").focus();
      });
    });
  </script>

  <div class="blog-timeline-header">
    <div class="container">
      <div class="search">
        <form>
          <input type="text" class="form-control" placeholder="Search the blog...">
          <a href="#">
            <i class="ion-search"></i>
          </a>
        </form>
      </div>
      <h1>
        <a href="${contextPath}/business_board">
          Latest news
        </a>
      </h1>
      <p class="slogan">
        Latest updates and interesting news from us
      </p>
    </div>
  </div>

  <div class="blog-timeline-wrapper">
    <div class="container">

      <div class="post left">
        <div class="marker"></div>
        <div class="entry" style="background-image:url('${contextPath}/resources/images/unsplash/photo-1422665717225-1a37f226c92a.jpg');">
          <div class="intro">
            <h4>Art is part of life</h4>
            <p>
              Some people say design is about solving problems. 
              <br />
              Design is about cultural invention.
            </p>
          </div>
        </div>
      </div>
      <div class="post">
        <div class="marker"></div>
        <div class="news">
          <div class="author">
            <img src="${contextPath}/resources/images/uifaces/11.jpg">
          </div>
          <section>
            <h3>
              <a href="#">
                10 ways to improve your web development skills in just 1 month
              </a>
            </h3>
            <p>
              Functionality is so over-valued in design, and we’ve kept design very small in that way. Functionality is the sheer minimum. If your house burns down, what do you take? The cat in the window that you got from your mother, or the chair you have?
            </p>
            <a href="#" class="read-more">
              Read more
            </a>
          </section>
          <footer class="clearfix">
            <span class="tag float-left">
              <span class="ion-ios-pricetag-outline"></span>
              New Feature
            </span>
            <span class="date float-right">12 December</span>
          </footer>
        </div>
      </div>
      <div class="post left">
        <div class="marker"></div>
        <div class="news">
          <div class="author">
            <img src="${contextPath}/resources/images/uifaces/12.jpg">
          </div>
          <section>
            <h3>
              <a href="#">
                Spacial Themes announce the addition of new pages and products.
              </a>
            </h3>
            <p>
              Functionality is so over-valued in design, and we’ve kept design very small in that way. Functionality is the sheer minimum. If your house burns down, what do you take? The cat in the window that you got from your mother, or the chair you have?
            </p>
            <p>
              Functionality is so over-valued in design, and we’ve kept design very small in that way. Functionality is the sheer minimum.
            </p>
            <a href="#" class="read-more">
              Read more
            </a>
          </section>
          <footer class="clearfix">
            <span class="tag float-left">
              <span class="ion-ios-pricetag-outline"></span>
              New Feature
            </span>
            <span class="date float-right">12 December</span>
          </footer>
        </div>
      </div>
      <div class="post">
        <div class="marker"></div>
        <div class="entry smallish" style="background-image:url('resources/images/unsplash/osjphfgeyeu-koushik-c.jpg');">
          <div class="intro">
            <h4>Day at the Beach</h4>
            <p>
              Some people say design is about solving problems. 
              <br />
              Design is about cultural invention.
            </p>
          </div>
        </div>
      </div>
      <div class="post">
        <div class="marker"></div>
        <div class="news">
          <div class="author">
            <img src="${contextPath}/resources/images/uifaces/14.jpg">
          </div>
          <section>
            <h3>
              <a href="#">
                Spacial Themes announce the addition of new pages and products.
              </a>
            </h3>
            <p>
              Functionality is so over-valued in design, and we’ve kept design very small in that way. Functionality is the sheer minimum. If your house burns down, what do you take? The cat in the window that you got from your mother, or the chair you have?
            </p>
            <a href="#" class="read-more">
              Read more
            </a>
          </section>
          <footer class="clearfix">
            <span class="tag float-left">
              <span class="ion-ios-pricetag-outline"></span>
              New Feature
            </span>
            <span class="date float-right">12 December</span>
          </footer>
        </div>
      </div>
      <div class="post left">
        <div class="marker"></div>
        <div class="entry" style="background-image:url('resources/images/unsplash/photo-1454942901704-3c44c11b2ad1.jpg');">
          <div class="intro">
            <h4>Some Forest</h4>
            <p>
              Some people say design is about solving problems. 
              <br />
              Design is about cultural invention.
            </p>
          </div>
        </div>
      </div>
      <div class="post">
        <div class="marker"></div>
        <div class="news">
          <div class="author">
            <img src="${contextPath}/resources/images/uifaces/15.jpg">
          </div>
          <section>
            <h3>
              <a href="#">
                What Video Game Designers Can Teach You About Influencing To Buy
              </a>
            </h3>
            <p>
              Checkout is an embeddable payment form for desktop, tablet, and mobile devices. It works within your site—customers can pay instantly, without being redirected away to complete the transaction.
            </p>
            <p>
              This is designed to make showing off your best photos extremely fast and simple. There aren't many settings to configure.
            </p>
            <a href="#" class="read-more">
              Read more
            </a>
          </section>
          <footer class="clearfix">
            <span class="tag float-left">
              <span class="ion-ios-pricetag-outline"></span>
              New Feature
            </span>
            <span class="date float-right">12 December</span>
          </footer>
        </div>
      </div>
      <div class="post left">
        <div class="marker"></div>
        <div class="news">
          <div class="author">
            <img src="${contextPath}/resources/images/uifaces/13.jpg">
          </div>
          <section>
            <h3>
              <a href="#">
                Spacial Themes announce the addition of new pages and products.
              </a>
            </h3>
            <p>
              Functionality is so over-valued in design, and we’ve kept design very small in that way. Functionality is the sheer minimum. If your house burns down, what do you take? The cat in the window that you got from your mother, or the chair you have?
            </p>
            <a href="#" class="read-more">
              Read more
            </a>
          </section>
          <footer class="clearfix">
            <span class="tag float-left">
              <span class="ion-ios-pricetag-outline"></span>
              New Feature
            </span>
            <span class="date float-right">12 December</span>
          </footer>
        </div>
      </div>
      <div class="post">
        <div class="marker"></div>
        <div class="news">
          <div class="author">
            <img src="${contextPath}/resources/images/uifaces/9.jpg">
          </div>
          <section>
            <h3>
              <a href="#">
                Spacial Themes announce the addition of new pages and products.
              </a>
            </h3>
            <p>
              Functionality is so over-valued in design, and we’ve kept design very small in that way. Functionality is the sheer minimum. If your house burns down, what do you take? The cat in the window that you got from your mother, or the chair you have?
            </p>
            <a href="#" class="read-more">
              Read more
            </a>
          </section>
          <footer class="clearfix">
            <span class="tag float-left">
              <span class="ion-ios-pricetag-outline"></span>
              New Feature
            </span>
            <span class="date float-right">12 December</span>
          </footer>
        </div>
      </div>
      <div class="post left">
        <div class="marker"></div>
        <div class="entry" style="background-image:url('resources/images/unsplash/photo-1424873380396-9580028d74db.jpg');">
          <div class="intro">
            <h4>Our Best Vacations</h4>
            <p>
              Some people say design is about solving problems. 
              <br />
              Design is about cultural invention.
            </p>
          </div>
        </div>
      </div>
      <div class="post">
        <div class="marker"></div>
        <div class="entry smallish" style="background-image:url('resources/images/unsplash/photo-1467659226669-a1360d97be2d.jpg');">
          <div class="intro">
            <h4>Our Best Vacations</h4>
            <p>
              Some people say design is about solving problems. 
              <br />
              Design is about cultural invention.
            </p>
          </div>
        </div>
      </div>
      <div class="post left">
        <div class="marker"></div>
        <div class="news">
          <div class="author">
            <img src="${contextPath}/resources/images/uifaces/10.jpg">
          </div>
          <section>
            <h3>
              <a href="#">
                Spacial Themes announce the addition of new pages and products.
              </a>
            </h3>
            <p>
              Functionality is so over-valued in design, and we’ve kept design very small in that way. Functionality is the sheer minimum. If your house burns down, what do you take? The cat in the window that you got from your mother, or the chair you have?
            </p>
            <a href="#" class="read-more">
              Read more
            </a>
          </section>
          <footer class="clearfix">
            <span class="tag float-left">
              <span class="ion-ios-pricetag-outline"></span>
              News
            </span>
            <span class="date float-right">03 January</span>
          </footer>
        </div>
      </div>
      <div class="post">
        <div class="marker"></div>
        <div class="news">
          <div class="author">
            <img src="${contextPath}/resources/images/uifaces/14.jpg">
          </div>
          <section>
            <h3>
              <a href="#">
                Spacial Themes announce the addition of new pages and products.
              </a>
            </h3>
            <p>
              Functionality is so over-valued in design, and we’ve kept design very small in that way. Functionality is the sheer minimum. If your house burns down, what do you take?
            </p>
            <p>
              The cat in the window that you got from your mother, or the chair you have?
            </p>
            <a href="#" class="read-more">
              Read more
            </a>
          </section>
          <footer class="clearfix">
            <span class="tag float-left">
              <span class="ion-ios-pricetag-outline"></span>
              News
            </span>
            <span class="date float-right">03 January</span>
          </footer>
        </div>
      </div>
      <div class="post left">
        <div class="marker"></div>
        <div class="entry" style="background-image:url('/resources/images/unsplash/photo-1478059425650-ca13d6d422f4.jpg');">
          <div class="intro">
            <h4>Our Best Vacations</h4>
            <p>
              Some people say design is about solving problems. 
              <br />
              Design is about cultural invention.
            </p>
          </div>
        </div>
      </div>
      <div class="clearfix"></div>
      <div class="pager">
        <a href="#">Older posts</a>
      </div>
    </div>
  </div>

  <footer class="footer">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="title">
            About spacial
          </div>
          <ul class="menu">
            <li>
              <a href="#">Home Pages</a>
            </li>
            <li>
              <a href="#">Theme Features</a>
            </li>
            <li>
              <a href="#">Services</a>
            </li>
            <li>
              <a href="#">StoreFront</a>
            </li>
            <li>
              <a href="#">Portfolio</a>
            </li>
          </ul>
        </div>
        <div class="col-md-4">
          <div class="title">
            Connect with us
          </div>
          <ul class="menu">
            <li>
              <a href="#">
                <i class="fa fa-instagram"></i>
                Instagram
              </a>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-twitter"></i>
                Twitter
              </a>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-dribbble"></i>
                Dribbble
              </a>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-facebook"></i>
                Facebook
              </a>
            </li>
          </ul>
        </div>
        <div class="col-md-4 newsletter">
          <div class="title">
            Get awesome updates
          </div>
          <p>
            Enter your email address for news and product launches in the Awesome Space.
          </p>

          <form class="newsletter-form" autocomplete="off">
            <input type="email" id="mc-email" class="form-control" placeholder="Email address" required />

            <button type="submit">
              <i class="fa fa-chevron-right"></i>
            </button>
            <label for="mc-email" class="text-white newsletter-feedback mt-3"></label>
          </form>
        </div>
      </div>
      <div class="bottom">
        <ul>
          <li><a href="#">Privacy</a></li>
          <li><a href="#">Legal</a></li>
          <li><a href="#">Language</a></li>
        </ul>
      </div>
    </div>
  </footer>

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