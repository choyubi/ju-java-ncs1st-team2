<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
					<a href="${pageContext.request.contextPath}/rec.do" class="list-group-item"><strong>추천지</strong></a>
					<a href="${pageContext.request.contextPath}/bbs/document_list.do?category=review" class="list-group-item"><strong>이용후기</strong></a>
				</div>
			</div>
			<!--탭 bar 끝-->
			<div class="col-sm-10">

				<div class="row" id="c">
					<div class="page-header">
						<h1>자주묻는질문</h1>
					</div>
					<div class="media">
						<img src="${pageContext.request.contextPath}/img/bbs.png">
						<div class="media-body">
							<h4>SSC가 궁금하세요? 자주찾는 질문을 이용하세요. 고객님의 궁금하신 사항을 빠르고 정확하게 해결하실
								수 있습니다.</h4>
							<hr />
						</div>
					</div>
				</div>
				

				<div class="row">
					<!-- 탭메뉴 -->
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a href="#a1" data-toggle="tab">예약결제문의</a></li>
						<li><a href="#a2" data-toggle="tab">가입문의</a></li>
						<li><a href="#a3" data-toggle="tab">차량이용/사고</a></li>
						<li><a href="#a4" data-toggle="tab">법인/단체문의</a></li>
						<li><a href="#a5" data-toggle="tab">탈퇴</a></li>
						<li><a href="#a6" data-toggle="tab">기타</a></li>
					</ul>
					<!-- //탭메뉴 -->

					<!-- 탭화면 -->
					<div class="tab-content">
						<div class="tab-pane fade in active" id="a1">
							<!-- 아코디언영역 -->
							<div class="panel-group" id="accordion1">
								<!-- 항목(1) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion1" href="#b1">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="b1" class="panel-collapse collapse in">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>
								<!-- 항목(2) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion1" href="#b2">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="b2" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(3) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion1" href="#b3">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="b3" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(4) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion1" href="#b4">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="b4" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(5) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion1" href="#b5">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="b5" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(6) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion1" href="#b6">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="b6" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(7) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion1" href="#b7">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="b7" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(8) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion1" href="#b8">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="b8" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(9) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion1" href="#b9">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="b9" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(10) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion1" href="#b10">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="b10" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


							</div>
							<!-- //아코디언영역 -->
						</div>
						<div class="tab-pane fade" id="a2">
							<!-- 아코디언영역 -->
							<div class="panel-group" id="accordion2">
								<!-- 항목(1) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion2" href="#c1">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="c1" class="panel-collapse collapse in">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>
								<!-- 항목(2) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion2" href="#c2">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="c2" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(3) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion2" href="#c3">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="c3" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(4) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion2" href="#c4">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="c4" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(5) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion2" href="#c5">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="c5" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(6) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion2" href="#c6">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="c6" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(7) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion2" href="#c7">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="c7" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(8) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion2" href="#c8">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="c8" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(9) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion2" href="#c9">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="c9" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(10) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion2" href="#c10">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="c10" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


							</div>
							<!-- //아코디언영역 -->
							
						</div>
						<div class="tab-pane fade" id="a3">
							<!-- 아코디언영역 -->
							<div class="panel-group" id="accordion3">
								<!-- 항목(1) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion3" href="#d1">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="d1" class="panel-collapse collapse in">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>
								<!-- 항목(2) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion3" href="#d2">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="d2" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(3) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion3" href="#d3">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="d3" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(4) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion3" href="#d4">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="d4" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(5) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion3" href="#d5">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="d5" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(6) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion3" href="#d6">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="d6" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(7) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion3" href="#d7">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="d7" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(8) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion3" href="#d8">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="d8" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(9) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion3" href="#d9">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="d9" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(10) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion3" href="#d10">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="d10" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


							</div>
							<!-- //아코디언영역 -->
							
						</div>
						<div class="tab-pane fade" id="a4">
							<!-- 아코디언영역 -->
							<div class="panel-group" id="accordion4">
								<!-- 항목(1) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion4" href="#e1">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="e1" class="panel-collapse collapse in">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>
								<!-- 항목(2) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion4" href="#e2">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="e2" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(3) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion4" href="#e3">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="e3" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(4) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion4" href="#e4">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="e4" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(5) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion4" href="#e5">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="e5" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(6) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion4" href="#e6">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="e6" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(7) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion4" href="#e7">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="e7" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(8) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion4" href="#e8">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="e8" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(9) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion4" href="#e9">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="e9" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(10) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion4" href="#e10">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="e10" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


							</div>
							<!-- //아코디언영역 -->
							
						</div>
						<div class="tab-pane fade" id="a5">
							<!-- 아코디언영역 -->
							<div class="panel-group" id="accordion5">
								<!-- 항목(1) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion5" href="#f1">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="f1" class="panel-collapse collapse in">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>
								<!-- 항목(2) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion5" href="#f2">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="f2" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(3) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion5" href="#f3">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="f3" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(4) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion5" href="#f4">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="f4" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(5) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion5" href="#f5">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="f5" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(6) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion5" href="#f6">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="f6" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(7) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion5" href="#f7">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="f7" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(8) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion5" href="#f8">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="f8" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(9) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion5" href="#f9">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="f9" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(10) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion5" href="#f10">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="f10" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


							</div>
							<!-- //아코디언영역 -->
							
						</div>
						<div class="tab-pane fade" id="a6">
							<!-- 아코디언영역 -->
							<div class="panel-group" id="accordion6">
								<!-- 항목(1) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion6" href="#g1">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="g1" class="panel-collapse collapse in">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>
								<!-- 항목(2) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion6" href="#g2">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="g2" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(3) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion6" href="#g3">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="g3" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(4) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion6" href="#g4">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="g4" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(5) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion6" href="#g5">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="g5" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(6) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion6" href="#g6">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="g6" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(7) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion6" href="#g7">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="g7" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(8) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion6" href="#g8">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="g8" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(9) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion6" href="#g9">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="g9" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


								<!-- 항목(10) -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse"
												data-parent="#accordion6" href="#g10">딱 10분을 남겨두고 반납했어요.
												바로반납 혜택이 제공이 되나요?</a>
										</h4>
									</div>
									<div id="g10" class="panel-collapse collapse">
										<div class="panel-body">바로반납 혜택은 대여시간 30분 초과, 대여 종료시간
											10분 이전 건에 대하여 적용됩니다.</div>
									</div>
								</div>


							</div>
							<!-- //아코디언영역 -->
							
						</div>




















						<div class="tab-pane fade" id="hoogi">
							<table class="table">
								<tbody>
									<tr>
										<td>아주 만족스러운 여행</td>
									</tr>
									<tr>
										<td>차가 좀 후지네요</td>
									</tr>
									<tr>
										<td>이용해서 후기합니다.</td>
									</tr>
									<tr>
										<td>후기해서이용하구요</td>
									</tr>
									<tr>
										<td>카캉아란ㅇ란알ㄴ알ㅇ나</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- //탭화면 -->
				</div>

			</div>


		</div>
		<!-- contain 끝-->
	</div>
	<!--main 끝-->
	
<hr>
	<%@ include file="/WEB-INF/views/inc/footer.jsp"%>
</body>
</html>
