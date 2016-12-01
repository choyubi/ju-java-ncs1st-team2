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
					<a href="${pageContext.request.contextPath}/sub1.do" class="list-group-item"><strong>이용방법</strong></a>
					<a href="${pageContext.request.contextPath}/sub2.do" class="list-group-item"><strong>이용규칙</strong></a>
					<a href="${pageContext.request.contextPath}/sub3.do" class="list-group-item"><strong>차량	정보</strong></a>

				</div>
			</div>
			<!--탭 bar 끝-->

			<div class="col-sm-10">

				<div class="row" id="c">
					<div class="media">
						<img src="${pageContext.request.contextPath}/img/bbs1.png">
					</div>
				</div>
			</div>

				<!-- 회원안내 시작 -->


				<h3>SSC 회원안내</h3>
				연회비 완전무료,시간대 별 대여요금 최대80% 할인 등 쏘카만의 차별화된 회원혜택을 확인해 보세요.
				<table style="width: 970px; border: 1">
					<thead>
						<tr>
							<th class="first">구분</th>
							<th>상세내용</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2" class="first">연 회 비</td>
							<td>무료</td>
						</tr>
						<tr>
							<td colspan="2" class="first">가입조건</td>
							<td>만 21세 이상,운전면허 취득 후 1년 이상 경과</td>
						</tr>
						<tr>
							<td colspan="2" class="first">필수조건</td>
							<td>본인 명의 운전면허증 및 신용/체크카드 등록</td>
						</tr>
						<tr>
							<td colspan="2" class="first">대여요금</td>
							<td>차종별 차등 할인</td>
						</tr>
						<tr>
							<td colspan="2" class="first">가입혜택</td>
							<td>신규 가입 시 할인 쿠폰 지급</td>
						</tr>
						<tr>
							<td colspan="2" class="first">이용혜택</td>
							<td>이용 횟수에 따라 다양한 혜택 지급</td>
						</tr>
					</tbody>
				</table>
				<ul>
					<li>가입 및 이용 혜택은 당사 정책에 따라 변경될 수 있습니다.</li>
				</ul>
				<!-- // 회원 안내 끝-->

				<br> <br>


				<!-- 전국 SSC존 대여/주행요금 안내 -->

				<h4>전국 SSC존 대여/주행요금 안내</h4>
				타면된다,SSC! 자유롭게 신나는 드라이빙을 즐기세요!
				<table style="width: 970px; border: 1">
					<thead>
						<tr>
							<th rowspan="2">차종</th>
							<th rowspan="2">모델</th>
							<th rowspan="2">기준 대여요금<br />(10분기준)
							</th>
							<th colspan="2">SSC만을 위한<span style="color: #f63325">
									특별할인!</span></th>
							<th rowspan="2">주행요금</th>
							<br />(주행거리 Km당)

						</tr>
						<tr>
							<th class="strong">주중</th>
							<th>주말</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th rowspan="3" class="first">경형</th>
							<td class="tal">모닝</td>
							<td>1,200원</td>
							<td class="strong">720원~</td>
							<td>960원~</td>
							<td>160원~</td>
						</tr>
						<tr>
							<td class="tal">스파크</td>
							<td>1,200원</td>
							<td class="strong">720원~</td>
							<td>960원~</td>
							<td>160원</td>
						</tr>
						<tr>
							<td class="tal">넥스트스파크</td>
							<td>1,200원</td>
							<td class="strong">720원~</td>
							<td>960원~</td>
							<td>160원</td>
						</tr>
						<tr>
							<th class="first">경형B</th>
							<td class="tal">레이</td>
							<td>1,250원</td>
							<td class="strong">720원~</td>
							<td>1,000원~</td>
							<td>170원</td>
						</tr>
						<tr>
							<th rowspan="2" class="first">소형</th>
							<td class="tal">프라이드</td>
							<td>1,430원</td>
							<td class="strong">850원~</td>
							<td>1,140원~</td>
							<td>170원</td>
						</tr>
						<tr>
							<td class="tal">엑센트</td>
							<td>1,430원</td>
							<td class="strong">850원~</td>
							<td>1,140원~</td>
							<td>170원</td>
						</tr>
						<tr>
							<th rowspan="3" class="first">준중형</th>
							<td class="tal">K3</td>
							<td>1,580원</td>
							<td class="strong">950원~</td>
							<td>1,260원~</td>
							<td>170원</td>
						</tr>
						<tr>
							<td class="tal">아반떼</td>
							<td>1,580원</td>
							<td class="strong">950원~</td>
							<td>1,260원~</td>
							<td>170원</td>
						</tr>
						<tr>
							<td class="tal">아반떼AD</td>
							<td>1,580원</td>
							<td class="strong">950원~</td>
							<td>1,260원~</td>
							<td>170원</td>
						</tr>
						<tr>
							<th rowspan="5" class="first">중형</th>
							<td class="tal">K5(LPG)</td>
							<td>2,160원</td>
							<td class="strong">1,300원~</td>
							<td>1,730원~</td>
							<td>140원</td>
						</tr>
						<tr>
							<td class="tal">LF 쏘나타</td>
							<td>2,160원</td>
							<td class="strong">1,300원~</td>
							<td>1,730원~</td>
							<td>180원</td>
						</tr>
						<tr>
							<td class="tal">LF 쏘나타(LPG)</td>
							<td>2,160원</td>
							<td class="strogn">1,300원~</td>
							<td>1,730원~</td>
							<td>140원</td>
						</tr>
						<tr>
							<td class="tal">SM5</td>
							<td>2,160원</td>
							<td class="strong">1,300원~</td>
							<td>1,730원~</td>
							<td>180원</td>
						</tr>
						<tr>
							<td class="tal">말리부</td>
							<td>2,660원</td>
							<td class="strong">1,600원~</td>
							<td>2,130원~</td>
							<td>180원</td>
						</tr>
						<tr>
							<th rowspan="2" class="first">대형</th>
							<td class="tal">그랜저HG</td>
							<td>4,160원</td>
							<td class="strong">2,080원~</td>
							<td>2,910원~</td>
							<td>190원</td>
						</tr>
						<tr>
							<td class="tal">그랜저HG(LPG)</td>
							<td>4,160원</td>
							<td class="strong">2,080원~</td>
							<td>2,910원~</td>
							<td>160원</td>
						</tr>
						<tr>
							<th rowspan="5" class="first">SUV</th>
							<td class="tal">올란도(경유)</td>
							<td>3,000원</td>
							<td class="strong">1,800원~</td>
							<td>2,400원~</td>
							<td>180원</td>
						</tr>
						<tr>
							<td class="tal">티볼리(경유)</td>
							<td>3,000원</td>
							<td class="strong">1,800원~</td>
							<td>2,400원~</td>
							<td>160원</td>
						</tr>
						<tr>
							<td class="tal">트랙스(경유)</td>
							<td>3,000원</td>
							<td class="strong">1,800원~</td>
							<td>2,400원~</td>
							<td>160원</td>
						</tr>
						<tr>
							<td class="tal">스포티지(경유)</td>
							<td>3,000원</td>
							<td class="strong">1,800원~</td>
							<td>2,400원</td>
							<td>160원</td>
						</tr>
						<tr>
							<td class="tal">QM3(경유)</td>
							<td>3,000원</td>
							<td class="strong">1,800원~</td>
							<td>2,400원~</td>
							<td>150원</td>
						</tr>
						<tr>
							<th rowspan="2" class="first">승합차</th>
							<td class="tal">카니발 11인승(경유)</td>
							<td>3,360원</td>
							<td class="strong">1,830원~</td>
							<td>2,560원~</td>
							<td>220원</td>
						</tr>
						<tr>

							<td class="tal">그랜드 스타렉스(경유)</td>
							<td>3,830원</td>
							<td class="strogn">1,910원~</td>
							<td>3,060원~</td>
							<td>230원</td>
						</tr>
						<tr>
							<th rowspan="7" class="first">수입차</th>
							<td class="tal">피아트500</td>
							<td>3,330원</td>
							<td class="strong">1,660원~</td>
							<td>2,660원~</td>
							<td>210원</td>
						</tr>
						<tr>
							<td class="tal">미니쿠퍼</td>
							<td>3,500원</td>
							<td class="strong">1,750원~</td>
							<td>2,800원~</td>
							<td>220원</td>
						</tr>
						<tr>
							<td class="tal">미니5도어</td>
							<td>3,660원</td>
							<td class="string">1,830원~</td>
							<td>2,920원~</td>
							<td>220원</td>
						</tr>
						<tr>
							<td class="tal">프리우스</td>
							<td>3,660원</td>
							<td class="strong">1,830원~</td>
							<td>2,920원~</td>
							<td><strike>180원</strike>할인가 99원</td>
						</tr>
						<tr>
							<td class="tal">비틀(경유)</td>
							<td>3,830원</td>
							<td class="strong">1,910원~</td>
							<td>3,060원~</td>
							<td>160원</td>
						</tr>
						<tr>
							<td class="tal">BMW 520D(경유)</td>
							<td>7,330원</td>
							<td class="strogn">3,660원~</td>
							<td>5,860원~</td>
							<td>170원</td>
						</tr>
						<tr>
							<td class="tal">BMW X3(경유)</td>
							<td>7,500원</td>
							<td class="strong">3,750원~</td>
							<td>6,000원~</td>
							<td>190원</td>
						</tr>
					</tbody>
				</table>
				<br /> <span style="color: #333">※ 주중/주말 기준</span> <br /> <span
					style="color: #333">.</span> <span style="color: #333">주중 -
					일 19:00 ~ 금 19:00 / 주중 심야 - 00:00 ~ 06:00</span> <br /> <span
					style="color: #333">.</span> <span style="color: #333">주말 -
					금 19:00 ~ 일 19:00 / (공휴일 및 당사 지정 성수기 포함)</span>
				<ul>
					<br />
					<li>요금표의 SSC회원 특별할인 금액은 최저가 기준으로 지역마다 다를 수 있습니다.</li>
					<li>대여요금은 지역별,성수기/비수기 등에 따라 탄력요금제로 운영하므로,위에 안내된 요금은 결제 시 요금과
						다를 수 있습니다.</li>
					<li>주행요금은 차량 이용 후 실제 주행거리에 따라 부과됩니다.주행요금 계산기로 예상 비용을 미리
						확인해보세요.<a href="#" class="oil"> 주행요금 계산기</a>
					</li>
					<li>편도/D2D(도어 투 도어) 서비스 이용 시에는 차량 회송비용 등을 고려한 별도 요금이 추가 과금될 수
						있습니다.</li>
					<li>대여요금 및 주행요금은 당사 내부정책/유가변동에 따라 변경될 수 있습니다.</li>
				</ul>
				<div
					style="margin-top: 30px; display: block; overflow: hidden; width: 100%;"></div>
			</div>
			<!-- 테이블 영역 끝 -->
		</div>
		<!-- contain 영역 끝 -->
	</div>
	<!-- 메인 영역 끝-->










	<!-- 푸터 -->

	<%@ include file="/WEB-INF/views/inc/footer.jsp"%>

</body>
</html>
