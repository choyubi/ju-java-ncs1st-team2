<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/views/inc/head.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

</head>

<body>
	<%@ include file="/WEB-INF/views/inc/topbar.jsp"%>

	<!-- 내용영역 -->
	<div class="main" id="c">
		<div class="container" id="b">
			<div class="col-sm-2" id="sidebar" role="navigation">
				<h2>예약버튼 들어올 자리</h2>
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
