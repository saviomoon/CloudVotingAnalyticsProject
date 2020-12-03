<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Voting Demographic Analyzer</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/carousel/">

    <!-- Bootstrap core CSS -->
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
  </head>
  <body>
    <header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="index.html">Voting Demographic Analyzer</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="https://www.vote.org/register-to-vote/" target="_blank">Register to Vote</a>
        </li>
        <!--<li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">About Us</a>
        </li>-->
      </ul>
      <form class="form-inline mt-2 mt-md-0">
        <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
  </nav>
</header>

<main role="main">

  

    <div class="bd-example">
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="./trump.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
            <h1>About President Donald J. Trump</h1>
            <p>45th president of the United States of America</p>
            <p><a class="btn btn-lg btn-primary" href="https://en.wikipedia.org/wiki/Donald_Trump" role="button" target="_blank">Learn more</a></p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="./122640604_10157602667531104_3356826730129979001_o.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h1>About VP Joseph R. Biden</h1>
          <p>47th VP of the Unitd States of America</p>
            <p><a class="btn btn-lg btn-primary" href="https://en.wikipedia.org/wiki/Joe_Biden" role="button" target="_blank">Learn more</a></p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="./124974177_10159438447612923_6920560005760855921_o.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h1>About Kamala Harris</h1>
          <p>Kamala Haris is the Vice-Presidential candidate for 2020 Election.</p>
            <p><a class="btn btn-lg btn-primary" href="https://en.wikipedia.org/wiki/Kamala_Harris" role="button" target="_blank">Learn more</a></p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="./merlin_171479154_443e9663-32a9-4fa4-81e4-c4a7aded65a4-superJumbo.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h1>About VP Mike Pence</h1>
          <p>Mike Pence is current Vice-President of the United States of America.</p>
          <p><a class="btn btn-lg btn-primary" href="https://en.wikipedia.org/wiki/Mike_Pence" role="button" target="_blank">Learn more</a></p>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
<!--        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>-->
      <!--  <h2>About Kamala Haris</h2>
        <p>Kamala Haris is the Vice-Presidential candidate for 2020 Election.</p>
        <p><a class="btn btn-secondary" href="https://en.wikipedia.org/wiki/Kamala_Harris" role="button" target="_blank">Learn more &raquo;</a></p>
      --></div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
       <!-- <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>-->
      <!--  <h2>About VP Mike Pence</h2>
        <p>Mike Pence is current Vice-President of the United States of America.</p>
        <p><a class="btn btn-secondary" href="https://en.wikipedia.org/wiki/Mike_Pence" role="button" target="_blank">View details &raquo;</a></p>
-->      </div><!-- /.col-lg-4 -->
      <!--<div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
        <h2>Heading</h2>
        <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
        <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
      </div>--><!-- /.col-lg-4 -->
    </div><!-- /.row -->
      
      <form>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationDefault01">Full Name</label>
      <input type="text" class="form-control" id="validationDefault01"  required>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationDefault02">Ethinicity</label>
        <!--<select class="custom-select custom-select-lg mb-3">
  <option selected>Open this select menu</option>
  <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
</select>
-->
<select class="custom-select custom-select-sm">
  <option value="1">White American</option>
        <option value="2">Asian</option>
        <option value="3">Hispanic and Latino</option>
        <option value="4">African American</option>
        <option value="5">Native American</option>
</select>
        <!--<select class="form-control" id="validationDefault02" required>
        <option value="WA">White American</option>
        <option value="AS">Asian</option>
        <option value="HIS">Hispanic and Latino</option>
        <option value="AA">African American</option>
        <option value="NA">Native American</option>
         
      <input type="text" class="form-control" id="validationDefault02" value="Enter your last name..." required>
    --></div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationDefault03">Age</label>
 
      <input type="number"Age class="form-control" id="validationDefault03" min="18" value="Should be 18+" required>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationDefault04">State</label>
      <select class="custom-select" id="validationDefault04" required>
        <option value="AL">Alabama</option>
        <option value="AK">Alaska</option>
        <option value="AZ">Arizona</option>
        <option value="AR">Arkansas</option>
        <option value="CA">California</option>
        <option value="CO">Colorado</option>
        <option value="CT">Connecticut</option>
        <option value="DE">Delaware</option>
        <option value="DC">District Of Columbia</option>
        <option value="FL">Florida</option>
        <option value="GA">Georgia</option>
        <option value="HI">Hawaii</option>
        <option value="ID">Idaho</option>
        <option value="IL">Illinois</option>
        <option value="IN">Indiana</option>
        <option value="IA">Iowa</option>
        <option value="KS">Kansas</option>
        <option value="KY">Kentucky</option>
        <option value="LA">Louisiana</option>
        <option value="ME">Maine</option>
        <option value="MD">Maryland</option>
        <option value="MA">Massachusetts</option>
        <option value="MI">Michigan</option>
        <option value="MN">Minnesota</option>
        <option value="MS">Mississippi</option>
        <option value="MO">Missouri</option>
        <option value="MT">Montana</option>
        <option value="NE">Nebraska</option>
        <option value="NV">Nevada</option>
        <option value="NH">New Hampshire</option>
        <option value="NJ">New Jersey</option>
        <option value="NM">New Mexico</option>
        <option value="NY">New York</option>
        <option value="NC">North Carolina</option>
        <option value="ND">North Dakota</option>
        <option value="OH">Ohio</option>
        <option value="OK">Oklahoma</option>
        <option value="OR">Oregon</option>
        <option value="PA">Pennsylvania</option>
        <option value="RI">Rhode Island</option>
        <option value="SC">South Carolina</option>
        <option value="SD">South Dakota</option>
        <option value="TN">Tennessee</option>
        <option value="TX">Texas</option>
        <option value="UT">Utah</option>
        <option value="VT">Vermont</option>
        <option value="VA">Virginia</option>
        <option value="WA">Washington</option>
        <option value="WV">West Virginia</option>
        <option value="WI">Wisconsin</option>
        <option value="WY">Wyoming</option>
      </select>
      
      
    </div>
    <div class="col-md-3 mb-3">
        <label for="validationDefault05">Profession</label>
      <select class="custom-select">
          <option value="1">Government Employee</option>
          <option value="2">Corporate Employee</option>
          <option value="3">Business Owner</option>
          <option value="4">Farmer</option>
      </select>
    </div>
  </div>
  <!--<div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
      <label class="form-check-label" for="invalidCheck2">
        Agree to terms and conditions
      </label>
    </div>
  </div>-->
  <button class="btn btn-primary" type="submit">Check the Results</button>
</form>


    <!-- START THE FEATURETTES -->

   <!-- <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">First featurette heading. <span class="text-muted">Itâll blow your mind.</span></h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
      </div>
      <div class="col-md-5">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">Oh yeah, itâs that good. <span class="text-muted">See for yourself.</span></h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
      </div>
    </div>
-->
    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">We read your mind.</h2>
        <p class="lead">This web app will predict whom you have voted this election after taking some inputs from you.</p>
      </div>
      <div class="col-md-5">
        <!--<svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 500x500"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>-->
      </div>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->


  <!-- FOOTER -->
  <footer class="container">
    <p class="float-right"><a href="#">Back to top</a></p>
    <p>&copy; Savio and Navtej Company Inc. &middot; <!--<a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>-->
  </footer>
</main>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</html>
