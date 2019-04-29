<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html; charset=utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800"
	rel="stylesheet">
<link rel="stylesheet" href="resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<link rel="stylesheet" href="resources/css/jquery-ui.css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/rangeslider.css">
<link rel="stylesheet" href="resources/css/style.css">
<title>Flip</title>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Raleway:300,700);

@import
	url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css)
	;

figure.snip1384 {
	font-family: 'Raleway', Arial, sans-serif;
	position: relative;
	overflow: hidden;
	margin: 10px;
	min-width: 230px;
	max-width: 500px;
	height: 500px;
	width: 100%;
	color: #ffffff;
	text-align: left;
	font-size: 16px;
	background-color: #000000;
}

figure.snip1384 * {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all 0.35s ease;
	transition: all 0.35s ease;
}

figure.snip1384 img {
	max-width: 100%;
	backface-visibility: hidden;
	vertical-align: top;
}

figure.snip1384:after, figure.snip1384 figcaption {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
}

figure.snip1384:after {
	content: '';
	background-color: rgba(0, 0, 0, 0.65);
	-webkit-transition: all 0.35s ease;
	transition: all 0.35s ease;
	opacity: 0;
}

figure.snip1384 figcaption {
	z-index: 1;
	padding: 40px;
}

figure.snip1384 h3, figure.snip1384 .links {
	width: 100%;
	margin: 5px 0;
	padding: 0;
}

figure.snip1384 h3 {
	line-height: 1.1em;
	font-weight: 700;
	font-size: 1.4em;
	text-transform: uppercase;
	opacity: 0;
}

figure.snip1384 p {
	font-size: 0.8em;
	font-weight: 300;
	letter-spacing: 1px;
	opacity: 0;
	top: 50%;
	-webkit-transform: translateY(40px);
	transform: translateY(40px);
}

figure.snip1384 i {
	position: absolute;
	bottom: 10px;
	right: 10px;
	padding: 20px 25px;
	font-size: 34px;
	opacity: 0;
	-webkit-transform: translateX(-10px);
	transform: translateX(-10px);
}

figure.snip1384 a {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	z-index: 1;
}

figure.snip1384:hover img, figure.snip1384.hover img {
	zoom: 1;
	filter: alpha(opacity = 50);
	-webkit-opacity: 0.5;
	opacity: 0.5;
}

figure.snip1384:hover:after, figure.snip1384.hover:after {
	opacity: 1;
	position: absolute;
	top: 10px;
	bottom: 10px;
	left: 10px;
	right: 10px;
}

figure.snip1384:hover h3, figure.snip1384.hover h3, figure.snip1384:hover p,
	figure.snip1384.hover p, figure.snip1384:hover i, figure.snip1384.hover i
	{
	-webkit-transform: translate(0px, 0px);
	transform: translate(0px, 0px);
	opacity: 1;
}
</style>
</head>
<body>
	<div class="site-wrap bg-light">

		<div class="site-mobile-menu">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>

		<!-- header -->
		<jsp:include page="header.jsp" />
		<!-- header 종료 -->
		<div class="container">
			<div
				class="row align-items-center justify-content-center text-center">
				<div class="col-md-12">
					<div class="row justify-content-center mb-4">
						<div class="col-md-8 text-center">
							<h1 class="" data-aos="fade-up">
								지루한 일상을 뒤엎다!!<span class="text-warning">플</span><span
									class="text-primary">립</span>
							</h1>
							<p data-aos="fade-up" data-aos-delay="100">You can buy, sell
								anything you want.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
			<div class="row align-items-center justify-content-center">
				<figure class="snip1384">
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample83.jpg"
						alt="sample83" />
					<figcaption>
						<h3>Fleece Marigold</h3>
						<p>Which is worse, that everyone has his price, or that the
							price is always so low.</p>
						<i class="ion-ios-arrow-right"></i>
					</figcaption>
					<a href="class_addform.do"></a>
				</figure>
				<figure class="snip1384">
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample66.jpg"
						alt="sample66" />
					<figcaption>
						<h3>Guy Mann</h3>
						<p>I'm killing time while I wait for life to shower me with
							meaning and happiness.</p>
						<i class="ion-ios-arrow-right"></i>
					</figcaption>
					<a href="class_addform.do"></a>
				</figure>
				<figure class="snip1384">
					<img
						src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample92.jpg"
						alt="sample92" />
					<figcaption>
						<h3>Nigel Nigel</h3>
						<p>The only skills I have the patience to learn are those that
							have no real application in life.</p>
						<i class="ion-ios-arrow-right"></i>
					</figcaption>
					<a href="class_addform.do"></a>
				</figure>
			</div>
		
		<!-- footer 수정 해야함  -->
		<div>
			<jsp:include page="footer.jsp" />
		</div>
	</div>
</body>

</html>