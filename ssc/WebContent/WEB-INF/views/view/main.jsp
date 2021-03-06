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

	


	<div id="container">
		<!-- 캐러셀 영역 구성 -->
		<div id="carousel-generic" class="carousel slide" data-ride="carousel">
			<!-- 현재 위치 표시 -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-generic" data-slide-to="1"></li>
				<li data-target="#carousel-generic" data-slide-to="2"></li>
			</ol>
			<!-- 내용 영역 -->
			<div class="carousel-inner">
				<!-- 항목 (1) -->
				<div class="item active">
					<img style="z-index: 1;" src="img/44.png" alt="슬라이더(1)">
					<div class="container">
						<div class="carousel-caption">
							<h1>대한민국 최고의 카쉐어링!</h1>
							<h2>Ssc는 최저가를 보장합니다.</h2>
							<img alt="차차차" src="img/최종차.png">
						</div>
					</div>
				</div>

				<!-- 항목 (2) -->
				<div class="item">
					<img src="img/11.png" alt="슬라이더(2)">
					<div class="container">
						<div class="carousel-caption">
							<h1>신규 자동차 오픈했습니다!!</h1>
							<h2>신규 자동차 오픈</h2>
							<img alt="차차차" src="img/최종차.png">
						</div>
					</div>
				</div>

				<!-- 항목 (3) -->
				<div class="item">
					<img src="img/55.png" alt="슬라이더(3)">
					<div class="container">
						<div class="carousel-caption">

							<h1>추천지를 통해 데이트를 !!</h1>
							<h2>기분에 따른 장소를 추천해드립니다.</h2>
							<img alt="차차차" src="img/최종차.png">
						</div>
					</div>
				</div>
			</div>
			<!-- // 내용영역 -->

		</div>
		<!-- 캐러셀 영역 끝 -->
	</div>

	<hr>


	<!-- 내용영역 -->
	<div class="main" >
	<div class="container">

		<!-- grid -->
		<div class="row">
			<!-- 메인영역 : 데스크탑까지 왼쪽 9 차지. 태블릿 이하에서 상단 라인 차지 -->


			<!-- 핸드폰/태블릿 에서의 여백용 -->
			<div class="clearfix visible-sm visible-xs height"></div>
			<!-- 사이드바 영역 : 데스크탑까지 오른쪽 3 차지. 태블릿 이하에서 하단 라인 차지 -->
		
			<div class="col-md-8">
				<!--  메인영역의 화면 분할 50%:50% - xs 클래스이므로 모바일까지도 유효함 -->

				<!-- 탭 메뉴 시작 -->
				<ul class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab"><strong>공지사항</strong></a></li>
					<li><a href="#profile" data-toggle="tab"><strong>이용후기</strong></a></li>
					
				</ul>
				<!--// 탭 메뉴 끝 -->

				<!-- 탭 화면 시작 -->
				<div class="tab-content">
					<div class="tab-pane fade in active" id="home">
							<div class="col-md-12 article-item">
								<ul class="list-group">
									<c:forEach var="document" items="${noticeList}">
										<li class="list-group-item"><a
											href="${pageContext.request.contextPath}/bbs/document_read.do?category=${document.category}&document_id=${document.id}">${document.subject}</a>
										</li>
									</c:forEach>
								</ul>
								<div class="pull-right">
										<a href="${pageContext.request.contextPath}/bbs/document_list.do?category=notice" class="btn btn-primary btn-xs">more</a>
								</div>
							</div>
						</div>

					<div class="tab-pane fade" id="profile">
							<div class="col-md-12 article-item">
								<ul class="list-group">
									<c:forEach var="document" items="${reviewList}">
										<li class="list-group-item"><a
											href="${pageContext.request.contextPath}/bbs/document_read.do?category=${document.category}&document_id=${document.id}">${document.subject}</a>
										</li>
									</c:forEach>
								</ul>
								<div class="pull-right">
										<a href="${pageContext.request.contextPath}/bbs/document_list.do?category=review" class="btn btn-primary btn-xs">more</a>
									</div>
							</div>
						</div>
				</div>				
			</div>
			<!--// 탭 화면 끝 -->
	

			<div id="a1">
				<div class="col-md-3">
				<c:choose>
					<c:when test="${loginInfo != null }">
						<div>
						
							<fieldset>
							
							<legend>
								<c:if test="${cookie.profileThumbnail != null}">
									<img src="${pageContext.request.contextPath}/download.do?file=${cookie.profileThumbnail.value}"/>
								</c:if>
								${loginInfo.name}님 
							</legend>
						
							<div>
								<a href="${pageContext.request.contextPath}/logout.do" class="btn btn-danger btn-block">로그아웃</a>
								<a href="${pageContext.request.contextPath}/mypage1.do" class="btn btn-warning btn-block">회원수정</a>
								<a href="${pageContext.request.contextPath}/mypage2.do" class="btn btn-primary btn-block">예약내역</a>
							</div>
							</fieldset>
						</div>
					</c:when>
					<c:otherwise>
					<form role="form" method="post" action="${pageContext.request.contextPath }/user/login_ok.do">
						<fieldset>
							<legend><strong>로그인</strong></legend>		
							<div class="form-group">
								<label for="u_id">아이디</label>
								<input type="text" name="u_id" id="u_id" class="form-control" placeholder="아이디를 입력하세요."/>							
							</div>
							<div class="form-group">
								<label for="u_pw">비밀번호</label>
								<input type="password" name="u_pw" id="u_pw" class="form-control" placeholder="비밀번호를 입력하세요."/>							
							</div>
							<button type="submit" class="btn btn-warning">
								로그인
							</button>
							<a href="${pageContext.request.contextPath}/join.do" class="btn btn-danger">회원가입</a>
							<a href="${pageContext.request.contextPath}/join3.do" class="btn btn-info">ID/PW 찾기</a>				
						</fieldset>
					</form>
					</c:otherwise>
				</c:choose>
				</div>
			</div>
			<!--// login 끝 -->
		</div>
		<!--row 끝-->
	</div>
	<!-- contain 끝-->
	</div>
	<!--main 끝-->


		<hr>	

	<%@ include file="/WEB-INF/views/inc/footer.jsp"%>
	
</body>
</html>
