<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/css/init.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/css/calendar/fullcalendar.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/css/calendar/fullcalendar.print.css"
	rel="stylesheet" media="print" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/jquery/calendar/moment.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/jquery/calendar/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/jquery/calendar/fullcalendar.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		jQuery("#calendar").fullCalendar({
			defaultDate : "2016-05-12",
			editable : true,
			eventLimit : true,
			events : [ {
				title : "All Day Event",
				start : "2016-05-01"
			}, {
				title : "Long Event",
				start : "2016-05-07",
				end : "2016-05-10"
			}, {
				id : 999,
				title : "Repeating Event",
				start : "2016-05-09T16:00:00"
			}, {
				id : 999,
				title : "Repeating Event",
				start : "2016-05-16T16:00:00"
			}, {
				title : "Conference",
				start : "2016-05-11",
				end : "2016-05-13"
			}, {
				title : "Meeting",
				start : "2016-05-12T10:30:00",
				end : "2016-05-12T12:30:00"
			}, {
				title : "Lunch",
				start : "2016-05-12T12:00:00"
			}, {
				title : "Meeting",
				start : "2016-05-12T14:30:00"
			}, {
				title : "Happy Hour",
				start : "2016-05-12T17:30:00"
			}, {
				title : "Dinner",
				start : "2016-05-12T20:00:00"
			}, {
				title : "Birthday Party",
				start : "2016-05-13T07:00:00"
			}, {
				title : "Click for Google",
				url : "http://google.com/",
				start : "2016-05-28"
			} ]
		});
	});
</script>

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
					<%-- <img src="${pageContext.request.contextPath }/images/googlecal.png"> --%>
					<!--  <div id="calendar"></div> -->
					<div id="calendar"></div>
				</div>
			</div>
			<div id="map">
				<h2>google map</h2>
				<div id="map_toggle">
					<img
						src="${pageContext.request.contextPath }/images/googlemap.jpeg">
				</div>

			</div>
			<%-- <a href="${pageContext.request.contextPath }/calendar/calendar">Calendar</a> --%>
		</div>
	</div>
	<div id="footer">
		<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
	</div>

</body>
</html>