<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Voting Analyzer</title>
    	<!-- Bootstrap core CSS -->
    	<style><%@include file="/WEB-INF/assets/dist/css/bootstrap.min.css"%></style>
    	<!-- Custom styles for this template -->
    	<style><%@include file="/WEB-INF/views/carousel.css"%></style>
	</head>
	<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <a class="navbar-brand" href="/VotingAnalyzer/">Voting Demographic Analyzer</a>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="https://www.vote.org/register-to-vote/" target="_blank">Register to Vote</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="new">DemoGraphic Analysis <span class="sr-only"></span></a>
          </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>
  </header>
<body>
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
      <div class="carousel-item active" style="background-color: red;">
        <img src="img/trump.jpg" class="d-block w-100" alt="..." />
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

  <!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">
	<form:form action="save" method="post" modelAttribute="voter">
	 	<div class="form-row">
	   		<div class="col-md-3 mb-3">
	     		<label for="validationDefault01">First Name</label>
	     		<form:input type="text" class="form-control" path="firstName" required="required"/>
	   		</div>
	   		<div class="col-md-4 mb-3">
	     		<label for="validationDefault01">Last Name</label>
	     		<form:input type="text" class="form-control" path="lastName" required="required"/>
	   		</div>
	   		<div class="col-md-2 mb-3">
	    		<label for="validationDefault03">Age</label>
	
	    		<form:input path="age" type="number" class="form-control" id="validationDefault03" min="18" value="Should be 18+" required="required"/>
	  		</div>
	  		<div class="col-md-1 mb-3">
	    		<label for="validationDefault03">Sex</label>
				<form:select path="sex" class="custom-select" required="required">
		 			<option value="Male">Male</option>
		       		<option value="Female">Female</option>
		       		<option value="Neutral">Neutral</option>
		       		<option value="Other">Other</option>
		       		
				</form:select>	  		
			</div>
		   	
		</div>
		<div class="form-row">
	  		<div class="col-md-4 mb-3">
				<label for="validationDefault02">Ethnicity</label>
		      	<form:select path="ethnicity" class="custom-select" required="required">
		       		<option value="American Indian or Alaska Native">American Indian or Alaska Native</option>
					<option value="Asian">Asian</option>American Indian or Alaska Native
		       		<option value="Black or African American">Black or African American</option>
		       		<option value="Hispanic or Latino">Hispanic or Latino</option>
		       		<option value="Native Hawaiian or Other Pacific Islander">Native Hawaiian or Other Pacific Islander</option>
		 			<option value="White">White</option>
				</form:select>
		    </div>
	 		<div class="col-md-3 mb-3">
	    		<label for="validationDefault04">State</label>
	    		<form:select path="state" class="custom-select" id="validationDefault04" required="required">
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
	    		</form:select>
	    	</div>
	  		<div class="col-md-3 mb-3">
				<label for="validationDefault05">Profession</label>
		    	<form:select path="profession" class="custom-select" required="required">
			        <option value="Government Employee">Government Employee</option>
			        <option value="Corporate Employee">Corporate Employee</option>
			        <option value="Business Owner">Business Owner</option>
			        <option value="Farmer">Farmer</option>
			        <option value="Unemployed">Unemployed</option>
		        	<option value="Other">Other	</option>
		    	</form:select>
	  		</div>
		</div>
		<div class="form-row">
			<div class="col-md-3 mb-3">
				<label for="validationDefault05">Going To Vote For</label>
		    	<form:select path="selection" class="custom-select" required="required">
			        <option value="Trump">Donald J. Trump</option>
			        <option value="Biden">Joe Biden</option>
		    	</form:select>
	  		</div>
		</div>
	  	<button class="btn btn-primary" type="submit" value="save">Check the Results</button>
	</form:form>
	<hr class="featurette-divider">
	<div class="row featurette">
		<div class="col-md-7">
			<h2 class="featurette-heading">Thank you for participating</h2>
			<p class="lead">This web app collects data from users to analyze demographic voting patterns and provide voting predictions based on demographics</p>
		</div>
		<div class="col-md-5">
		</div>
	</div>

	<hr class="featurette-divider">
</div><!-- /.container -->

<footer class="container">
 		<p class="float-right"><a href="#">Back to top</a></p>
 		<p>&copy; Savio and Navtej Company Inc. &middot; <!--<a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>-->
  		</footer>
	</main>
</body>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script>
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</html>