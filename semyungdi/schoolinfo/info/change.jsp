
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

<title>전과 · 복수전공</title>
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
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">전공</a>
		<a href="#;" id="bb" class="smu-list"
			onclick="tapClickFunction('bb');"
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">복수전공
			
		</a> <a href="#;" id="cc" class="smu-list"
			onclick="tapClickFunction('cc');"
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">연계전공
			</a>
	</div>

	<div class="ui-box" id="uiaa">
		<div class="fund">
			<h4>지원대상</h4>
			<p>1학년 또는 2학년 과정 이수자 중 전과(부) 희망자</p>

			<h5>지원자격</h5>
			<p>전과 (부)는 1회에 한하며, 전과 (부)가 허용된 이후에 다시 번복 할 수 없으며 학칙에 의한 징계처분을 받은 사실이 없어야 한다.</p>

			<h4>지원절차</h4>
			<p>· 인터넷신청 : 학교 홈페이지, 포탈시스템(로그인)다음학사행정다음학적사항다음전과(부) 신청<br/>
			· 방문 신청 : 현소속 학과장 면담다음전과(부)지원학과장 면담다음전과(부)지원 학과 원서 제출</p>

			<h4>시험시간표 공고</h4>
			<p>시험실시 1~2주전 학교 홈페이지 공고 (배정 요청 교양 과목)</p>

			<h4>전과(부)의 제한(허용범위)</h4>
			<p>· 편입학생은 전과 (부)를 제한한다.<br/>
			· 의학계열 (한의예, 한의학, 간호학과, 임상병리학과, 작업치료학과)로의 전과(부)는 불허한다.<br/>
			· 학부(과),전공 정원의 20% 범위 이내에서 허용한다. 다만, 외국인유학생 및 장애학생은 전과여석을 적용하지 않는다.<br/>
			  ※ 장애학생의 경우 장애지원센터(☎ 043-649-7119)로 문의 바랍니다
			</p>

			<h4>심사기준</h4>
			<p>
				· 지원자가 모집인원을 초과하는 경우 전체 성적순으로 심사하며, 특정 학부(과)의 경우 별도의 시험에 응시하여야 함
			</p>

			<h4>학점 인정 및 잔여과정이수</h4>
			<p>
				전과(부)를 허가 받은 자는 전입학과의 교육과정에 따라 취득학점을 이수구분(영역)별로 인정 받고, 잔여과정은 전입 학과에서 요구하는 소정의 과정을 이수하여야 한다.<br/>
				※ 전과(부)이전의 취득성적 중 인정 받지 못한 학점은 일반선택으로 변경하여 졸업학점에 포함된다.
			</p>

			<h4>전과(부)문의</h4>
			<p>
				· 소속 학부(과) 전공 전화번호 : 홈페이지 “대학 / 대학원, 대학” 안내를 참조
				· 교무연구처 학사관리팀 ☎ (043) 649-1134, 1137
			</p>
			<a href="http://www.semyung.ac.kr/files/down/change/paper_02_new.hwp">전과(부)원서 DOWNLOAD</a> 
		</div>
	</div>

	<div class="ui-box" id="uibb">
		<div class="fund">
			<h4>신청기간</h4>
			<p>매학기 말 [ 1학기- 6월말, 2학기-12월말 ]</p>

			<h4>신청대상</h4>
			<p>2학년 이상 재학생 중 복수(부)전공 희망자</p>
			
			<h4>일반 학부(과) 및 임상병리학과에서 타 학부(과), 전공을 복수(부)전공으로 이수</h4>
			<p>복수전공, 부전공 이수가능【단, 임상병리학과의 경우 주전공 이수학점 기준은 단일전공과 동일하게 70학점이상】</p>
			
			<h4>간호학과에서 타 학부(과), 전공을 복수(부)전공으로 이수</h4>
			<p>복수전공 이수는 불가능, 부전공 이수가능</p>

			<h4>한의과대학(한의예, 한의학과)에서 타 학부(과), 전공을 복수(부)전공으로 이수</h4>
			<p>복수전공, 부전공 이수 불가능</p>
			
			<h4>대상학부(과)</h4>
			<p>· 모든 학부에 개방<br/>
			· 단, 한의예(학)과, 간호학과, 임상병리학과, 작업치료학과로의 복수(부)전공은 제외(불가)<br/>
			· 복수(부)전공 신청 후 잔여학기 동안 복수(부)전공 이수 불가로 판단 시 최종 승인에서 제외
			편입 학자의 경우 복수전공 신청을 제한 할 수 있다.</p>
			
			<h4>제한사항수</h4>
			<p>· 복수(부)전공 신청 후 잔여학기 동안 복수(부)전공 이수 불가로 판단 시 최종 승인에서 제외<br/>
			※ 편입 학자의 경우 복수전공 신청을 제한 할 수 있다.</p>
			
			<h4>신청 및 포기 절차</h4>
			<p>· 인터넷 신청 : 홈페이지, 포탈시스템(로그인) 학사행정 학적사항 복수(부)전공신청/포기<br/>
			· 방문신청 : 제1전공 학부(과)에서 복수(부)전공 신청(포기)원 수령하여 승인(학부(과)장)을 득한 후, 복수(부)전공 학부(과)에 제출<br/>
			※신청이 승인된 자는 승인된 다음 학기 수강신청 시기부터 제2전공 신청(이수) 가능</p>
			
			<h4>이수학점</h4>
			<p>· 복수전공 : 제1전공 및 복수전공에서 35학점 이상의 전공을 이수하여야 하며, 중도 포기시에는 제1전공 이수학점 (학부(과)별로 70∼75학점)을 이수하여야 한다. (단, 임상병리학과는 제1전공 70학점, 2전공 35학점 이수)<br/>
			· 부전공 : 제1전공에서는 제1전공 이수학점 (학부(과)별로 70∼85학점)을 이수하여야 하며, 부전공 학과에서 21학점 이상의 전공을	이수하여야 한다.<br/>
			· 복수 (부)전공 중도포기자의 이수학점에 대하여는 일반선택 과목으로 인정</p>
			
			<h4>참고사항</h4>
			<p>· 실험실습을 필요로 하는 학과에서 복수전공 이수시 실험실습비를 본인에게 부담시킬 수 있다.<br/>
			· 제2전공의 수강신청 및 이수는 제2전공 학과장의 지도를 받아야 하며, 제2전공 학과에서 이수를 지정하는 교과목이 있을 경우 이를
			이수하여야 한다.<br/>
			· 복수전공 신청자는 제1, 2전공의 전공 이수기준을 모두 충족하고, 졸업논문 (종합시험, 실기발표 포함)을 각각 통과하여야 복수전공
			학위를 수여한다.</p>
			
			<h4>복수(부)전공 문의</h4>
			<p>· 소속 학부(과) 전공 전화번호 : 홈페이지 ＂대학/ 대학원, 대학＂안내를 참조<br/>
			· 교무연구처 수업학적과 ☎ (043) 649-1134, 1137</p>
			<div class="scholar_download">
				<a href="http://www.semyung.ac.kr/insite/files/down/scholarship_2014_1.hwp"><img src="<%=context%>/semyungdi/images/btn_download_01.gif" alt="장학금 규정 및 시행세칙 DOWNLOAD"></a>
				<a href="http://www.semyung.ac.kr/insite/files/down/job_janghak_2013_1.hwp"><img src="<%=context%>/semyungdi/images/btn_download_02.gif" alt="취업률 제고 장학금 기준 DOWNLOAD"></a>
				<a href="http://www.semyung.ac.kr/insite/files/down/job_janghak_2013_1.hwp"><img src="<%=context%>/semyungdi/images/btn_download_02.gif" alt="취업률 제고 장학금 기준 DOWNLOAD"></a>
				<a href="http://www.semyung.ac.kr/insite/files/down/job_janghak_2013_1.hwp"><img src="<%=context%>/semyungdi/images/btn_download_02.gif" alt="취업률 제고 장학금 기준 DOWNLOAD"></a>
			</div>
		</div>
	</div>

		<div class="ui-box" id="uicc">
			<div class="fund">
				<div class="table_style">
					<h4>연계전공</h4>
					<p>별도의 입학정원 및 학과 신설 없이, 2개 이상의 학과(부) 또는 전공이 연계하여 구성한 융,복합 형태의 새로운 전공교육 과정</p>

					<h4>연계전공 운영현황</h4>
					<div class="table_style">
					<table summary="연계전공 운영현황 표">
									<colgroup>
										<col>
										<col>
										<col>
										<col>
									</colgroup>
									<thead>
										<tr>
											<th scope="col">전공명</th>
											<th scope="col">참여 학부(과) 전공</th>
											<th scope="col">주관 학과(전공)</th>
											<th scope="col">학위명</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th class="bLft0" scope="row">중국통상학</th>
											<td>중국어학과<br>글로벌경영학부 무역학</td>
											<td>무역학</td>
											<td>경영학사</td>
										</tr>
										<tr>
											<th class="bLft0" scope="row">e-Book디자인․제작학</th>
											<td>디지털콘텐츠창작학과<br>융합디자인학부 산업시각디자인학</td>
											<td>디지털콘텐츠창작학과</td>
											<td>출판학사</td>
										</tr>
										<tr>
											<th class="bLft0" scope="row">고령친화융복합학</th>
											<td>사회복지학과<br>건축공학과<br>생활체육학과</td>
											<td>사회복지학과</td>
											<td>고령친화융복합학사</td>
										</tr>
									</tbody>
								</table>
					</div>
					
					<h4>신청대상</h4>
					<p>연계전공 이수가 지정된 관련 학과(전공)의 학생을 원칙으로 하되, 타학부(과) 학생도 이수를 승인할수 있다. 단, 한의과대학 학생은 제외.</p>

					<h4>이수 기준</h4>
					<p>· 2학년부터 신청하여 이수 가능 함<br/>
						· 제1전공 및 연계전공 교육과정의 전공과목을 각각 35학점 이상 이수하여야 함<br/>
						(단, 임상병리학과는 제1전공 70학점, 2전공 35학점 이수)</p>

					<h4>신청 및 포기 절차</h4>
					<p>· 복수전공 신청 절차와 동일함<br/>
					· 인터넷 신청 : 포탈시스템(로그인) ☞ 학사행정 ☞ 학적사항 ☞ 복수/부전공 신청<br/>
					· 방문신청 : 소속 학부(과)에서 연계전공 신청서 작성 및 승인(학부(과)장)을 득한 후, 연계전공 학부(과)에 제출<br/>
					신청이 승인된 자는 승인된 다음 학기 수강신청 시기부터 제2전공 신청(이수) 가능</p>
				</div>
			</div>
		</div>

		<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
		<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>