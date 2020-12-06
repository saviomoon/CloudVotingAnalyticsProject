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
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
        <li class="nav-item">
            <a class="nav-link active" href="/VotingAnalyzer/">Voting Demographic Analyzer <span class="sr-only"></span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="https://www.vote.org/register-to-vote/" target="_blank">Register to Vote</a>
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
  <div class="container marketing">
	  <div class="mt-5">
	  	<label for="validationDefault01">Analysis based on Sex</label>
		  <table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col"></th>
		      <th scope="col">Male</th>
		      <th scope="col">Female</th>
		      <th scope="col">Neutral</th>
		      <th scope="col">Other</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">Donald J. Trump</th>
		      <td>${maleForTrump}%</td>
		      <td>${femaleForTrump}%</td>
		      <td>${neutralForTrump}%</td>
		      <td>${otherForTrump}%</td>
		    </tr>
		    <tr>
		      <th scope="row">Joe Biden</th>
		      <td>${maleForBiden}%</td>
		      <td>${femaleForBiden}%</td>
		      <td>${neutralForBiden}%</td>
		      <td>${otherForBiden}%</td>
		    </tr>
		  </tbody>
		</table>
	</div>
	
	<div class="mt-5">
	<label for="validationDefault01">Analysis based on Age</label>
		  <table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col"></th>
		      <th scope="col">20-30</th>
		      <th scope="col">30-40</th>
		      <th scope="col">40-50</th>
		      <th scope="col">50-60</th>
		      <th scope="col">60-70</th>
		      <th scope="col">70-80</th>
		      <th scope="col">80-90</th>
		      <th scope="col">90-100</th>
		      <th scope="col">100-110</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">Donald J. Trump</th>
		      <td>${age20To30ForTrump}%</td>
		      <td>${age30To40ForTrump}%</td>
		      <td>${age40To50ForTrump}%</td>
		      <td>${age50To60ForTrump}%</td>
		      <td>${age60To70ForTrump}%</td>
		      <td>${age70To80ForTrump}%</td>
		      <td>${age80To90ForTrump}%</td>
		      <td>${age90To100ForTrump}%</td>
		      <td>${age100To110ForTrump}%</td>
		    </tr>
		    <tr>
		      <th scope="row">Joe Biden</th>
		      <td>${age20To30ForBiden}%</td>
		      <td>${age30To40ForBiden}%</td>
		      <td>${age40To50ForBiden}%</td>
		      <td>${age50To60ForBiden}%</td>
		      <td>${age60To70ForBiden}%</td>
		      <td>${age70To80ForBiden}%</td>
		      <td>${age80To90ForBiden}%</td>
		      <td>${age90To100ForBiden}%</td>
		      <td>${age100To110ForBiden}%</td>
		    </tr>
		  </tbody>
		</table>
	</div>
	
	<div class="mt-5">
	<label for="validationDefault01">Analysis based on ethnicity</label>
		  <table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col"></th>
		      <th scope="col">Pacific Islander</th>
		      <th scope="col">Asian</th>
		      <th scope="col">Black/African American</th>
		      <th scope="col">Hispanic/Latino</th>
		      <th scope="col">Native Hawaiin</th>
		      <th scope="col">White</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">Donald J. Trump</th>
		      <td align="center">${americanIndianForTrump}%</td>
		      <td align="center">${asianForTrump}%</td>
		      <td align="center">${blackForTrump}%</td>
		      <td align="center">${hispanicForTrump}%</td>
		      <td align="center">${nativeForTrump}%</td>
		      <td align="center">${whiteForTrump}%</td>
		    </tr>
		    <tr>
		      <th scope="row">Joe Biden</th>
		      <td align="center">${americanIndianForBiden}%</td>
		      <td align="center">${asianForBiden}%</td>
		      <td align="center">${blackForBiden}%</td>
		      <td align="center">${hispanicForBiden}%</td>
		      <td align="center">${nativeForBiden}%</td>
		      <td align="center">${whiteForBiden}%</td>
		    </tr>
		  </tbody>
		</table>
	</div>
	
</div>
  </body>
  </html>