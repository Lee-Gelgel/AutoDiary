<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Header</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/jquery/jquery-3.1.0.min.js"></script>
<style>
#Header_outside {
	background-color: skyblue;
	margin: auto;
	width: 100%;
	height: 75px;
}

#Header_inside {
	height: 100%;
	text-align: center;
	line-height: 75px;
}

button {
	width: 50px;
	height: 30px;
}

#map_toggle, #cal_toggle {
	display: none;
}
</style>
<script>
	$(function() {
		$(".header_btn").click(function() {
			//alert($(this).text());
			if ($(this).text() == "map") {
				$("#map_toggle").slideToggle();
			}
			if ($(this).text() == "calender") {
				$("#cal_toggle").slideToggle();
			}
			if ($(this).text() == "signOut") {
				window.location="${pageContext.request.contextPath }/sign/signOut";
			}
		});
	});
</script>
</head>
<body>
	<c:choose>
		<c:when test="${not empty accessToken }">
			<div id="Header_outside">
				<div id="Header_inside">
					<h1 style="display: inline-block;">Header</h1>
					<button class="header_btn">calender</button>
					<button class="header_btn">map</button>
					<button class="header_btn">signOut</button>
					<h3>accessToken : ${accessToken }</h3>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div id="Header_outside">
				<div id="Header_inside">
					<h1>Header</h1>
					<h3>Hello Guest</h3>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
	<!-- <div id="Header_outside">
		<div id="Header_inside">
			<h1>Header</h1>
		</div>
	</div> -->
	<!-- <div id="Header_outside">
		<div id="Header_inside">
			<h1 style="display: inline-block;">Header</h1>
			<button class="header_btn">calender</button>
			<button class="header_btn">map</button>
			<button class="header_btn">signin</button>
		</div>
	</div> -->
</body>
</html>