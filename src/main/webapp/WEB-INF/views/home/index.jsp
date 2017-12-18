<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="pl">
<head>
<title>Aemon - software developers</title>

<!-- Bootstrap Core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet"
	media="screen" />

<!-- Custom Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css' />
<link
	href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet"
	href="<c:url value="/resources/font-awesome/css/font-awesome.min.css"/>"
	type="text/css" />

<!-- Custom CSS -->
<link rel="stylesheet" href="<c:url value="/resources/css/creative.css" />"
	type="text/css" />
<meta charset="UTF-8" />
</head>
<body id="top-page">
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#"> 
					<img src="<c:url value="/resources/images/aemon.png"/>" class="img-responsive" alt="" width="50%" height="50%" />
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="page-scroll" href="#about"><spring:message code="menu.about" text="About" /></a></li>
					<li><a class="page-scroll" href="#services"><spring:message code="menu.services" text="Services" /></a></li>
					<li><a class="page-scroll" href="#portfolio"><spring:message code="menu.portfolio" text="Portfolio" /></a></li>
					<li><a class="page-scroll" href="#contact"><spring:message code="menu.contact" text="Contact" /></a></li>
					<li class="langli page-scroll hoverSelector">
					<a class="glyphicon glyphicon-globe"> </a>
					<ul class="languages hoverSelectorBlock" id="lang_ul"> 
							<c:if test="${pageContext.response.locale.language != 'pl'}">
								<li class="active"><a href="?language=en">English  
								<i class="fa fa-check glyphicon glyphicon-ok"></i></a></li>
								<li><a href="?language=pl_PL">Polski</a></li>
							</c:if>
							<c:if test="${pageContext.response.locale.language eq 'pl'}">
								<li><a href="?language=en">English</a></li> 
								<li  class="active"><a href="?language=pl_PL">Polski
								<i class="fa fa-check glyphicon glyphicon-ok"></i></a></li>
							</c:if>
					</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<header>
		<div class="header-content">
			<div class="header-content-inner">
				<h1>
					<spring:message code="welcome.welcome" text="We help you create your idea!" />
				</h1>
				<hr />
				<p>
					<spring:message code="welcome.whoweare" text="AEMON provides complex software development services. We create backend's transaction services for 
						one of the biggest bank in Poland, websites, mobile and dekstop applications, and many others." />
				</p>
				<a href="#about" class="btn btn-primary btn-xl page-scroll">
					<spring:message code="welcome.findoutmore" text="Find out more" />
				</a>
			</div>
		</div>
	</header>

	<section class="bg-primary" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">
						<spring:message code="about.about" text="We've got what you need!" />
					</h2>
					<hr class="light" />
					<p class="text-faded">
						<spring:message code="about.ourdevelopers" text="Our developers use most modern
							technologies. There is very long list of tools, frameworks,
							languages, templates and schemes we use every day. If you want to
							create a complex shop website, choose us. If you need just an
							simple company page we can also help you. We've got necessary
							experience and skills. " />
					</p>
					<a href="#" class="btn btn-default btn-xl">Get Started!</a>
				</div>
			</div>
		</div>
	</section>

	<section id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">
						<spring:message code="services.header" text="At Your Service" />
					</h2>
					<hr class="primary" />
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-globe wow bounceIn text-primary"></i>
						<h3>
							<spring:message code="services.java" text="Java" />
						</h3>
						<p class="text-muted">
							<spring:message code="services.java2" text="We use Spring, Hibernate, JPS, JPA and
									any other suitable frameworks." />
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-linux wow bounceIn text-primary"
							data-wow-delay=".1s"></i>
						<h3>
							<spring:message code="services.c" text="C/C++" />
						</h3>
						<p class="text-muted">
							<spring:message code="services.c2" text="Embedded systems, Transaction
								Processing, OpenCV and OpenGL projects are also well known to us!" />
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-black-tie wow bounceIn text-primary"
							data-wow-delay=".2s"></i>
						<h3>
							<spring:message code="services.business" text="Business websites" />
						</h3>
						<p class="text-muted">
							<spring:message code="services.business2" text="We create appropriate site for your
								business." />
							
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-life-ring  wow bounceIn text-primary"
							data-wow-delay=".3s"></i>
						<h3>
							<spring:message code="services.support" text="Support" />
						Support
						</h3>
						<p class="text-muted">
							<spring:message code="services.support2" text="We provides full support if choose us.
								We are in touch 24/7!" />
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="no-padding" id="portfolio">
		<div class="container-fluid">
			<div class="row no-gutter">
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box" id="project1"> 
						<img src="<c:url value="/resources/img/portfolio/rps.jpg" />" class="img-responsive" alt="" />
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">
									<spring:message code="portfolio.head.rps" text="Scissors, paper and rock." />
								</div>
								<div class="project-name">
									<spring:message code="portfolio.head.rps.about" text="C++ project with use of OpenCV and picture recognition." />
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box" id="project2"> 
						<img src="<c:url value="/resources/img/portfolio/smom.jpg" />" class="img-responsive" alt="" />
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">
									<spring:message code="portfolio.head.smom" text="SMOM24 - your space in web." />
								</div>
								<div class="project-name">
									<spring:message code="portfolio.head.smom.about" text="Java Spring MVC project for SM \"Osiedle Młodych\"" />
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box" id="project3"> 
						<img src="<c:url value="/resources/img/portfolio/bzwbk.jpg" />" class="img-responsive" alt="" />
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">
									<spring:message code="portfolio.head.bzwbk" text="Tuxedo framework experts!" />
								</div>
								<div class="project-name">
									<spring:message code="portfolio.head.bzwbkl.about" text="Transaction processing expert support for Bank Zachodni WBK." />
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box" id="project4"> 
						<img src="<c:url value="/resources/img/portfolio/put.jpg" />" class="img-responsive" alt="" />
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">
									<spring:message code="portfolio.head.put" text="ROPS - ECTS - ects points/cards management system." />
								</div>
								<div class="project-name">
									<spring:message code="portfolio.head.put.about" text="Web application for students and
										lecturers at Poznan University of Technology." />
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box" id="project5"> 
						<img src="<c:url value="/resources/img/portfolio/apilia.jpg" />" class="img-responsive" alt="" />
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">
									<spring:message code="portfolio.head.apilia" text="Cooperation in software development." />
								</div>
								<div class="project-name">
									<spring:message code="portfolio.head.apilia.about" text="Many projects including tuxedo services." />
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box" id="project6"> 
						<img src="<c:url value="/resources/img/portfolio/github.jpg" />" class="img-responsive" alt="" />
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">
									<spring:message code="portfolio.head.github" text="Samples of open code." />
								</div>
								<div class="project-name">
									<spring:message code="portfolio.head.github.about" text="Github as code versioning system." />
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>

	<!--     <aside class="bg-dark">
        <div class="container text-center">
            <div class="call-to-action">
                <h2>Free Download at Start Bootstrap!</h2>
                <a href="#" class="btn btn-default btn-xl wow tada">Download Now!</a>
            </div>
        </div>
    </aside> -->

	<section class="collapse portfolio no-padding" id="portfolio1">
		<div class="container-fluid text-center">
			<div class="row" style="padding-top: 20px;">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">
						<spring:message code="portfolio.section.rps.head" text="Scissors, Paper, Rock Game!" />
					</h2>
					<hr class="primary" />
					<p>
						<spring:message code="portfolio.section.rps.mes1" text="RPS game used Open-CV library to image 
							recognition. After start of the game, application requires a photo of your hand as a sample." />
					</p>
					<p>
						<spring:message code="portfolio.section.rps.mes2" text=" When the game starts (you are able to 
							play in two different modes, versus computer and versus other person. In vs. computer mode, 
							computer draw its choice. In vs. other person mode, the camera image is divided into two pieces, 
							only for hands)." />
					</p>
					<iframe src="https://player.vimeo.com/video/53013160" width="500"
						height="293" frameborder="0" webkitallowfullscreen=""
						mozallowfullscreen="" allowfullscreen=""> </iframe>
					<p>
						<a href="https://vimeo.com/53013160">[KCK] Kamień, papier,
							nożyce</a> from <a href="https://vimeo.com/user14542683">clsbartek</a>
						on <a href="https://vimeo.com">Vimeo</a>.
					</p>
					<p>
						<spring:message code="portfolio.section.rps.mes3" text="Application takes a photo, change it to 
							HSV representation and starts to recognize a skin(it use Mahalanobis distance algorithm)." />
					</p>
					<iframe src="https://player.vimeo.com/video/53259524" width="500"
						height="293" frameborder="0" webkitallowfullscreen=""
						mozallowfullscree="" allowfullscreen=""> </iframe>
					<p>
						<a href="https://vimeo.com/53259524">[KCK] Kamień, papier,
							nożyce. 1vs1</a> from <a href="https://vimeo.com/user14542683">clsbartek</a>
						on <a href="https://vimeo.com">Vimeo</a>.
					</p>
					<p>
						<spring:message code="portfolio.section.rps.mes4" text="After that,it choose the biggest part of skin, 
							and check how many deformation is on it(for rock – 0, scissors 2-3, paper > 3)" />
					</p>
					<iframe src="https://player.vimeo.com/video/53206516" width="500"
						height="293" frameborder="0" webkitallowfullscreen=""
						mozallowfullscreen="" allowfullscreen=""> </iframe>
					<p>
						<a href="https://vimeo.com/53206516">[KCK] Kamień, papier,
							nożyce</a> from <a href="https://vimeo.com/user14542683">clsbartek</a>
						on <a href="https://vimeo.com">Vimeo</a>.
					</p>
					<a href="#portfolio" class="btn btn-primary btn-xl hide-btn">Hide</a>
				</div>
			</div>
		</div>
	</section>
	<section class="collapse portfolio no-padding" id="portfolio2">
		<div class="container-fluid text-center">
			<div class="row" style="padding-top: 20px;">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">
						<spring:message  code="portfolio.section.smom.head" text="Smom24 - your space in web!" />
					</h2>
					<hr class="primary" />
					<p>
						<spring:message code="portfolio.section.smom.mes1" text="Website for" /> 
						<a href="http://osiedlemlodych.pl" alt="Spółdzielnia Mieszkaniowa Osiedle Młodych">
							Spółdzielnia Mieszkaniowa "Osiedle Młodych"
						</a>.
					</p>
					<img src="<c:url value="/resources/img/smom24.jpg"/>" class="img-responsive" alt="" align="middle" />
					<p>
						<spring:message code="portfolio.section.smom.mes2" text="Website allows dwelers of association 
							to check their's rent and components of them. It allows also to register them in system
							and communicate with them via internet" />
					</p>
					<a href="#portfolio" class="btn btn-primary btn-xl hide-btn">Hide</a>
				</div>
			</div>
		</div>
	</section>

	<section class="collapse portfolio no-padding" id="portfolio3">
		<div class="container-fluid">
			<div class="row" style="padding-top: 20px;">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">
						<spring:message code="portfolio.section.bzwbk.head" text="Bank Zachodni WBK - tuxedo developer" />
					</h2>
					<hr class="primary" />
					<p>
						<spring:message code="portfolio.section.bzwbk.mes1" text="Support for" />
						<a href="http://bzwbk.pl" alt="Bank Zachodni WBK">
							Bank Zachodni WBK
						</a>.
					</p>
					<img src="<c:url value="/resources/img/bzwbk.jpg" />" class="img-responsive" alt="" align="middle" />
					<p>
						<spring:message code="portfolio.section.bzwbk.mes2" text="Support provides Oracle Tuxedo Middleware Framework
							development, services promotion, and implementation." />
					</p>
					<img src="<c:url value="/resources/img/tuxedo.jpg" />" class="img-responsive" alt="" align="middle" />
					<p>
						<spring:message code="portfolio.section.bzwbk.mes3" text="Bank Zachodni WBK is third biggest Bank in Poland." />
					</p>
					<a href="#portfolio" class="btn btn-primary btn-xl hide-btn">Hide</a>
				</div>
			</div>
		</div>
	</section>

	<section class="collapse portfolio no-padding" id="portfolio4">
		<div class="container-fluid">
			<div class="row" style="padding-top: 20px;">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">
						<spring:message code="portfolio.section.put.head" text="ROPS-ECTS for Poznan University of Technology." />
					</h2>
					<hr class="primary" />
					<p>
						<spring:message code="portfolio.section.put.mes1" text="Website for" /> 
						<a href="http://put.poznan.pl" alt="Poznan University of Technology">Poznan University of Technology.</a>.
					</p>
					<img src="<c:url value="/resources/img/put.jpg"/>" class="img-responsive" alt="" align="middle" />
					<p>
						<spring:message code="portfolio.section.put.mes2" text="Website provides ECTS cards and register of 
							programs of studies for lecturers and students at University." />
					</p>
					<img src="<c:url value="/resources/img/rops.jpg"/>" class="img-responsive" alt="" align="middle" />
					<p>
						<spring:message code="portfolio.section.put.mes3" text="Poznan University of Technology is one of 
							the best University in Poland." />
					</p>
					<a href="#portfolio" class="btn btn-primary btn-xl hide-btn">Hide</a>
				</div>
			</div>
		</div>
	</section>

	<section class="collapse portfolio no-padding" id="portfolio5">
		<div class="container-fluid">
			<div class="row" style="padding-top: 20px;">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">
						<spring:message code="portfolio.section.apilia.head" text="APILIA Marciniak-Parchimowicz" />
					</h2>
					<hr class="primary" />
					<p>
						<spring:message code="portfolio.section.apilia.mes1" text="Cooperation with" />
						<a href="http://apilia.pl" alt="Apilia">APILIA Marciniak-Parchimowicz.</a>.
					</p>
					<img src="<c:url value="/resources/img/apilia.jpg"/>" class="img-responsive" alt="" align="middle" />
					<p>
						<spring:message code="portfolio.section.apilia.mes2" text="Many projects including tuxedo 
							services and support." />
					</p>
					<a href="#portfolio" class="btn btn-primary btn-xl hide-btn">Hide</a>
				</div>
			</div>
		</div>
	</section>

	<section class="collapse portfolio no-padding" id="portfolio6">
		<div class="container-fluid">
			<div class="row" style="padding-top: 20px;">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">
						<spring:message code="portfolio.section.github.head" text="Samples of code." />
					</h2>
					<hr class="primary" />
					<p>
						<spring:message code="portfolio.section.github.mes1" text="Code samples available at" /> 
						<a href="http://github.com/bjarosinski" alt="Apilia">GitHub.</a>.
					</p>
					<img src="<c:url value="/resources/img/github.png"/>" class="img-responsive"alt="" align="middle" />
					<p>
						<spring:message code="portfolio.section.github.mes2" text="There are samples of four projects:"/>
					</p>
					<ul>
						<li>
							<b>Queue Module</b> - 
							<spring:message code="portfolio.section.github.mes3" text="linux kernel module 
								implements simple queue." />
						</li>
						<li>
							<b>R-P-S Game</b> - 
							<spring:message code="portfolio.section.github.mes4" text="Rock-Paper-Scissors 
								game using OpenCV, image recognition."/>
						</li>
						<li>
							<b>Snake-3D</b> - 
							<spring:message code="portfolio.section.github.mes5" text="OpenGl and Windows API game."/>
						</li>
						<li>
							<b>TextComunnicator</b> - 
							<spring:message code="portfolio.section.github.mes6" text="text communicator working in 
								company intranet. Developed with use of ncurses, threads and sockets."/>
						</li>
					</ul>
					<a href="#portfolio" class="btn btn-primary btn-xl hide-btn">Hide</a>
				</div>
			</div>
		</div>
	</section>

	<section id="contact">
		<div class="container text-center">
			<div class="row" style="padding-top: 20px;">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">
						<spring:message code="contact.visit" text="Vist us! Here you can find us."/>
					</h2>
					<hr class="primary" />
					<i class="fa fa-home fa-3x wow bounceIn"></i>
					<p>
						ul. Dolna Wilda 88F/85<br />61-501 Poznań
					</p>
				</div>
			</div>
			<div id="googleMap" style="width: 100%; padding-top: 20px;"></div>
			<div class="row" style="padding-top: 20px;">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">
						<spring:message code="contact.intouch" text="Let's Get In Touch!" />
					</h2>
					<hr class="primary" />
					<p>
						<spring:message code="contact.ready" text="Ready to start your next project with us? That's great! Give
							us a call or send us an email and we will get back to you as soon as possible!" />
					</p>
				</div>
				<div class="col-lg-4 col-lg-offset-2 text-center">
					<i class="fa fa-phone fa-3x wow bounceIn"></i>
					<p>509-032-734</p>
				</div>
				<div class="col-lg-4 text-center">
					<i class="fa fa-envelope-o fa-3x wow bounceIn" data-wow-delay=".1s"></i>
					<p>
						<a href="mailto:clsbartek@gmail.com">clsbartek@gmail.com</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.easing.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.fittext.js"/>"></script>
	<script src="<c:url value="/resources/js/wow.min.js"/>"></script>
	<script src="<c:url value="/resources/js/creative.js"/>"></script>
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script>
		function initialize() {
			var cw = $('#googleMap').width() / 2;
			$('#googleMap').css({
				'height' : cw + 'px'
			});
			var myCenter = new google.maps.LatLng(52.386904, 16.922593);
			var mapProp = {
				center : myCenter,
				zoom : 14,
				mapTypeId : google.maps.MapTypeId.ROADMAP
			};
			var map = new google.maps.Map(document.getElementById("googleMap"),
					mapProp);
			var marker = new google.maps.Marker({
				position : myCenter,
				animation : google.maps.Animation.BOUNCE
			});

			marker.setMap(map);
		}
		google.maps.event.addDomListener(window, 'load', initialize);
	</script>
</body>
</html>