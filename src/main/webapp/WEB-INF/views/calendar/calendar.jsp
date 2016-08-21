<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
    #calendar {
        max-width : 900px;
        margin : 0 auto;
    }
</style>


<link href="${pageContext.request.contextPath }/css/calendar/fullcalendar.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath }/css/calendar/fullcalendar.print.css" rel="stylesheet" media="print"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery/calendar/moment.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery/calendar/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery/calendar/fullcalendar.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	/* $('#calendar').fullCalendar({
	    dayClick: function(date, jsEvent, view, resourceObj) {

	        alert('Date: ' + date.format());
	        alert('Resource ID: ' + resourceObj.id);

	    }
	}); */
	
	$('#calendar').fullCalendar({
		
		    eventClick: function(calEvent, jsEvent, view) {

		        alert('Event: ' + calEvent.title);
		       // alert('Event: ' + (new Date(calEvent.start)));
		        //alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
		        //alert('View: ' + view.name);
				//$(location).attr("href","http://www.naver.com");
				$(location).attr("href","${pageContext.request.contextPath }/calendar/calendar?calDate="+calEvent.start);
		        // change the border color just for fun
		        //$(this).css('border-color', 'red');

		    },
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
			/* right: 'month,agendaWeek,agendaDay' */
		},
		defaultDate: '2016-06-12',
		businessHours: true, // display business hours
		editable: true,
		events: [
			{
				title : "여행",
				start : "2016-06-03",
			},
			{
				start : "2016-06-03",
				rendering: 'background',
				color: '#0000FF'
			},
			{
				title: '여행',
				start: '2016-06-20',
				end: '2016-06-22'

			},
			{
				start : '2016-06-20',
				end: '2016-06-22',
				rendering: 'background',
				color: '#0000FF'
			},
			{
				title: '맛집',
				start: '2016-06-08',
			},
			{
				start : '2016-06-08',
				rendering: 'background',
				color: '#FF00FF'
			},
			{
				title: '맛집',
				start: '2016-06-18',
				end: '2016-06-20',
			},
			{
				start : '2016-06-18',
				end: '2016-06-20',
				rendering: 'background',
				color: '#FF00FF'
			},
			{
				title: '일상',
				start: '2016-06-04',
			},
			{
				start : '2016-06-04',
				rendering: 'background',
				color: '#0FFFFF'
			},
			{
				title: '일상',
				start: '2016-06-15',
			},
			{
				start : '2016-06-15',
				rendering: 'background',
				color: '#0FFFFF'
			},
			{
				title: '일상',
				start: '2016-06-13',
			},
			{
				start : '2016-06-13',
				rendering: 'background',
				color: '#0FFFFF'
			}
		],
	});
	
});
</script>
</head>
<body>
calendar
<div id="calendar"></div>
</body>
</html>