<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath }/css/init.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main</title>

</head>
<body>
	<div id="header">
		<jsp:include page="/WEB-INF/views/header/header.jsp" />
	</div>

	<div id="wrap">
		<div id="content">
			<h1>Main Page</h1>
			<div id="calender">
				<h2>google calender</h2>
				<div id="cal_toggle">
					<img src="${pageContext.request.contextPath }/images/googlecal.png">
				</div>
			</div>
			<div id="map">
				<h2>google map</h2>
				<div id="map_toggle">
					<img src="${pageContext.request.contextPath }/images/googlemap.jpeg">
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
	</div>
	
</body>
</html>