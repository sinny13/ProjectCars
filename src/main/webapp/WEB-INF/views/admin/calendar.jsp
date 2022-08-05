<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${ctx}/resources/css/calendar.css" rel='stylesheet' />
<script type="text/javascript" src="${ctx}/resources/js/calendar.js"></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
	  const request = $.ajax({
		  url: "/calendars", // 변경하기
		  method: "GET",
		  dataType: "json"
	  });

	  request.done(function (data) {
		  let events = [];
		  console.log(data); // log 로 데이터 찍어주기.
		  // var arr = [{title: 'evt1', start: '2022-02-07'}, {title: 'evt2', start: '2022-02-08'}];
		  data.forEach(function(item){
			  events.push({
				  title: item.title,
				  start: item.start,
			  });
		  });
		  console.log(events);

		  // const arr = Array.from(data);


		  var calendarEl = document.getElementById('calendar');

		  var calendar = new FullCalendar.Calendar(calendarEl, {
			  initialDate: '2022-02-07',
			  initialView: 'timeGridWeek',
			  headerToolbar: {
				  left: 'prev,next today',
				  center: 'title',
				  right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
			  },
			  editable: true,
			  droppable: true,
			  drop: function (arg) {
				  if (document.getElementById('drop-remove').checked) {
					  arg.draggedEl.parentNode.removeChild(arg.draggedEl);
				  }
			  },
			  events: events
		  });

		  calendar.render();
	  });
  });

</script>

</head>
<body>
	<div id='calendar'></div>
</body>
</html>