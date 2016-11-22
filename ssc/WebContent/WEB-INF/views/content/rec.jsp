<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/views/inc/head.jsp"%>

</head>

<body>
<%@ include file="/WEB-INF/views/inc/topbar.jsp"%>


	<!-- 내용영역 -->
	<div class="main" id="c">
		<div class="container" id="b">
			<div class="col-sm-2" id="sidebar" role="navigation">
				<div class="list-group">
					<a href="${pageContext.request.contextPath}/bbs/document_list.do?category=gallery" class="list-group-item"><strong>추천지</strong></a>
					<a href="${pageContext.request.contextPath}/bbs/document_list.do?category=review" class="list-group-item"><strong>이용후기</strong></a>


				</div>
			</div>
			<!--탭 bar 끝-->

			<div class="col-sm-10">


					<img src="img/31.jpg" width="100%" height="200px"><a
						href="#"></a>

				<br>
				<br>
				<br>




					<!-- 데스크탑: 한 줄에 4개, 태블릿: 한 줄에 2개 씩 배치되도록 그리드 구성 -->
					<div class="row">
						<!-- 게시물 하나 시작 -->
						<div class="col-sm-5 col-md-9">
							<div class="thumbnail">

								<img alt="d" src="img/여행지1.jpg">
								<div class="caption">
									<h5><strong>메타세콰이어길</strong></h5>
									<p>전라남도 담양에 있는 이 길은 데이트 코스로 걷기에도 좋고 바쁜 일상에서 잠깐 여유를 가지고...</p>
								</div>
							</div>
						</div>
						<!-- 게시물 하나 끝 -->
						<!-- 게시물 하나 시작 -->
						<div class="col-sm-5 col-md-3">
							<div class="thumbnail">
								<img alt="d" src="img/여행지2.jpg">
								<div class="caption">
									<h5><strong>하늘공원</strong></h5>
									<p>서울시 마포구에 있는 하늘공원은 억새가 피는 계절인 가을...</p>
								</div>
							</div>
						</div>
						<!--// 게시물 하나 끝 -->
						<!-- 게시물 하나 시작 -->
						<div class="col-sm-5 col-md-3">
							<div class="thumbnail">
								<img alt="d" src="img/여행지3.jpg">
								<div class="caption">
									<h5><strong>낙산공원</strong></h5>
									<p>서울시 종로구에 있는 낙산공원은 서울시내에 있는 옛 성곽길...</p>
								</div>
							</div>
						</div>
						<!--// 게시물 하나 끝 -->
					</div>
						<!-- 더 보기 버튼 -->
						<div class="">
							<a href="${pageContext.request.contextPath}/bbs/document_list.do?category=gallery" class="btn btn-info btn-block">더 보기</a>	
						</div>
					<!-- row 영역 끝 -->				
				</div>
				<!--게시판 contain 끝 -->
			</div>
			<!-- col-sm-10 끝 -->

			<!-- 이미지 게시판 끝-->
	</div>
	<!--main 끝-->


		<hr>	
	
	<%@ include file="/WEB-INF/views/inc/footer.jsp"%>
	
</body>
</html>
