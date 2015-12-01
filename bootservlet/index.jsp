<%@ page language="java" pageEncoding="UTF-8" contentType="text/html charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
    
		<title>Home</title>

		<!-- Bootstrap core CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
  
		<style type="text/css">
			.logo {      
				height: 30px;
				margin-top: -5px;
			}

			body {
				min-height: 2000px;
				padding-top: 70px;
			}

			.footer {
				height: 40px;
				background-color: #f5f5f5;
				padding: 10px;
			}
	
			.jumbotron {
				background-image: linear-gradient( rgba(0, 0, 0, ${grad}), rgba(0, 0, 0, ${grad}) ), url('${pageContext.request.contextPath}/img/${img}');
				background-size: cover;
				color: ${color};
			}
		</style>

	</head>

	<body>
		<header>
			<nav class="navbar navbar-default navbar-fixed-top">
				<div class="container">

					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a href="#" class="navbar-brand"><img class="img-responsive logo" src="http://i.imgur.com/sLMbVv9.png" alt="My Brand"></a>            
					</div>	<!-- /navbar-header -->

					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#">Home</a></li>
							<li><a href="">Features</a></li>
							<li><a href="">About</a></li>
							<li><a href="">Contact</a></li>
						</ul>	<!-- /navbar-nav -->

						<form class="navbar-form navbar-left" role="search">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Search">
								<div class="input-group-btn">
									<button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
								</div>	<!-- /search glyph -->
							</div>	<!-- /input-group -->
						</form>	<!-- /search -->          
          
						<button type="button" class="btn btn-info navbar-btn navbar-right">Get App</button>
					</div>	<!-- /nav collapse -->

				</div>	<!-- /nav container -->
			</nav>	<!-- /nav -->

			<div class="container">	<!-- jumbotron-container -->

				<div class="jumbotron">
					<h1>${empty fruit ? 'Hello, Bootstrap!' : 'Yay, ' += fruit += ' it is!'}</h1>					
					<p>Responsive design with Bootstrap 3</p>
					<button type="button" class="btn btn-info">Get App</button> 
				</div>	<!-- /jumbotron --> 

			</div>	<!-- /jumbotron container -->
		</header>	<!-- /header -->
	
		<section>
			<div class="container">	

				<form action="${pageContext.request.contextPath}/magic" method="get">
					<label class="form-label">Pick your favorite:</label>

					<div class="input-group form-group col-xs-6">
						<span class="input-group-addon">
							<input type="radio" name="option" value="apples">
						</span>
						<input type="text" class="form-control" disabled="disabled" placeholder="Apples">
					</div>	<!-- /apples -->

					<div class="input-group form-group col-xs-6">
						<span class="input-group-addon">
							<input type="radio" name="option" value="oranges">
						</span>
						<input type="text" class="form-control" disabled="disabled" placeholder="Oranges">
					</div>	<!-- /oranges -->

					<div class="input-group form-group col-xs-6">
						<span class="input-group-addon">
							<input type="radio" name="option" value="strawberries">
						</span>
						<input type="text" class="form-control" disabled="disabled" placeholder="Strawberries">
					</div>	<!-- /strawberries -->

					<div class="input-group form-group col-xs-6">
						<span class="input-group-addon">
							<input type="radio" name="option" value="salad">
						</span>
						<input type="text" class="form-control" disabled="disabled" placeholder="Fruit Salad">
					</div>	<!-- /salad -->

					<input type="submit" class="btn btn-primary" value="Submit">
				</form>	<!-- /form -->

			</div>	<!-- /form-container -->
		</section>	<!-- /section -->

		<footer class="footer navbar-fixed-bottom">
			<div class="container">
				<p>Copyright &copy; 2015 &middot; All Rights Reserved &middot;</p>
			</div>	<!-- /footer-container -->
		</footer>	<!-- /footer -->

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
	</body>
</html>