
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

<title>학생활동</title>
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
					style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">축제</a>
				<a href="#;" id="bb" class="smu-list"
					onclick="tapClickFunction('bb');"
					style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">동아리</a>
				<a href="#;" id="cc" class="smu-list"
					onclick="tapClickFunction('cc');"
					style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">학생사회봉사</a>
				<a href="#;" id="dd" class="smu-list"
					onclick="tapClickFunction('dd');"
					style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">총학생회</a>
				<a href="#;" id="ee" class="smu-list"
					onclick="tapClickFunction('ee');">총대의원회</a> <a href="#;" id="ff"
					class="smu-list" onclick="tapClickFunction('ff');">동아리연합회</a>
			</div>

			<div class="ui-box" id="uiaa">
				<div class="fund">
					<h4>청룡체전</h4>
				</div>
				<div class="festival">
					<img src="<%=context%>/semyungdi/images/img_festival01.jpg"
						alt="축제1" /> <img
						src="<%=context%>/semyungdi/images/img_festival02.jpg" alt="축제2" />
				</div>
				<div class="table_style2">
					<table>
						<thead>
							<tr>
								<th scope="col">구분</th>
								<th scope="col">대학</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row" class="back_fff">시기</th>
								<td class="TL">· 매년 5월</td>
							</tr>
							<tr>
								<th scope="row" class="back_fff">체전종목</th>
								<td class="TL">· 구기종목 : 축구, 농구, 족구, 피구, 발야구<br />· 기타종목 :
									400m계주, 줄다리기, 마라톤
								</td>
							</tr>
							<tr>
								<th scope="row" class="back_fff">먹거리행사</th>
								<td class="TL">· 각 학과 참여<br />· 장소 : 교수ㆍ학생회관 광장
								</td>
							</tr>
							<tr>
								<th scope="row" class="back_fff">전야제행사</th>
								<td class="TL">· 패션디자인학과 패션쇼<br />· 동아리공연<br />· 초청가수공연
								</td>
							</tr>
							<tr>
								<th scope="row" class="back_fff">학과 및 동아리행사</th>
								<td class="TL">· 학과 행사 - 각 학과 이벤트<br />· 동아리공연<br />· 동아리행사
									- 무대 공연, 각 개별 동아리 주관의 게임대회, 작품전시회등을 개최
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="fund">
					<h4>청룡축전</h4>
				</div>
				<div class="festival">
					<img src="<%=context%>/semyungdi/images/img_festival03.jpg"
						alt="축제1" /> <img
						src="<%=context%>/semyungdi/images/img_festival04.jpg" alt="축제2" />
				</div>
				<div class="table_style2">
					<table>
						<thead>
							<tr>
								<th scope="col">구분</th>
								<th scope="col">대학</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row" class="back_fff">시기</th>
								<td class="TL">· 매년 10월</td>
							</tr>
							<tr>
								<th scope="row" class="back_fff">체전종목</th>
								<td class="TL">· 전야제 - 동아리 및 초청연예인 공연<br />· 세명가요제. 본교 재학생
									참여<br />· 동아리 공연 및 초청가수 공연
								</td>
							</tr>
							<tr>
								<th scope="row" class="back_fff">먹거리행사</th>
								<td class="TL">· 각 인가동아리 참여</td>
							</tr>
							<tr>
								<th scope="row" class="back_fff">전야제행사</th>
								<td class="TL">· 각 학과별 졸업작품전, 전시회, 학술 대회등을 개최</td>
							</tr>
							<tr>
								<th scope="row" class="back_fff">학과 및 동아리행사</th>
								<td class="TL">· 작품전시회 및 정기공연 등을 개최</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>

			<div class="ui-box" id="uibb">
				<div class="fund" style="margin-bottom: 40px;">
					<h4>동아리</h4>
					<p>
						대학이란 학문연구 및 인격도야에 중점을 두고 있는 것은 물론이지만, 자신의 취미와 적성에 맞는 동아리를 선택하여
						전공분야 이외의 또 다른 분야를 접하고, 새로운 세계를 맛보고 느낄 수 있는 기회가 있어 더욱 보람찬 대학생활을 할 수
						있다.<br />
						<br /> · 동아리현황<br /> - 봉사, 예술, 종교, 취미교양, 종교, 학술, 체육분과 등 6개 분과에 총
						35개 동아리
					</p>
				</div>
				<div class="fund">
					<h4>동아리 목록</h4>
				</div>
				<%-- <div class="greeting_img" align="center">
			<img src="<%=context%>/semyungdi/images/club.jpg"></img>	
          </div> --%>
				<div class="table_style">
					<table summary="분과, 동아리명, 목적 및 취지">
						<caption>동아리 목록</caption>
						<colgroup>
							<col width="88">
							<col width="118">
							<col width="355">
							<col width="155">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">분과</th>
								<th scope="col">동아리명</th>
								<th scope="col">목적 및 취지</th>
								<th scope="col">동아리방</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row" rowspan="3">봉사<br/>분과</th>
								<td>뜨레모아</td>
								<td class="tL">수화 교육과 봉사활동을 통한 장애인의 이해와 배려</td>
								<td>학생회관 509호</td>
							</tr>
							<tr>
								<td>R.C.Y</td>
								<td class="tL">헌혈 캠페인 활동 및 봉사활동</td>
								<td>학생회관 503호</td>
							</tr>
							<tr>
								<td>로타랙트</td>
								<td class="tL">지역 봉사활동을 통한 봉사정신 실천</td>
								<td>학생회관 513호</td>
							</tr>
							<tr>
								<th scope="row" rowspan="6">예술<br/>분과</th>
								<td>버슴새</td>
								<td class="tL">풍물을 통한 전통문화의 이해 전수과 친목도모</td>
								<td>이학관 028호</td>
							</tr>
							<tr>
								<td>4막 3장</td>
								<td class="tL">연극활동을 통한 자아의 발견</td>
								<td>이학관 005호</td>
							</tr>
							<tr>
								<td>I . F</td>
								<td class="tL">공연활동 및 자기개발</td>
								<td>이학관 031호</td>
							</tr>
							<tr>
								<td>ICARUS</td>
								<td class="tL">음악을 통한 회원간의 친목도모와 음악활동</td>
								<td>이학관 030호</td>
							</tr>
							<tr>
								<td>티티새</td>
								<td class="tL">음악 공연을 통한 친목도모</td>
								<td>학생회관 501호</td>
							</tr>
							<tr>
								<td>LABO</td>
								<td class="tL">사진 교육을 통한 이론적 이해화 실습을 통한 실력향상</td>
								<td>학생회관411-1호</td>
							</tr>
							<tr>
								<th scope="row" rowspan="9">취미<br/>교양<br>분과
								</th>
								<td>그림이야기</td>
								<td class="tL">창작활동 통한 친목도모와 취미활동</td>
								<td>학생회관 507호</td>
							</tr>
							<tr>
								<td>매직아이</td>
								<td class="tL">마술을 통한 회원간의 친목도모</td>
								<td>이학관 003호</td>
							</tr>
							<tr>
								<td>서도연구회</td>
								<td class="tL">서도 연구를 통한 전통 정신 계승</td>
								<td>학생회관 504호</td>
							</tr>
							<tr>
								<td>스펙타클</td>
								<td class="tL">건전한 여가선용과 춤을 통한 건전한 대학 동아리 활동</td>
								<td>학생회관 514호</td>
							</tr>
							<tr>
								<td>미리내</td>
								<td class="tL">천문 관측/별자리 학습을 통한 취미 활동</td>
								<td>학생회관 518호</td>
							</tr>
							<tr>
								<td>스펙타클</td>
								<td class="tL">건전한 여가선용과 춤을 통한 건전한 대학 동아리 활동</td>
								<td>학생회관 514호</td>
							</tr>
							<tr>
								<td>미리내</td>
								<td class="tL">천문 관측 동아리</td>
								<td>학생회관 518호</td>
							</tr>
							<tr>
								<td>랩블러스터</td>
								<td class="tL">흑인 음악의 정보공유와 공연</td>
								<td>학생회관 513호</td>
							</tr>
							<tr>
								<td>튕기는사람들</td>
								<td class="tL">기타를 통한 취미활동 공유 및 회원들 간의 친목도모</td>
								<td>이학관 009호</td>
							</tr>
							<tr>
								<th scope="row" rowspan="3">종교<br/>분과</th>
								<td>땅이지</td>
								<td class="tL">올바른 대학생활과 신앙생활을 영위</td>
								<td>학생회관 502호</td>
							</tr>
							<tr>
								<td>D.F.C</td>
								<td class="tL">교내의 건전한 선교문화 정착에 힘씀</td>
								<td>이학관 007호</td>
							</tr>
							<tr>
								<td>C.C.C</td>
								<td class="tL">기독교 신앙을 통한 종교 활동</td>
								<td>학생회관 515호</td>
							</tr>
							<tr>
								<th scope="row" rowspan="4">학술<br/>분과</th>
								<td>AD &amp; ADD</td>
								<td class="tL">광고에 관한 정보공유와 학술연구를 위한 모임</td>
								<td>학생회관 518호</td>
							</tr>
							<tr>
								<td>주파수</td>
								<td class="tL">창업을 위한 전공과 학문을 연구하는 학술활동</td>
								<td>공학관 320호</td>
							</tr>
							<tr>
								<td>큐빅에스아이</td>
								<td class="tL">공간 및 지형 정보에 관한 연구와 개발, 지식 습득</td>
								<td>이공학관 121호</td>
							</tr>
							<tr>
								<td>에스엠유 <br> 스트리트
								</td>
								<td class="tL">쇼핑몰 구축 및 창업활동을 통한 전공 지식 함량</td>
								<td>전산관 301호</td>
							</tr>
							<tr>
								<th scope="row" rowspan="6">체육<br/>분과</th>
								<td>무화회</td>
								<td class="tL">검도를 통한 회원간의 친목도모</td>
								<td>학생회관 508호</td>
							</tr>
							<tr>
								<td>신우회</td>
								<td class="tL">심신수련과 태권도 습득을 위한 회원간의 친목도모</td>
								<td>이학관 022호</td>
							</tr>
							<tr>
								<td>산악부</td>
								<td class="tL">산행을 통한 건강 증진과 회원들 간의 친목도모</td>
								<td>학생회관 413호</td>
							</tr>
							<tr>
								<td>CHAOS</td>
								<td class="tL">축구를 통한 회원간의 친목도모</td>
								<td>이학관 011호</td>
							</tr>
							<tr>
								<td>나락 <br> (Challengers)<br></td>
								<td class="tL">농구를 통한 건강 증진과 친목도모</td>
								<td>학생회관 516호</td>
							</tr>
							<tr>
								<td>세이프티존</td>
								<td class="tL">야구를 통한 건강 증진과 회원들간의 친목도모</td>
								<td>이학관 004호</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="ui-box" id="uidd">
				<div class="greeting_img" align="center">
					<img src="<%=context%>/semyungdi/images/img_body01.png"></img>
				</div>
				<div class="fund" style="margin-bottom: 40px;">
					<h4>총학생회</h4>
					<p>
						총학생회는 학생의 민주적이고 능동적인 자치활동을 신장하여 건전한 학풍을 조성하고 창조적인 학문탐구를 통하여 대학문화의
						창달과 국가발전에 이바지하게 하기 위한 학생대표기구로서 제반 학생자치활동을 수행하고 있다.<br />
						<br /> · 위치 : 교수ㆍ학생회관 210호<br /> · 전화 : 043) 649-1381<br />
						<br />
					</p>
					<h4>집행부의 부서별 업무분장</h4>
					<h5 style="margin-top: 20px;">사무국</h5>
					<p>총학생회의 전반적인 사업에 대해 각 국의 협력을 도모하여 예산에 대한 효율적인 집행과 회계 업무를 담당</p>
					<h5 style="margin-top: 20px;">정책기획국</h5>
					<p>전반적인 총학생회의 방향을 설정하고, 각 사업에 대한 기획을 통해 올바른 사업을 추진</p>
					<h5 style="margin-top: 20px;">여학생국</h5>
					<p>여학우들이 겪는 불편한 사안을 해결하고 여학우의 권익 신장 및 복지증진에 앞장선다.</p>
					<h5 style="margin-top: 20px;">정보통신국</h5>
					<p>총학생회의 전반적인 사업에 대해 각 국의 협력을 도모하여 예산에 대한 효율적인 집행과 회계 업무를 담당</p>
					<h5 style="margin-top: 20px;">문화국</h5>
					<p>올바른 대학 문화 정책에 앞장서며 학우들에게 볼거리 제공과 함께 학술행사 전반을 담당</p>
					<h5 style="margin-top: 20px;">체육국</h5>
					<p>체력 증진을 위한 학우들의 체육 활동을 주관하고 관리하는 업무를 담당</p>
					<h5 style="margin-top: 20px;">사무국</h5>
					<p>총학생회의 전반적인 사업에 대해 각 국의 협력을 도모하여 예산에 대한 효율적인 집행과 회계 업무를 담당</p>
					<h5 style="margin-top: 20px;">복지국</h5>
					<p>대학의 불편한 시설과 사항들에 대해 학우들의 의견을 수렴하여 학우들이 편안하고도 안정된 학교생활을 누릴 수
						있도록 앞장선다.</p>
					<h5 style="margin-top: 20px;">대외협력국</h5>
					<p>총학생회의 일들을 관리하고 전반적인 학교 업무 관리, 담당 학교의 전반적인 사안이나 총학생회의 활동 사항에
						대해 대자보, 현수막, 자료집, 유인물 등을 통해 학우들에게 알리는 업무 담당</p>
				</div>
			</div>

			<div class="ui-box" id="uicc">
				<div class="fund">
					<h4>세명대학교 학생 사회봉사활동</h4>
				</div>
				<div class="table_style2">
					<table>
						<tbody>
							<tr>
								<th scope="row" class="back_fff" width="80px;">목적</th>
								<td class="TL">우리대학교는 진리, 창의와 함께 ‘봉사’를 교훈으로 하고 있으며, 3대
									교육목표의 하나로 ‘인성교육’을 설정하여 사회에 대한 봉사와 협력정신을 갖춘 전인적 인간육성에 노력하고 있으며,
									이러한 목표 실현의 일환으로 다양한 봉사활동을 계획하고 있음.</td>
							</tr>
							<tr>
								<th scope="row" class="back_fff">시기</th>
								<td class="TL">연중</td>
							</tr>
							<tr>
								<th scope="row" class="back_fff">활동 영역</th>
								<td class="TL">· 사회복지 봉사활동(종합자원봉사센터, 복지관, 요양원 등)<br /> ·
									공공기관(시청, 동사무소, 보건소 등 관공서)<br /> · 농촌봉사활동(인근 농가지역 일손돕기 등)<br />
									· 의료봉사(의료혜택이 부족한 인근 지역 의료봉사)<br /> · 해외봉사(본교 자매결연을 맺은 외국대학과
									연계하여 실시)<br /></td>

							</tr>
							<tr>
								<th scope="row" class="back_fff">봉사활동 지원</th>
								<td class="TL">· 학부(과) 단체 30명이상 봉사활동-차량 및 중식제공<br />· 교내
									장학금 신청(모범장학금, 위세광명장학금 등)<br />
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="fund">
					<h4>의료봉사</h4>
				</div>
				<div class="festival" style="margin-bottom: 40px;">
					<img src="<%=context%>/semyungdi/images/img_ community01.jpg"
						alt="축제1" /> <img
						src="<%=context%>/semyungdi/images/img_ community02.jpg" alt="축제2" />
				</div>

				<div class="fund">
					<h4>농촌봉사</h4>
				</div>
				<div class="festival">
					<img src="<%=context%>/semyungdi/images/img_ community03.jpg"
						alt="축제1" /> <img
						src="<%=context%>/semyungdi/images/img_ community04.jpg" alt="축제2" />
				</div>
				<div class="festival">
					<img src="<%=context%>/semyungdi/images/img_ community05.jpg"
						alt="축제1" /> <img
						src="<%=context%>/semyungdi/images/img_ community06.jpg" alt="축제2" />
				</div>
				<div class="festival">
					<img src="<%=context%>/semyungdi/images/img_ community07.jpg"
						alt="축제1" /> <img
						src="<%=context%>/semyungdi/images/img_ community08.jpg" alt="축제2" />
				</div>

			</div>

			<div class="ui-box" id="uiee">
				<div class="fund" style="margin-bottom: 40px;">
					<h4>총대의원회</h4>
					<p>
						총대의원회는 본교 각 학과 재학생들이 직접선거를 통해 선출한 대의원으로 구성된 학생 의결기구로서 학생들의 여론을
						수렴하여 모든 학생자치기구(총학생회, 동아리연합회 등)의 올바른 정책과 노선을 견지할 수 있도록 견제 및 감사를
						시행하기 위한 조직이다. 또한 학생선거관리위원회를 구성하여 선거관리업무를 관장한다.<br />
						<br /> · 위치 : 교수ㆍ학생회관 476호<br /> · 전화 : 043) 649-1382<br />
						<br />
					</p>
					<h4>집행부의 부서별 업무분장</h4>
					<h5 style="margin-top: 20px;">기획부</h5>
					<p>총대의원회 제반 사항을 기획, 조종하며 이와 관련된 사업 관장</p>
					<h5 style="margin-top: 20px;">총무부</h5>
					<p>총대의원회 사무,회계 및 운영에 관한 일체의 행정 업무 관장</p>
					<h5 style="margin-top: 20px;">홍보부</h5>
					<p>총대의원회 활동에 관한 각종 선전 활동 및 여론 조사 업무 관장</p>
					<h5 style="margin-top: 20px;">연대사업부</h5>
					<p>타 학교와의 연대를 통하여 정보, 자료, 소식 등을 교환하는 업무 관장</p>
					<h5 style="margin-top: 20px;">가사부</h5>
					<p>학생 자치기구의 투명성을 보장하기 위해 회계 및 공약, 사업 감사를 한다. 이를 위해 3인의 감사 위원을
						둔다.</p>
				</div>
			</div>

			<div class="ui-box" id="uiff">
				<div class="greeting_img" align="center">
					<img src="<%=context%>/semyungdi/images/img_body03.png"></img>
				</div>
				<div class="fund" style="margin-bottom: 40px;">
					<h4>동아리연합회</h4>
					<p>
						동아리 활동은 여가시간을 이용하여 학술활동과 봉사활동 및 건전한 취미생활을 영위하고 나아가 자기발전을 도모하는 것을
						목적으로, 공통된 관심분야에서 각기 전문성을 키워가며 자신의 삶을 개척하는데 그 의의가 있다. 그래서 동아리연합회는
						동아리의 위상과 성원의 이해 욕구를 대변하고 대외적으로는 타 대학과의 교류를 통해 동아리의 발전과 전문성을 함양하고
						끊임없이 참된 대학문화창달과 왕성한 활동의 실현에 이바지하고 있다.<br />
						<br /> · 위치 : 교수ㆍ학생회관 510호<br /> · 전화 : 043) 649-1383<br />
						<br />
					</p>
					<h4>집행부의 부서별 업무분장</h4>
					<h5 style="margin-top: 20px;">기획부</h5>
					<p>동아리 연합회 전반에 관한 사업계획의 수립과 각 부서 업무의 조정을 관장한다.</p>
					<h5 style="margin-top: 20px;">총무부</h5>
					<p>동아리 연합회의 서무·회계·각종 회의 개최에 관한 업무를 관장한다.</p>
					<h5 style="margin-top: 20px;">관리부</h5>
					<p>동아리 연합회의 부서간의 모든 행사와 학생들의 교내·외 안전관리 및 시설물 확충과 전반적인 관리업무를
						관장한다.</p>
					<h5 style="margin-top: 20px;">홍보부</h5>
					<p>동아리연합회의 제반업무를 일반학생에게 알리는 업무를 관장한다.</p>
					<h5 style="margin-top: 20px;">연대사업부</h5>
					<p>대내적으로 타 자치기구와 학생회 사업을 연계시키고 대외적으로 타 대학의 동아리나 각종 사회 단체와의 유대를
						강화한다.</p>
				</div>
			</div>

			<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
			<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>