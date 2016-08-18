<!doctype html>
<html>
<head>

<meta charset="utf-8">
<title>Intro</title>
<meta name="description"
	content="SlidesJS is a simple slideshow plugin for jQuery. Packed with a useful set of features to help novice and advanced developers alike create elegant and user-friendly slideshows.">
<meta name="author" content="Nathan Searles">

<!-- SlidesJS Required (if responsive): Sets the page width to the device width. -->
<meta name="viewport" content="width=device-width">
<!-- End SlidesJS Required -->

<!-- CSS for slidesjs.com example -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/intro/example.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/intro/font-awesome.min.css">
<!-- End CSS for slidesjs.com example -->

<!-- SlidesJS Optional: If you'd like to use this design -->
<style>
body {
	-webkit-font-smoothing: antialiased;
	font: normal 15px/1.5 "Helvetica Neue", Helvetica, Arial, sans-serif;
	color: #232525;
	padding-top: 70px;
}

#slides {
	display: none
}

#slides .slidesjs-navigation {
	margin-top: 5px;
}

a.slidesjs-next, a.slidesjs-previous, a.slidesjs-play, a.slidesjs-stop {
	background-image:
		url(${pageContext.request.contextPath }/images/intro/btns-next-prev.png);
	background-repeat: no-repeat;
	display: block;
	width: 12px;
	height: 18px;
	overflow: hidden;
	text-indent: -9999px;
	float: left;
	margin-right: 5px;
}

a.slidesjs-next {
	margin-right: 10px;
	background-position: -12px 0;
}

a:hover.slidesjs-next {
	background-position: -12px -18px;
}

a.slidesjs-previous {
	background-position: 0 0;
}

a:hover.slidesjs-previous {
	background-position: 0 -18px;
}

a.slidesjs-play {
	width: 15px;
	background-position: -25px 0;
}

a:hover.slidesjs-play {
	background-position: -25px -18px;
}

a.slidesjs-stop {
	width: 18px;
	background-position: -41px 0;
}

a:hover.slidesjs-stop {
	background-position: -41px -18px;
}

.slidesjs-pagination {
	margin: 7px 0 0;
	float: right;
	list-style: none;
}

.slidesjs-pagination li {
	float: left;
	margin: 0 1px;
}

.slidesjs-pagination li a {
	display: block;
	width: 13px;
	height: 0;
	padding-top: 13px;
	background-image:
		url(${pageContext.request.contextPath }/images/intro/pagination.png);
	background-position: 0 0;
	float: left;
	overflow: hidden;
}

.slidesjs-pagination li a.active, .slidesjs-pagination li a:hover.active
	{
	background-position: 0 -13px
}

.slidesjs-pagination li a:hover {
	background-position: 0 -26px
}

#slides a:link, #slides a:visited {
	color: #333
}

#slides a:hover, #slides a:active {
	color: #9e2020
}

.navbar {
	overflow: hidden
}
</style>
<!-- End SlidesJS Optional-->

<!-- SlidesJS Required: These styles are required if you'd like a responsive slideshow -->
<style>
#slides {
	display: none
}

.container {
	margin: 0 auto
}

/* For tablets & smart phones */
@media ( max-width : 767px) {
	body {
		padding-left: 20px;
		padding-right: 20px;
	}
	.container {
		width: auto
	}
}

/* For smartphones */
@media ( max-width : 480px) {
	.container {
		width: auto
	}
}

/* For smaller displays like laptops */
@media ( min-width : 768px) and (max-width: 979px) {
	.container {
		width: 724px
	}
}

/* For larger displays */
@media ( min-width : 1200px) {
	.container {
		width: 1170px
	}
}
</style>
<!-- SlidesJS Required: -->
<style>
#intro_button {
width : 404px;
overflow : hidden;
	margin : 20px auto;
	display: block;
	text-align: center;
}
#intro_button a {
	border : 0.5px solid red;
	display: block;
	width: 200px;
	font-size: 30px;
	background-color: yellow;
	float: left;
}
</style>

<script type="text/javascript">
	//var google_sign_in_win;
	function signIn(){
		//google_sign_in_win = window.open("${google_sign_in_url}", "", "width=450, height=600, left=400, top=100");
		window.open("${google_sign_in_url}", "", "width=450, height=600, left=400, top=100");
	}
</script>

</head>
<body>
	<!-- SlidesJS Required: Start Slides -->
	<!-- The container is used to define the width of the slideshow -->
	<div class="container">
		<div id="slides">
			<img
				src="${pageContext.request.contextPath }/images/intro/myPet.jpeg">
			<img
				src="${pageContext.request.contextPath }/images/intro/myPet2.jpeg">
			<img
				src="${pageContext.request.contextPath }/images/intro/myPet3.jpeg">
		</div>
	</div>
	<!-- End SlidesJS Required: Start Slides -->

	<!-- SlidesJS Required: Link to jQuery -->
	<script
		src="${pageContext.request.contextPath }/jquery/jquery-3.1.0.min.js"></script>
	<!-- End SlidesJS Required -->

	<!-- SlidesJS Required: Link to jquery.slides.js -->
	<script
		src="${pageContext.request.contextPath }/jquery/jquery.slides.min.js"></script>
	<!-- End SlidesJS Required -->

	<!-- SlidesJS Required: Initialize SlidesJS with a jQuery doc ready -->
	<script>
		$(function() {
			$('#slides').slidesjs({
				width : 940,
				height : 528,
				play : {
					active : true,
					auto : true,
					interval : 2000,
					swap : true
				}
			});
		});
	</script>
	<!-- End SlidesJS Required -->
	
	

	<div id="intro_button">
		<a href="#" onclick="signIn()">Sign In</a>
		<a href="${pageContext.request.contextPath }/main/main">Look Round</a>
	</div>
</body>
</html>
