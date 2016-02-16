
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

<title>병무안내</title>
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
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">대학생 병무행정</a>
		<a href="#;" id="bb" class="smu-list"
			onclick="tapClickFunction('bb');"
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">전역 후 복학</a>
		<a href="#;" id="cc" class="smu-list"
			onclick="tapClickFunction('cc');"
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">국외여행/유학</a>
		<a href="#;" id="dd" class="smu-list"
			onclick="tapClickFunction('dd');"
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">육군기술병모집</a>
		<a href="#;" id="ee" class="smu-list"
			onclick="tapClickFunction('ee');">학군단</a> <a href="#;" id="ff"
			class="smu-list" onclick="tapClickFunction('ff');">병무관련사이트</a>
	</div>

	<div class="ui-box" id="uiaa">
		<div class="fund">
			<h4>대학생 병무행정(군입영)</h4>
			<h5>징병검사</h5>
		</div>
		<div class="table_style3">
			<table summary="징병검사에 관한 표로써, 대상,통지서 송달 등의 정보를 제공합니다.">
				<colgroup>
					<col width="98">
					<col width="619">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">대상</th>
						<td class="text_left">
							<ul>
								<li>19세가 되는 해의 1.1~12.31일 사이 출생자</li>
								<li>20세 이상자 중 징병검사 연기사유가 해소된자</li>
								<li>기타 병역법령에 의하여 검사를 받아야할 자</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th scope="row">통지서 송달</th>
						<td class="text_left">
							<ul>
								<li>징병검사 통지서는 검사 20일전까지 본인에게 송달</li>
								<li>징병검사 통지서는 일반우편으로 송달하되 반송자 등 부득이한 경우 방문 교부함</li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="fund" style="margin-top: 10px;">
			<h5>신체등위 판정</h5>
		</div>
		<div class="table_style3">
			<table summary="징병검사에 관한 표로써, 대상,통지서 송달 등의 정보를 제공합니다.">
				<colgroup>
					<col width="98">
					<col width="619">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">합격</th>
						<td class="text_left">
							<ul>
								<li>1급~3급(현역) : 신체가 건강하거나 이상이 있더라도 정도가 가벼워 현역복무에 적합한 경우</li>
								<li>4급(보충역) : 질병이나 심신장애가 있어 현역복무는 곤란하나 공익근무에 적합한 경우</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th scope="row">불합격</th>
						<td class="text_left">
							<ul>
								<li>5급(제2국민역) : 질병·심신장애 정도가 심해 현역 및 공익근무도 부적합한 경우</li>
								<li>6급(병역면제) : 질병∙심신장애 정도가 아주 심해 모든 병역의무의 감당이 곤란한 경우</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th scope="row">재검사</th>
						<td class="text_left">
							<ul>
								<li>7급(1년이내종결) : 현재 질병치료중이어서 일정기간 경과 후 재검사가 필요한 경우</li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="fund" style="margin-bottom: 40px;">
			<h4>재학생 입영연기</h4>
			<h5>개요</h5>
			<p>대학에 재학중(휴학포함)인 사람에 대하여 각급 학교별 제한연령까지 입영을 연기함으로써 학업의 계속성과 병역의무
				이행시기를 선택할 수 있는 편익을 보장하는 제도</p>
			<h5>개요</h5>
			<p>현역병 또는 공익근무요원 소집대상자료 학교별 제한연령까지 당해 학교의 학적을 보유하고 있는 사람</p>
			<h5>학교별 제한연령</h5>
			<div class="table_style">
				<table summary="징병검사에 관한 표로써, 대상,통지서 송달 등의 정보를 제공합니다.">
					<colgroup>
						<col width="65">
						<col width="65">
						<col width="65">
						<col width="65">
						<col width="96">
						<col width="64">
						<col width="64">
						<col width="97">
						<col width="130">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" colspan="2">전문대학</th>
							<th scope="col" colspan="3">대학</th>
							<th scope="col" colspan="3">대학원</th>
							<th scope="col">사법연수원</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2년제</td>
							<td>3년제</td>
							<td>4년제</td>
							<td>6년제</td>
							<td>의, 치, 한의과</td>
							<td>4학기제</td>
							<td>5, 6 학기제</td>
							<td>의, 치, 한의과</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>22세</td>
							<td>23세</td>
							<td>24세</td>
							<td>26세</td>
							<td>27세</td>
							<td>26세</td>
							<td>27세</td>
							<td>28세</td>
							<td>26세</td>
						</tr>
					</tbody>
				</table>
			</div>
			<h5>입영연기절차</h5>
			<p>
				· 학생 본인이 개별적으로 연기원을 제출하지 않고 대학에서 입학생 전원의 "학적보유자 명부"를 충북지방병무청으로 송부함.<br />
				· 대학 재학중인(휴학생포함) 학생은 졸업시까지 군 입영이 자동적으로 연기됨.
			</p>
			<h4>병무행정 서비스 안내</h4>
			<h5>장교 입영(학군사관, 3사관, 군장학생, 기타)</h5>
			<p>문의 : 세명대학교 학군단(043-649-1377, 1378)</p>
			<h5>사병 입영(부사관, 병, 카투사, 특기병, 기타)</h5>
			<p>
				· ARS : 1588-9090(전국어디서나 시내요금)<br /> · 인터넷 : http://www.mma.go.kr :
				병무청 홈페이지<br /> · 각종 팜플렛 : 대학 예비군연대 비치(학생회관 2층 203호)<br />
			</p>
		</div>
	</div>

	<div class="ui-box" id="uibb">
		<div class="fund">
			<h4>재학생 예비군 복무</h4>
			<h5>개요</h5>
			<p>
				· 세명대학교 내에는 "대학직장예비군연대"가 편성되어 있음<br /> · 군 복무를 마친 학생은 대학 예비군연대에
				"예비군대원 편성신청서"를 제출해야 함<br /> · 대학 예비군연대에 편성된 학생은 예비군훈련이 단축되는 혜택이 있음
			</p>
			<h5>예비군 편성대상 및 기간</h5>
			<p>
				· 장교, 부사관 : 해당 계급별 상이(40세~63세)<br /> · 병 : 군 복무를 마친 다음날부터 만 8년이 되는
				해의 12월 31일까지 편성
			</p>
			<h4>예비군 훈련시간</h4>
		</div>
		<div class="table_style">
			<table
				summary="예비군 훈련시간에 관한 표로써, 전역년차,1~4년차,5~6년차,7~8년차 등의 정보를 제공합니다.">
				<colgroup>
					<col width="131">
					<col width="227">
					<col width="221">
					<col width="136">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">전역년차</th>
						<th scope="col">1~4년차</th>
						<th scope="col">5~6년차</th>
						<th scope="col">7~8년차</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">일반 예비군</th>
						<td style="text-align: left; padding-left:5px;">동원지정자 : 28시간(입영훈련)<br>동원미지정자 : 36시간
						</td>
						<td>20시간</td>
						<td>훈련없음</td>
					</tr>
					<tr>
						<th scope="row">학생 예비군</th>
						<td colspan="2">8시간</td>
						<td>훈련없음</td>
					</tr>
				</tbody>
			</table>
			· 대학 예비군연대에 편성된 학생만 8시간 훈련받음
		</div>

		<div class="fund">
			<h5>예비군 숙지사항</h5>
			<p>군복무를 마친 학생예비군은 개강 후 2주 이내에 대학예비군연대에 전입신청을 해야함(신입생, 복학생, 편입생
				전원)</p>
			<h5>예비군 서비스 안내</h5>
			<p>· 예비군연대 위치 : 학생회관 2층 203호실 · 예비군연대 전화번호 : 043-649-1398, 1399 /
				FAX번호 : 046-649-1389 · 학교 홈페이지 Q&A게시판</p>
		</div>
	</div>







	<div class="ui-box" id="uicc">
		<div class="fund" style="margin-bottom: 40px;">
			<h4>병역미필학생 국외여행 및 유학신고 안내</h4>
			<h5>국외여행허가 대상자 축소(‘07.1.1)</h5>
			<p>
				· 24세 이하 병역미필자는 별도의 허가없이 국외여행 가능 · 국외여행 허가 대상자<br /> &nbsp;25세
				이상자로서 제1국민역,보충역으로서 소집되지 아니한 사람, &nbsp;공익근무요원, 전문연구요원, 산업기능요원,
				공중보건의사, 국제협력의사, &nbsp;공익법무관, 공익수의사 및 예비역의 장교 또는 부사관으로서 &nbsp;의무종사기간을
				마치지 아니한 사람
			</p>
			<h5>귀국보증인제도 전면폐지 (‘05.7.1)</h5>
			<br />
			<h5>병무상담</h5>
			<p>
				· ARS : 1588-9090(전국어디서나 시내요금)<br /> · 인터넷 : www.mma.go.kr
			</p>
		</div>
	</div>

	<div class="ui-box" id="uidd">
		<div class="fund">
			<h4>육군 유급전문병 모집</h4>
			<h5>복무기간</h5>
			<p>36개월 (사병 의무기간 포함) : 의무복무기간 23월~18월 (사병) + 연장복무기간 13월~18월 (하사)</p>
			<h5>지원자격</h5>
			<p>
				· 연령 : 지원서 접수년도 기준 18세 이상 28세 이하<br /> · 학력 : 고등학교 졸업 이상의 학력소지자<br />
				· 신체등위 : 징병검사 결과 1~3급의 현역병 입영대상자<br /> · 모집계열별 관련자격·면허를 취득한 사람<br />
				· 모집계열 : 박격포, 포병, 차량운전, 기계, 정비, 전자/통신, 정보/전산분야
			</p>
			<h5>선발기준</h5>
			<p>
				· 1차 전형 : 자격·면허, 전공<br /> · 2차 전형 : 면접, 신체등위, 가산 점(경력, 자격증 소지 등)
			</p>
			<h5>급여 및 특전</h5>
			<p>
				· 급여 : 월 120만원 수준( 장려수당 월60만원 수준 별도지급)<br /> · 특전 : 장교/부사관/군무원 진출시
				우대, 취업지원, 학위취득 부여
			</p>
			<h5>모집시기 : 매월(병무청홈페이지참조)</h5>
			<p>
				· 홈페이지 : www.mma.go.kr<br /> · 충북지방병무청 육군모집병안내 : (043) 270-1248,
				1249
			</p>

		</div>
	</div>

	<div class="ui-box" id="uiee">
		<div class="fund" style="margin-bottom: 40px;">
			<h4>학생군사교육단 ( R.O.T.C )</h4>
			<h5>연혁</h5>
			<p>· ’93. 9. 1 : 제 183학군단 창설(육일명 제28호)<br />
			 · ’96. 2.29 : 학군사관 후보생 제34기 임관(20명)<br />
			  · ’07. 2.28 : 학군사관 후보생 제 45기 임관(26명)<br />
			  · 총 12개기 235명 임관</p>
			<h5>임무</h5>
			<p>· 학군사관 후보생 군사교육 / 훈육<br />
			 · 군 위탁생 / 군 장학생 관리ㆍ일반대학생 병무상담<br /> 
			 · 우수인력 모집홍보 / 획득 (학군ㆍ군 장학생)</p>
			<h5>학군사관 후보생</h5>
			<p>· 획득 <br />
			&nbsp;- 지원자격 : 4년제 대학교 2학년 남자 재학생<br />
			 &nbsp;- 지원시기 : 3~5월<br />
				&nbsp;- 선발요소</p>
			<div class="table_style">
				<table
					summary="학군사관 후보생에 관한 표로써, 계,고교내신성적,체력검정,면접,인성검사,신원조회 등의 정보를 제공합니다.">
					<colgroup>
						<col width="101">
						<col width="102">
						<col width="102">
						<col width="102">
						<col width="102">
						<col width="102">
						<col width="101">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">계</th>
							<th scope="col">고교내신성적</th>
							<th scope="col">체력검정</th>
							<th scope="col">면접</th>
							<th scope="col">인성검사</th>
							<th scope="col">신원조회</th>
							<th scope="col">신원조회</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1000</th>
							<td>300</td>
							<td>200</td>
							<td>300</td>
							<td>200</td>
							<td colspan="2">합격,불합격</td>
						</tr>
					</tbody>
				</table>
				<p>
					· 체력검정 : 1.5Km 달리기, 윗몸일으키기, 팔굽혀펴기<br /> <br /> · 군사교육 : 재학 중 학군단
					교내교육 및 학군교 입영훈련을 수료 후 졸업과 동시에 (육군) 소위로 임관
				</p>
				<table summary="군사교육에 관한 표로써, 구분,동계입영훈련,하계입영훈련,교내교육 등의 정보를 제공합니다.">
					<colgroup>
						<col width="101">
						<col width="102">
						<col width="102">
						<col width="102">
						<col width="102">
						<col width="102">
						<col width="101">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" rowspan="2">구분</th>
							<th scope="col">2학년</th>
							<th scope="col" colspan="3">3학년</th>
							<th scope="col" colspan="2">4학년</th>
						</tr>
						<tr class="bold_none">
							<th class="borLeft" scope="col">동계입영훈련</th>
							<th scope="col">하계입영훈련</th>
							<th scope="col">교내교육</th>
							<th scope="col">동계입영훈련</th>
							<th scope="col">하계입영훈련</th>
							<th scope="col">교내교육</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">시기</th>
							<td>1월</td>
							<td>7~8월</td>
							<td>1.2학기</td>
							<td>1월</td>
							<td>7~8월</td>
							<td>1.2학기</td>
						</tr>
						<tr>
							<th scope="row">기간</th>
							<td>2주</td>
							<td>4주</td>
							<td>88H(주4~6H)</td>
							<td>2주</td>
							<td>4주</td>
							<td>88H(주4~6H)</td>
						</tr>
						<tr>
							<th scope="row">비고</th>
							<td>동계방학<br>기간중
							</td>
							<td>하계방학<br>기간중
							</td>
							<td>대학수업<br>고려편성
							</td>
							<td>동계방학<br>기간중
							</td>
							<td>하계방학<br>기간중
							</td>
							<td>대학수업<br>고려편성
							</td>
						</tr>
					</tbody>
				</table>
			</div>

			<p>
				· 혜택<br> &nbsp;- 대학교 ROTC 장학금 전원지급<br> &nbsp;- ROTC 중앙회
				장학금 지급(우수자)<br> &nbsp;- 장교 후보생 피복 / 위생구 지급<br> &nbsp;- 군사학
				과목 학점 인정(학기별 2학점 총 8학점)<br> &nbsp;- 자질배양 교육을 통한 全人(8방미인)교육<br>
				&nbsp;- TOEIC, 영어회화, 전산, 한자, 운전면허증, 태권도
			</p>

			<h5>군장학생</h5>
			<p>
				· 획득<br /> - 지원자격 : 4년제 대학교 1. 2. 3학년 남자 재학생<br /> - R지원시기 : 8~9월<br />
				- 선발요소
			</p>
			<div class="table_style">
				<table
					summary="군장학생에 관한 표로써, 계,학년,필기고사,대학성적,체력검정,면접,인성검사,신원조회 등의 정보를 제공합니다.">
					<caption>군장학생</caption>
					<colgroup>
						<col width="89">
						<col width="89">
						<col width="89">
						<col width="89">
						<col width="89">
						<col width="89">
						<col width="89">
						<col width="89">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">계</th>
							<th scope="col">학년</th>
							<th scope="col">필기고사</th>
							<th scope="col">대학성적</th>
							<th scope="col">체력검정</th>
							<th scope="col">면접</th>
							<th scope="col">인성검사</th>
							<th scope="col">신원조회</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row" rowspan="2">1000</th>
							<td>1학년</td>
							<td>400</td>
							<td>100</td>
							<td>300</td>
							<td>200</td>
							<td rowspan="2" colspan="2">합격,불합격</td>
						</tr>
						<tr>
							<td>2.3학년</td>
							<td>300</td>
							<td>200</td>
							<td>300</td>
							<td>200</td>
						</tr>
					</tbody>
				</table>
				체력검정 : 1.5Km 달리기, 윗몸일으키기, 팔굽혀펴기, 신체검사(종합판정 3급 이상 합격)
			</div>
			<p>
				· 혜택<br /> - 졸업후 육군 제3사관 학교에서 12주 교육, 수료후 육군 소위로 임관(학사사관)
			</p>
			<p>
				· 군 장학금 지급(등록금 범위내)<br /> - 학군사관 후보생 지원시 가산점 부여
			</p>
			<p>
				· 장교 복무기간<br /> - 3년 + 군 장학금 수혜기간(4년)=7년<br /> - 학군사관 동시합격자 : 6년 4개월
			</p>
			<h5>학사/여군 사관 후보생 : '07년 부터 욱군본부에서 전담</h5>
			<br />
			<h5>문의처</h5>
			<p>
				· 제 183(세명대) 학생군사교육단<br /> &nbsp;TEL : (043)649-1377, FAX :
				(043)644-1830
			</p>
		</div>
	</div>

	<div class="ui-box" id="uiff">
		<div class="festival">
				<a href="http://www.mma.go.kr/kor/index.html"
					target="_blank"><img src="<%=context %>/semyungdi/images/img_site_01.gif"
						alt="병무청 바로가기"></a>
				<a href="http://www.mnd.go.kr/" target="_blank"><img
						src="<%=context %>/semyungdi/images/img_site_02.gif" alt="대한민국 국방부 바로가기"></a>
				<a href="http://www.army.mil.kr/" target="_blank"><img
						src="<%=context %>/semyungdi/images/img_site_03.gif" alt="대한민국 육군 바로가기"></a>
				<a href="http://www.navy.mil.kr/"
					target="_blank"><img src="<%=context %>/semyungdi/images/img_site_04.gif"
						alt="대한민국 해군 바로가기"></a>
				<a href="http://www.airforce.mil.kr/"
					target="_blank"><img src="<%=context %>/semyungdi/images/img_site_05.gif"
						alt="대한민국 공군 바로가기"></a>
				<a href="http://www.police.go.kr/main.html"
					target="_blank"><img src="<%=context %>/semyungdi/images/img_site_06.gif"
						alt="사이버경찰청 바로가기"></a>
		</div>
	</div>

	<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>