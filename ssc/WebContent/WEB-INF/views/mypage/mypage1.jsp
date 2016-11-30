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
					<a href="mypage1.html" class="list-group-item"><strong>내정보</strong></a>
					<a href="mypage2.html" class="list-group-item"><strong>예약내역</strong></a>

				</div>
			</div>
			<!--탭 bar 끝-->




			<!-- 데스크탑: 한 줄에 4개, 태블릿: 한 줄에 2개 씩 배치되도록 그리드 구성 -->
			<div class="row col-sm-10">
				<h1>내 정보</h1>
				<br>
				<br>
				<table class="table table-bordered">
					<tbody>
						<tr>
							<th class="info text-center" width="130">아이디</th>
							<td></td>
						</tr>
						<tr>
							<th class="info text-center">비밀번호</th>
							<td></td>
						</tr>
						<tr>
							<th class="info text-center">이름</th>
							<td></td>
						</tr>
						<tr>
							<th class="info text-center">생년월일</th>
							<td></td>
						</tr>
						<tr>
							<th class="info text-center">이메일</th>
							<td></td>
						</tr>
						<tr>

							<th class="info text-center">주소</th>
							<td></td>
						</tr>
					</tbody>
				</table>
				<br>
				<div class="pull-right">
					<a href="mypage_ok.html" class="btn btn-primary">수정하기</a>

					<script type="text/javascript">
						function button_event() {
							if (confirm("정말 탈퇴하시겠습니까ㅠ_ㅠ??") == true) { //확인
								location.replace("main.html");
							} else { //취소
								return;
							}
						}
					</script>
					<a href="${pageContext.request.contextPath }/user/out_ok.do" class="btn btn-danger" onclick="button_event();">회원탈퇴</a>
				</div>
			</div>
			<!--row 끝 -->

		</div>
		<!-- contain 끝-->
	</div>
	<!--main 끝-->




	<hr>

	<%@ include file="/WEB-INF/views/inc/footer.jsp"%>

</body>
</html>

