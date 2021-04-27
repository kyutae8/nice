<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link href='${pageContext.request.contextPath }/css/fullcalendar.css'rel='stylesheet' />
<script src='${pageContext.request.contextPath }/js/fullcalendar.js'></script>
<script src='${pageContext.request.contextPath }/js/locales-all.js'></script>

<script src="${pageContext.request.contextPath }/inc/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath }/inc/jquery.sliderPro.min.js"></script>
<script src="${pageContext.request.contextPath }/inc/wow.js"></script>
<script src="${pageContext.request.contextPath }/inc/nav_sub.js"></script>


<h1 class="h3 mb-2 text-gray-800">예약현황 달력</h1>

<!-- wrapper -->
<div class="card shadow mb-4">
	<div class="card-body">
	
				<%--이 사이에 인터넷 예약 --%>
				<div id="calendar" style="margin: 100px;"></div>
				
				<%--이 사이에 인터넷 예약 --%>

			
	</div>
	<!-- //True Content end -->
</div>

<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
      var calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'dayGridMonth',
        selectable : true,
        dayMaxEventRows: true, // for all non-TimeGrid views
        views: {
          timeGrid: {
            dayMaxEventRows: 3 // adjust to 6 only for timeGridWeek/timeGridDay
          }
        },
       events:            
      	  [
			<c:forEach var="res" items="${resList}">
			{title:'${res.resCosname} : ${res.resPlaytime}',start:'${fn:substring(res.resResdate,0,10)}' },
			</c:forEach>
      	    ],
      	    dateClick: function(info) {
      	        var tod = new Date();
      	        var toYear = tod.getFullYear();
      	        var toMonth = tod.getMonth()+1;
      	        var toDate = tod.getDate();
      	        if (toMonth.length = 1) {
				toMonth="0"+(tod.getMonth()+1);
			}if (toDate.length = 1) {
				todate = "0"+(tod.getDate());
			}
			var sys = toYear+"-"+toMonth+"-"+toDate;
			
			if (sys>=info.dateStr) {
				alert('Date: ' + info.dateStr);
			}else{
      	    	/* alert('Date: ' + info.dateStr); */
      	    	alert("예약이 불가능한 날짜입니다.");
			}
      	        
      	 	
      	      },
      	     
      	    eventClick: function(info) {
        	  var eventtitle = info.event.title;
        	  var eventstart = info.event.start;
        	    alert('예약정보: ' +eventtitle  + ' 날짜 = '+ eventstart);
        	   
        	    info.el.style.borderColor = 'red';
        	  }
      	  
      });
     	calendar.render();
    });
</script>

