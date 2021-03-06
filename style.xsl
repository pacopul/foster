<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			<head>
				<title>Foster</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				
				<!-- Bootstrap CSS -->
				<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
				<link rel="stylesheet" href="style.css" />
			</head>
			<body>
				<div class="container-fluid px-0">
					<nav class="navbar navbar-expand-lg navbar-dark bg-nav">
						<a class="navbar-brand" href="#">
							<img src="img/logo.png" alt="logo" />
						</a>
						<button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
														aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="collapsibleNavId">
							<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
								<xsl:for-each select="carta/categoria">
									<li class="nav-item">
										<a class="nav-link text-white" href="#{@nombre}"><xsl:value-of select="@nombre"/></a>
									</li>
								</xsl:for-each>
								
							</ul>
							<form class="form-inline my-2 my-lg-0">
								
								<button class="btn btn-danger my-2 my-sm-0" type="submit">Pedir Online</button>
							</form>
						</div>
					</nav>
					<div id="carouselId" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselId" data-slide-to="0" class="active"></li>
							<li data-target="#carouselId" data-slide-to="1"></li>
							<li data-target="#carouselId" data-slide-to="2"></li>
							<li data-target="#carouselId" data-slide-to="3"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img src="img/img1.jpg" alt="" class="img-fluid w-100" />
							</div>
							<div class="carousel-item">
								<img src="img/img2.jpg" alt="" class="img-fluid w-100" />
							</div>
							<div class="carousel-item">
								<img src="img/img3.jpg" alt="" class="img-fluid w-100" />
							</div>
							<div class="carousel-item">
								<img src="img/img4.jpg" alt="" class="img-fluid w-100" />
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselId" role="button" data-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#carouselId" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
					
					<xsl:for-each select="carta/categoria">
						<a name="{@nombre}" />
						<h2 class="text-center"><xsl:value-of select="@nombre"/></h2>
						<div class="row justify-content-center px-3">
							<xsl:for-each select="plato">
								<div class="col-xl-3 col-lg-4 col-md-6 d-flex mb-3">
									<div class="card flex-fill">
										<img class="card-img-top" src="{imagen}" alt="" />
										<div class="card-body">
											<h4 class="card-title text-center"><xsl:value-of select="nombre"/></h4>
										</div>
									</div>
								</div>
							</xsl:for-each>
							
						</div>
					</xsl:for-each>
					
					<footer>
						<h3 class="text-white bg-footer text-center my-0 py-2">
							LA CARTA DEL FOSTER HOLLYWOOD
						</h3>
					</footer>
				</div>  
				<!-- Optional JavaScript -->
				<!-- jQuery first, then Popper.js, then Bootstrap JS -->
				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
				<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>