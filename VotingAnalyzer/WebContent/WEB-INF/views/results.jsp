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
            <a class="nav-link active" href="/VotingAnalyzer/">Home <span class="sr-only"></span></a>
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
		      <th scope="col">#</th>
		      <th scope="col">20-30</th>
		      <th scope="col">Last</th>
		      <th scope="col">Handle</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">Trump</th>
		      <td>${age20To30ForTrump}%</td>
		      <td>Otto</td>
		      <td>@mdo</td>
		    </tr>
		    <tr>
		      <th scope="row">2</th>
		      <td>Jacob</td>
		      <td>Thornton</td>
		      <td>@fat</td>
		    </tr>
		    <tr>
		      <th scope="row">3</th>
		      <td>Larry</td>
		      <td>the Bird</td>
		      <td>@twitter</td>
		    </tr>
		  </tbody>
		</table>
	</div>
	
	<div class="mt-5">
		  <table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">marg</th>
		      <th scope="col">Last</th>
		      <th scope="col">Handle</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">1</th>
		      <td>Mark</td>
		      <td>Otto</td>
		      <td>@mdo</td>
		    </tr>
		    <tr>
		      <th scope="row">2</th>
		      <td>Jacob</td>
		      <td>Thornton</td>
		      <td>@fat</td>
		    </tr>
		    <tr>
		      <th scope="row">3</th>
		      <td>Larry</td>
		      <td>the Bird</td>
		      <td>@twitter</td>
		    </tr>
		  </tbody>
		</table>
	</div>
	
	<div class="mt-5">
		  <table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">First</th>
		      <th scope="col">Last</th>
		      <th scope="col">Handle</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">1</th>
		      <td>Mark</td>
		      <td>Otto</td>
		      <td>@mdo</td>
		    </tr>
		    <tr>
		      <th scope="row">2</th>
		      <td>Jacob</td>
		      <td>Thornton</td>
		      <td>@fat</td>
		    </tr>
		    <tr>
		      <th scope="row">3</th>
		      <td>Larry</td>
		      <td>the Bird</td>
		      <td>@twitter</td>
		    </tr>
		  </tbody>
		</table>
	</div>
</div>
  </body>
  </html>