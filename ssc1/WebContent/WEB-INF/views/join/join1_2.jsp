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
						<a href="${pageContext.request.contextPath}/join.do" class="list-group-item"><strong>회원가입</strong></a>
						<a href="${pageContext.request.contextPath}/join3.do" class="list-group-item"><strong>ID/PW 찾기</strong></a>
					</div>
				</div>
				<!--탭 bar 끝-->

				<div id="joinbox" class="col-sm-10">
					<form class="form-horizontal" role="form">
		<fieldset>
			<legend>회원가입</legend>

			<!-- 아이디 입력양식 -->
			<div class="form-group">
				<label id="label" for="user_id" class="col-md-2 control-label">아이디*</label>
				<div class="col-md-4">
					<input type="text" class="form-control" id="user_id" placeholder="아이디를 입력하세요.">
				</div>
				<div class="col-md-1">
					<button class="btn btn-primary">아이디 중복확인</button>
				</div>
			</div>
			<!-- //아이디 입력양식 -->

			<!-- 비밀번호 입력양식 -->
			<div class="form-group">
				<label id="label" for="user_pw" class="col-md-2 control-label">비밀번호*</label>
				<div class="col-md-4">
					<input type="password" class="form-control" id="user_pw" placeholder="비밀번호를 입력하세요.">
				</div>
			</div>
			<!-- //비밀번호 입력양식 -->

			<!-- 비밀번호확인 입력양식 -->
			<div class="form-group">
				<label id="label" for="pw_re" class="col-md-2 control-label">비밀번호확인*</label>
				<div class="col-md-4">
					<input type="password" class="form-control" id="pw_re" placeholder="비밀번호를 입력하세요.">
				</div>
			</div>
			<!-- //비밀번호확인 입력양식 -->

			<!-- 이름 입력양식 -->
			<div class="form-group">
				<label id="label" for="user_name" class="col-md-2 control-label">이름*</label>
				<div class="col-md-2">
					<input type="text" class="form-control" id="user_name">
				</div>
			</div>
			<!-- //이름 입력양식 -->

			<!-- 생년월일 입력양식 -->
			<div class="form-group">
				<label id="label" for="brithday" class="col-md-2 control-label">생년월일*</label>
				<div class="col-md-2">
					<select class="form-control" id="brithday">
						<option>연도</option>
						<option>2016</option>
						<option>2015</option>
						<option>2014</option>
						<option>2013</option>
						<option>2012</option>
						<option>2011</option>
						<option>2010</option>
						<option>2009</option>
						<option>2008</option>
						<option>2007</option>
						<option>2006</option>
						<option>2005</option>
						<option>2004</option>
						<option>2003</option>
						<option>2002</option>
						<option>2001</option>
						<option>2000</option>
						<option>1999</option>
						<option>1998</option>
						<option>1997</option>
						<option>1996</option>
						<option>1995</option>
						<option>1994</option>
						<option>1993</option>
						<option>1992</option>
						<option>1991</option>
						<option>1990</option>
						<option>1989</option>
						<option>1988</option>
						<option>1987</option>
						<option>1986</option>
						<option>1985</option>
						<option>1984</option>
						<option>1983</option>
						<option>1982</option>
						<option>1981</option>
						<option>1980</option>
						<option>1979</option>
						<option>1978</option>
						<option>1977</option>
						<option>1976</option>
						<option>1975</option>
						<option>1974</option>
						<option>1973</option>
						<option>1972</option>
						<option>1971</option>
						<option>1970</option>
						<option>1969</option>
						<option>1968</option>
						<option>1967</option>
						<option>1966</option>
						<option>1965</option>
						<option>1964</option>
						<option>1963</option>
						<option>1962</option>
						<option>1961</option>
						<option>1960</option>
						<option>1959</option>
						<option>1958</option>
						<option>1957</option>
						<option>1956</option>
						<option>1955</option>
						<option>1954</option>
						<option>1953</option>
						<option>1952</option>
						<option>1951</option>
						<option>1950</option>
						<option>1949</option>
						<option>1948</option>
						<option>1947</option>
						<option>1946</option>
						<option>1945</option>
						<option>1943</option>
						<option>1942</option>
						<option>1941</option>
						<option>1940</option>
						<option>1939</option>
						<option>1938</option>
						<option>1937</option>
						<option>1936</option>
						<option>1935</option>
						<option>1934</option>
						<option>1933</option>
						<option>1932</option>
						<option>1931</option>
						<option>1930</option>
					</select>
				</div>
				<div class="col-md-2">
					<select class="form-control" id="brithday">
						<option>월</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
					</select>
				</div>
				<div class="col-md-2">
					<select class="form-control" id="brithday">
						<option>일</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
						<option>13</option>
						<option>14</option>
						<option>15</option>
						<option>16</option>
						<option>17</option>
						<option>18</option>
						<option>19</option>
						<option>20</option>
						<option>21</option>
						<option>22</option>
						<option>23</option>
						<option>24</option>
						<option>25</option>
						<option>26</option>
						<option>27</option>
						<option>28</option>
						<option>29</option>
						<option>30</option>
						<option>31</option>
					</select>
				</div>
			</div>
			<!-- //생년월일 입력양식 -->

			<!-- 이메일 입력양식 -->
			<div class="form-group">
				<label id="label" for="email" class="col-md-2 control-label">이메일*</label>
				<div class="col-md-4">
					<input type="email" class="form-control" id="email">
				</div>
			</div>
			<!-- //이메일 입력양식 -->

			<!-- 주소 입력양식 -->
			<div class="form-group">
				<label id="label" for="address" class="col-md-2 control-label">주소*</label>
				<div class="col-md-2">
					<input type="text" class="form-control" id="address">
				</div>
				<div class="col-md-1">
					<button class="btn btn-primary">우편번호</button>
				</div>
			</div>
			<div class="form-group">
				<label id="label" for="address_2" class="col-md-2 control-label"></label>
				<div class="col-md-4">
					<input type="text" class="form-control">
				</div>
				<div class="col-md-4">
					<input type="text" class="form-control">
				</div>
			</div>
			<!-- //이메일 입력양식 -->

			<!-- 면허 입력양식 -->
			<div class="form-group">
				<label id="label" for="license" class="col-md-2 control-label">운전면허번호*</label>
				<div class="col-md-5">
					<input type="text" class="form-control" id="license">
				</div>
				<div class="col-md-1">
					<button class="btn btn-primary">중복여부 확인</button>
				</div>
			</div>
			

			<!-- 체크박스 입력양식 -->
			<div class="form-group">
				<label id="label" for="checkbox1" class="col-md-2 control-label">
					이메일 알림 받음
				</label>
				<div class="col-md-10">
					<div class="checkbox">
						<label>
							<input id="checkbox1" type="checkbox" value="">
							SSC의 새로운 소식을 이메일로 수신하시겠습니까?
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label id="label" for="radios1" class="col-md-2 control-label">
					주 사용 지역
				</label>
				<div class="col-md-10">
					<label class="checkbox-inline">
						<input type="checkbox" id="inlineCheckbox1" value="option1">서울
					</label>
					<label class="checkbox-inline">
						<input type="checkbox" id="inlineCheckbox2" value="option2">인천/경기
					</label>
					<label class="checkbox-inline">
						<input type="checkbox" id="inlineCheckbox3" value="option3">대구/경북
					</label>
					<label class="checkbox-inline">
						<input type="checkbox" id="inlineCheckbox4" value="option4">부산/경남
					</label>
					<label class="checkbox-inline">
						<input type="checkbox" id="inlineCheckbox5" value="option5">대전/충남
					</label>
					<label class="checkbox-inline">
						<input type="checkbox" id="inlineCheckbox6" value="option6">광주/전라
					</label>
					<label class="checkbox-inline">
						<input type="checkbox" id="inlineCheckbox7" value="option7">제주
					</label>
				</div>
			</div>
			<!-- //체크박스 입력양식 -->

			<div class="col-md-4 col-md-offset-4">
				<a href="${pageContext.request.contextPath}/join.do"><img src="img/prevbutton.jpg" style="height: 37px; width: 104px;"></a>
				 <a href="${pageContext.request.contextPath}/join1_2.do"><img src="img/joinssbutton.jpg"></a>
			</div>



		</fieldset>
	</form>
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
