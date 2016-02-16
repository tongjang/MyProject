
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

<title>국제교류안내</title>
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
					style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">국제교류현황</a>
				<a href="#;" id="bb" class="smu-list"
					onclick="tapClickFunction('bb');"
					style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">교내어학연수</a>
				<a href="#;" id="cc" class="smu-list"
					onclick="tapClickFunction('cc');"
					style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">500문장
					인증평가</a> <a href="#;" id="dd" class="smu-list"
					onclick="tapClickFunction('dd');"
					style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">교환학생</a>
				<a href="#;" id="ee" class="smu-list"
					onclick="tapClickFunction('ee');">해외어학연수</a> <a href="#;" id="ff"
					class="smu-list" onclick="tapClickFunction('ff');">국외인턴십</a>
			</div>

			<div class="ui-box" id="uiaa">
				<div class="greeting_img" align="center" style="margin-bottom:5px;">
					<img src="<%=context%>/semyungdi/images/bg_international_01.gif"></img>	
	       	 	</div>
				<div class="fund">
					<h4>해외기관과의 교류 - 13개국 99개 교육기관과 2개의 시·정부</h4>
					<p>
						· 중국 - 장춘중의약대학 외 64개 교육기관 및 2개 시정부<br /> · 미국 - 동부워싱턴대학 외 4개 대학<br />
						· 러시아 - 동시베리아문화예술대학 외 7개 대학<br /> · 호주 - 뉴캐슬대학교 외 2개 대학<br /> · 일본
						- 교토학원대학 외 4개 대학<br /> · 대만 - 명전대학교<br /> · 캐나다 - 브리티시컬럼비아대학<br />
						· 말레이시아 - 쿠알라룸푸르대학 외 2개 대학<br /> · 영국 - 우스터대학<br /> · 필리핀 - 엔더런대학<br />
						· 뉴질랜드 - 와이카토기술대학<br /> · 인도네시아 - UNAS대학<br /> · 몽골 - 에투겐대학교 외 1개
						대학
					</p>

					<h4>국내대학간 교류 - 23개대학</h4>
					<p>충북대학교 외 22개 대학</p>

					<h4>산.관.연.학 교류 체결 기관</h4>
					<p>
						관공서 4, 산업체 244, 연구기관 5, 기타 14<br /> 총 267개 기관
					</p>
				</div>
			</div>

			<div class="ui-box" id="uibb">
				<div class="fund">
					<h4>
						SMU Short English Camp Program <br />(교내어학연수)
					</h4>
					<p style="font-size: 13px; font-weight: bold; margin-bottom: 5px;">기숙 영어 열공 프로젝트</p>
					<p>교내에서 실시하는 실전 서바이벌 영어 기숙 캠프로 우리 재학생을 대상으로 우리 학교내 기숙사에서 기숙을 하며
						공부하는 프로그램
					</p>

					<h4>선발방법</h4>
					<p>· 선착순</p>

					<h4>참가혜택</h4>
					<p>
						· 국외어학연수 및 교환학생 선발 시 가산점 부여<br />
						· 해당 해외어학원 인증서 발급</p>
					<h4>
						Wintec ESP Program<br/>(English for Special Purposes)<br /> (와이카토
						기술대학교 어학연수 프로그램)
					</h4>
					<p style="font-size: 13px; font-weight: bold; margin-bottom: 5px;">뉴질랜드 어학연수를 세명대학교에서∼</p>
					<p>뉴질랜드의 와이카토 기술 대학교 어학연수과정을 교내에서 진행하여 현지의 언어연수를 그대로 경험할 수 있는
						프로그램
					</p>

					<h4>선발방법</h4>
					<p>· 토익 700점 이상자</p>
				</div>
			</div>

			<div class="ui-box" id="uicc">
				<div class="fund">
					<h4>
						Five Hundred Sentences Program <br />(500문장 인증평가)
					</h4>
					<p style="font-size: 13px; font-weight: bold; margin-bottom: 5px;">외국어 500문장만 알면 취업걱정 끝!</p>
					<p>각 언어별(영어, 일어, 중국어)로 500문장씩 선별하여 집중 훈련 하고 숙달 시킴으로서 우리 학생들의
						외국어를 향상시키고자 하는 프로그램
					</p>

					<h4>응시방법</h4>
					<p>· 500문장 인증평가실(문화관 306호)에서 수시응시 가능</p>

					<h4>참가혜택</h4>
					<p>· 위세광명포인트 부여, 졸업인증제의 외국어영역 인증</p>
				</div>
			</div>

			<div class="ui-box" id="uidd">
				<div class="fund">
					<h4>
						Exchange Student Program <br />(자매대학 파견 교환학생 제도)
					</h4>
					<p style="font-size: 13px; font-weight: bold; margin-bottom: 5px;">해외 자매 대학 강의실에서 외국친구들과 열공하기!!</p>
					<p>해외 자매 대학으로 1학기에서 최대 2학기 동안 파견을 나가 해외 대학에서 외국친구들과 함께 공부를 하는 프로그램
					</p>

					<h4>지원자격</h4>
					<p>
						· 본교생으로 4학기 이상 등록한 자<br /> · 전 학년 평균평점 3.00 이상한 자<br /> · 해당
						자매대학에서 요구하는 어학능력을 갖춘 자
					</p>

					<h4>선발방법</h4>
					<p>
						· 1차 서류전형<br /> · 2차 구술면접
					</p>

					<h4>현재까지 파견된 대학</h4>
					<p>
						· 일본 : 교토학원대학, 오사카 YMCA국제전문학교<br /> · 중국 : 장춘대학, 대련외국어학원, 대련대학,
						목단강사범학원, 하북과기대<br /> · 말레이시아 : 쿠알라룸푸르대학<br /> · 필리핀 : 엔더런대학<br />
						· 러시아 : 동시베리아문화예술대학
					</p>
				</div>
			</div>

			<div class="ui-box" id="uiee">
				<div class="fund">
					<h4>
						Short-term Language Training Program <br />(해외단기어학연수)
					</h4>
					<p style="font-size: 13px; font-weight: bold; margin-bottom: 5px;">해외에서 외국어실력 확∼늘리기</p>
					<p>하계방학 중 1개월 이하로 국외 자매대학 또는 기관에서 해당 언어의 어학연수를 받는 프로그램
					</p>

					<h4>지원자격</h4>
					<p>
						· 본교에서 2학기 이상 등록한 자<br /> · 전체학기 평균평점이 2.5 이상인 자
					</p>

					<h4>선발방법</h4>
					<p>
						· 학업성적, 외국어성적, 이수학기 등형<br /> · 외국유학생 멘토 활동 및 500문장 인증평가 참여자에게 가산점
						부여
					</p>
				</div>
			</div>

			<div class="ui-box" id="uiff">
				<div class="fund">
					<h4>국외인턴십 프로그램</h4>
					<p>학생들의 취업현장 적응력을 높이기 위하여 방학 또는 학기 중 기업체 또는 산업기관 등의 장에서 실습업무에
						참여하여 실무를 체험하고 학점을 이수하는 프로그램</p>

					<h4>국외인턴십 참가 신청대상</h4>
					<p>
						· 기업에서 인턴십 교육을 통하여 현장실무교육을 이수하는 경우<br /> · 정부지원 프로그램에 참가하는 경우
					</p>

					<h4>교육과정 평성 및 취득학점</h4>
					<div class="table_style">
					<table summary="교육과정 편성 및 취득학점 정보를 제공합니다.">
						<colgroup>
							<col width="15%">
							<col width="15%">
							<col width="25%">
							<col width="30%">
							<col width="25%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col" colspan="2">구분</th>
								<th scope="col">교과목명</th>
								<th scope="col">실습기간</th>
								<th scope="col">취득학점</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td rowspan="6" class="bd_bt">국외</td>
								<td rowspan="2">계절제</td>
								<td>국외인턴십 I</td>
								<td>160시간(최소 4주) 이상</td>
								<td>전공 3학점</td>
							</tr>
							<tr>
								<td>국외 인턴십Ⅱ</td>
								<td>240시간(최소 6주) 이상</td>
								<td>전공 6학점</td>
							</tr>

							<tr class="second">
								<td rowspan="4">학기제</td>
								<td>국외 인턴십Ⅲ</td>
								<td>240시간(최소 6주) 이상</td>
								<td>전공 6학점</td>
							</tr>
							<tr class="second">
								<td>국외 인턴십Ⅳ</td>
								<td>360시간(최소 9주) 이상</td>
								<td>전공 9학점</td>
							</tr>

							<tr class="second">
								<td>국외 인턴십Ⅴ</td>
								<td>480시간(최소 12주) 이상</td>
								<td>전공 12학점</td>
							</tr>

							<tr class="second">
								<td>국외 인턴십Ⅵ</td>
								<td>600시간(최소 15주) 이상</td>
								<td>전공 15학점</td>
							</tr>
						</tbody>
					</table>
				</div>
				<h4>인턴십 신청시 유의사항</h4>
					<p>
						· 국내·외 인턴십을 통합하여 계절제 1회, 학기제 1회를 신청할 수 있으며, 최대 18학점까지 신청가능
						<br /> · 실습은 1일 8시간, 주 40시간 근무를 원칙으로 함
					</p>
			</div>
		</div>

		<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
		<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>