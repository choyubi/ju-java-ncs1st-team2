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

			<!--탭 bar 끝-->

			<div class="col-sm-offset-3 col-sm-6"
				style="margin-top: 100px; height: 300px;">
				<div>
					<form role="form">
						<fieldset>
							<legend>
								<strong>로그인</strong>
							</legend>
							<div class="form-group">
								<label for="user_id">아이디</label> <input type="text" id="user_id"
									class="form-control" placeholder="아이디를 입력하세요." />
							</div>
							<div class="form-group">
								<label for="user_pw">비밀번호</label> <input type="password"
									id="user_pw" class="form-control" placeholder="비밀번호를 입력하세요." />
							</div>
							<div class="pull-right">
								<button type="button" class="btn btn-warning">로그인</button>
								<a href="join.do" class="btn btn-danger">회원가입</a> <a
									href="join3.do" class="btn btn-info">ID/PW 찾기</a>
							</div>
						</fieldset>
					</form>
				</div>

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

