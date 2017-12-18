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
	<header>
		<div class="header-content">
			<div class="header-content-inner">
				<h1>
					<spring:message code="error.error" text="Sorry, we've got error: ." /> 
					<br/> ${errorMessage} </br>
				</h1>
				<h2>
					<spring:message code="error.error2" text="Go back to main page (or die trying)." />
				</h2>
				<hr />

				<a href="/aemon" class="btn btn-primary btn-xl page-scroll">
					<spring:message code="error.back" text="Go back" />
				</a>
			</div>
		</div>
	</header>
</body>
</html>