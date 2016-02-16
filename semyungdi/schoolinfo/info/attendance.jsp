
<%@ page language="java" contentType="text/html; charset=utf-8"
	session="false"%>
<%
	String context = request.getContextPath();
%>

<html>
<head>
<script language="javascript">
	sOS = navigator.systemLanguage;
</script>

<title>출석 · 시험</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport"
	content="width=device-width; initial-scale=1.0; maximum-scale=1.0; minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="apple-touch-icon-precomposed" href="apple-touch-icon.png">
<link rel="stylesheet" type="text/css"
	href="<%=context%>/semyungdi/css/mcommon.css" />
<script type="text/javascript" src="<%=context%>/semyungdi/js/iphone.js"></script>
<script type="text/javascript"
	src="<%=context%>/semyungdi/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=context%>/semyungdi/js/common.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.ui-box').hide();
		$('#uiaa').show();
	});

	function tapClickFunction(id) {
		$('.smu-list').removeClass('on');
		$('#' + id).addClass('on');

		$('.ui-box').hide();
		$('#ui' + id).show();
		return false;
	}
</script>
</head>
<body>
	<jsp:include page="/semyungdi/header.jsp"></jsp:include>
	<div class="smu_tab_link">
		<a href="#;" id="aa" class="smu-list on"
			onclick="tapClickFunction('aa');"
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">시험</a>
		<a href="#;" id="bb" class="smu-list"
			onclick="tapClickFunction('bb');"
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">수험시간
			/ 결석계
		</a> <a href="#;" id="cc" class="smu-list"
			onclick="tapClickFunction('cc');"
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">강의건물
			약자표시</a>
	</div>

	<div class="ui-box" id="uiaa">
		<div class="fund">
			<h4>정기시험</h4>
			<p>중간고사, 기말고사 (반드시 응시해야 함)</p>

			<h5>수시시험</h5>
			<p>기간이 명시되어 있지 않으며 담당교수가 결정하여 수시로 실시</p>

			<h4>시험시간표 공고</h4>
			<p>시험실시 1~2주전 학교 홈페이지 공고 (배정 요청 교양 과목)</p>

			<h4>시험시간표 공고</h4>
			<p>시험실시 1~2주전 학교 홈페이지 공고 (배정 요청 교양 과목)</p>

			<h4>시험 배정 교양 과목 (교양 과목에 한함)</h4>
			<p>
				· 60명 초과 수강강좌 중 시험배정 요청을 한 강좌에 대하여 시험 배정함<br /> · 배정된 시험 시간표의 교양
				교과목은 해당 과목 수업요일의 시간과 동일하게 배정되어 있으므로, 본인이 수강하는 강좌(분반)의 시험시간을 철저히
				확인하여야 함.<br /> · 교양 교과목은 시험시간이 배정된 과목과 시험시간이 배정되지 않은 교과목으로 분류 되므로,
				본인이 수강하는 교과목 강좌(분반)의 시험배정 유무를 확인하여야 함.
			</p>

			<h4>시험 미배정 교양 과목</h4>
			<p>
				시험시간이 배정되지 않은 교양 교과목은 해당 수업시간에 자체적으로 시험을 실시 하므로, 담당교원에게 시험요일 및 시간,
				장소를 필히 확인하여 시험에 응시하여야 함<br /> · 전공 과목 : 해당 수업시간에 자체적으로 시험을 실시함
			</p>

			<h4>장애학생 지원 안내</h4>
			<p>
				· 시험시간 연장<br /> · 장애 보조기기 사용 허용
			</p>

			<h4>유의사항</h4>
			<p>
				· 본인 신분 확인이 가능한 학생증(신분증)을 반드시 지참하여야 함(감독확인시 제시)<br /> · 배정된 시간표를
				정확히 확인하여 해당 교과목 시험장소에서 시험 응시<br /> · 답안지 작성 시 연필로 답안작성 금지(흑색이나 청색
				볼펜 사용)<br /> · 시험 중 부정행위 적발시 학칙에 따른 징계 처리
			</p>
		</div>
	</div>

	<div class="ui-box" id="uibb">
		<div class="fund">
			<h4>수업시간</h4>
			<div class="table_style">
				<table>
					<colgroup>
						<col style="width: 10%;">
						<col style="width: 15%;">
						<col style="width: 20%;">
						<col style="width: 10%;">
						<col style="width: 15%;">
						<col style="width: 30%;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">구분</th>
							<th scope="col">교시</th>
							<th scope="col">시간</th>
							<th scope="col">구분</th>
							<th scope="col">교시</th>
							<th scope="col">시간</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row" rowspan="9" class="bZero">주간</th>
							<td>1교시</td>
							<td>09:30 ~ 10:20</td>
							<th scope="row" rowspan="2">야간</th>
							<td>1 (10)교시</td>
							<td>18:00 ~ 18:45</td>
						</tr>
						<tr>
							<td>2교시</td>
							<td>10:30 ~ 11:20</td>
							<td>2 (11)교시</td>
							<td>18:50 ~ 19:35</td>
						</tr>
						<tr>
							<td>3교시</td>
							<td>11:30 ~ 12:20</td>
							<td colspan="3" rowspan="7" class="alignMid"><span
								class="blt04">대학 학부(과)의 야간수업은 불허하며, 교직과목에 한하여 예외로 한다. <br>
									- 야간수업은 18:00부터 시작됨으로 주간 9교시 강좌와 <br>야간 10교시 강좌의 동시 수강 불가<br>
									- 시험시간은 주야간 공히 50분에 10분 휴식

							</span></td>
						</tr>
						<tr>
							<td>4교시</td>
							<td>12:30 ~ 13:20</td>
						</tr>
						<tr>
							<td>5교시</td>
							<td>13:30 ~ 14:20</td>
						</tr>
						<tr>
							<td>6교시</td>
							<td>14:30 ~ 15:20</td>
						</tr>
						<tr>
							<td>7교시</td>
							<td>15:30 ~ 16:20</td>
						</tr>
						<tr>
							<td>8교시</td>
							<td>16:30 ~ 17:20</td>
						</tr>
						<tr>
							<td>9교시</td>
							<td>17:30 ~ 18:20</td>
						</tr>
					</tbody>
				</table>
			</div>

			<h4>결석계</h4>
			<p style="margin-bottom: 10px;">인정서류 제출기한 : 유고사유 발생 전 또는 부득이한 경우 유고사유 발생일로부터 5일 이내에 증빙서류를 첨부하여	교무연구처로 제출</p>
			<div class="table_style">
				<table>
					<colgroup>
						<col style="width: 45%;">
						<col style="width: 45%;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">내용</th>
							<th scope="col">발급인정 제출서류</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="align_left">1. 직계가족의 경조사 <br> ① 결혼(본인 5일)<br>
								② 회갑 : 해당일<br> ③ 사망 또는 이와 동등한사고 : 3일
							</td>
							<td>청첩장, 사망진단서</td>
						</tr>
						<tr>
							<td class="align_left">2. 3일 이상의 입원 치료기간</td>
							<td>진단서, 입원확인서, 소견서, 수술확인서</td>
						</tr>
						<tr>
							<td class="align_left">3. 징병검사 통지서에 명기된 일수</td>
							<td>징병검사 통지서</td>
						</tr>
						<tr>
							<td class="align_left">4. 교육실습, 야외실습, 학술여행 참가 해당기간</td>
							<td>해당 행사 참가관련 공문</td>
						</tr>
						<tr>
							<td class="align_left">5. 정부기관의 요청에 의한 동원, 특별회합 해당시간</td>
							<td>예비군훈련통지서,<br> 각종 대회참가 관련문서<br> (체육대회 및 선발대회)
							</td>
						</tr>
						<tr>
							<td class="align_left">6. 전공관련분야 자격시험 응시일</td>
							<td>자격시험 응시 수험표</td>
						</tr>
						<tr>
							<td class="align_left">7. 졸업예정자로서 국가 또는 기업체의 채용시험 응시일</td>
							<td>채용시험 응시 수험표</td>
						</tr>
						<tr>
							<td class="align_left">8. 기타 총장이 허가하는 경우(단, 위4,5는 교무연구처장의
								사전승인을 얻어야 함)</td>
							<td>관련서류 심사</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

		<div class="ui-box" id="uicc">
			<div class="fund">
				<div class="table_style">
					<table>
						<colgroup>
							<col style="width: 20%;">
							<col style="width: 30%;">
							<col style="width: 20%;">
							<col style="width: 30%;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">약자 표기</th>
								<th scope="col">강의실 명칭</th>
								<th scope="col">약자 표기</th>
								<th scope="col">강의실 명칭</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>인문</td>
								<td>인문학과</td>
								<td>학생</td>
								<td>교수학생회관</td>
							</tr>
							<tr>
								<td>사회</td>
								<td>사회과학관</td>
								<td>체육</td>
								<td>세명체육관</td>
							</tr>
							<tr>
								<td>공학</td>
								<td>공학관</td>
								<td>문화</td>
								<td>문화관</td>
							</tr>
							<tr>
								<td>이공</td>
								<td>이공학관</td>
								<td>학군</td>
								<td>학군단</td>
							</tr>
							<tr>
								<td>한의</td>
								<td>한의학관</td>
								<td>학술</td>
								<td>학술관</td>
							</tr>
							<tr>
								<td>디자인</td>
								<td>디자인관</td>
								<td>RC</td>
								<td>RC교육관</td>
							</tr>
							<tr>
								<td>전산</td>
								<td>전산정보학관</td>
								<td>비룡관</td>
								<td>비룡학사</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
		<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>