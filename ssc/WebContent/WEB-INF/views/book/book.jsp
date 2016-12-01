<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<%@ include file="/WEB-INF/views/inc/head.jsp"%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
  
  <script>
  $(function() {
	    $( "#Datepicker1" ).datepicker({
	         changeMonth: false, 
	         dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
	         dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	         monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
	         monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	         minDate: 0,
	         maxDate: "+60D"
	  });
	    $( "#Datepicker2" ).datepicker({
	         changeMonth: false, 
	         dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
	         dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	         monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
	         monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	         minDate: 0,
	         maxDate: "+60D"
	  		
	    });
	});
  </script>
  
  
  
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/topbar.jsp"%>

	<!-- 내용영역 -->
	<div class="main" id="c">
		<div class="container" id="b">
			<div class="col-sm-2" id="sidebar" role="navigation">
				<h2>예약버튼 들어올 자리</h2>
				<p>대여일: <input type="text" id="Datepicker1"><select><option>00:00</select></p>
				<p>반납일: <input type="text" id="Datepicker2"><select><option>00:00</select></p>
				
<script type="text/javascript">
$(function(){
    $("#zonelist").autocomplete({
    	source : function( request, response ) {
             $.ajax({
                    type: 'post',
                    url: "${pageContext.request.contextPath}/book1.do",
                    dataType: "json",	                
                    data: {
                    	term : request.term
                    },
                    success: function(data) {
                    	response(
                    		$.map(data.item, function (json) {
                    			return {
									value: json.zoneName,
									label: json.zoneName
								}
							})  
                    	)
                    },
                    error :function (data) {
                    	alert("ajax에러 발생");
                    }
                });
         }
     });
})
</script>
					
	
			<h2>자동완성기능</h2>
			<input id="zonelist" type="text" />
			
			</div>
			<!--탭 bar 끝-->

			<div id="mapbox" class="col-sm-10">
				<div id="map" style="width: 800px; height: 476px;"></div>
				<script type="text/javascript"
					src="http://apis.daum.net/maps/maps3.js?apikey=90fb1d3654482b09c1d9266d05b2e037"></script>
				<script>
					var container = document.getElementById('map');
					var options = {
						center : new daum.maps.LatLng(33.450701, 126.570667),
						level : 3
					};

					var map = new daum.maps.Map(container, options);
				</script>

			</div>
				<!--게시판 bar 끝-->
		</div>
		<!-- contain 끝-->

	</div>

	<!--main 끝-->


	<hr>
	
	<%@ include file="/WEB-INF/views/inc/footer.jsp"%>

</body>
</html>
