<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

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
<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=90fb1d3654482b09c1d9266d05b2e037"></script>				
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
                    	alert("자동완성 ajax에러 발생");
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
    <script type="text/javascript">
        window.onload = function(num) {
              

            // 다중 마커와 인포윈도우 표시	
             $.ajax({
                    type: 'post',
                    url: "${pageContext.request.contextPath}/book1.do",
                    dataType: "json",	                
                    success: function(json) {
                        // 지도의 중심
                        var position = new daum.maps.LatLng(37.362186, 127.106865);
                   
                        // 기본 지도 표시
                        var map = new daum.maps.Map(document.getElementById('map'), {
                            center: position,
                            level: 5,
                            mapTypeId: daum.maps.MapTypeId.ROADMAP
                        });
                      
                        // 지도 콘트론 표시
                        var zoomControl = new daum.maps.ZoomControl();
                        map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
                        var mapTypeControl = new daum.maps.MapTypeControl();
                        map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
                   
                        var imageSrc = "http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
                        
                        for (var i = 0; i < json.item.length; i++) {			    
             			    // 마커 이미지의 이미지 크기 입니다
             			    var imageSize = new daum.maps.Size(24, 35); 			    
             			    // 마커 이미지를 생성합니다    
             			    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 			    
             			    // 마커를 생성합니다
             			    var marker = new daum.maps.Marker({
             			    	map: map, // 마커를 표시할 지도
             			        position: new daum.maps.LatLng(json.item[i].zoneLat, json.item[i].zoneLng), // 마커를 표시할 위치
             			        title : json.item[i].zoneName, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
             			        image : markerImage // 마커 이미지 
             			    });
             			    
             			    
             			    
             			     
// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
var iwContent = "<div>" + json.item[i].zoneName + "</div>", // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

             			    // 마커에 표시할 인포윈도우를 생성합니다 
             			    var infowindow = new daum.maps.InfoWindow({
             			    	content : iwContent,
             			        removable : iwRemoveable
             			    	//"<div>" + json.item[i].zoneName + "</div>"
             			    	//content: iwContent // 인포윈도우에 표시할 내용
             			    });
             			   	
             			    daum.maps.event.addListener(marker, 'click', function() {
             			      // 마커 위에 인포윈도우를 표시합니다
             			      alert("클릭확인");
             			      infowindow.open(map, marker); 
             				});
             			  
             			}
                    },
                    error :function (data) {
                    	alert("지도 ajax에러 발생");
                    }
                });
        };
           //위치 정보와 인포윈도우에 표시할 정도
//             var locations = [[37.362186,127.106865,'1번'],
//                              [37.6732922,128.7065569,'2번']];
           
           
//             for(i = 0; i < locations.length; i++) {
//                 // 다중 마커
//                 var marker = new daum.maps.Marker({
//                     position: new daum.maps.LatLng(locations[i][0], locations[i][1])
//                 });
//                 marker.setMap(map);
       
//                 //인포 윈도우
//                 daum.maps.event.addListener(marker, 'click', (function(marker, i) {
//                     return function() {
//                         var infowindow = new daum.maps.InfoWindow({
//                             content: '<p style="margin:7px 22px 7px 12px;font:12px/1.5 sans-serif">' + locations[i][2] + '</p>',
//                             removable : true
//                         });
//                       infowindow.open(map, marker);
//                     }
//                 })(marker, i));
//             }

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
