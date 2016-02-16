
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

<title>졸업</title>
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
			style="width:49%;border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">졸업 학점</a>
		<a href="#;" id="bb" class="smu-list"
			onclick="tapClickFunction('bb');"
			style="width:49%;border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">졸업연기
		</a>
		<a href="#;" id="cc" class="smu-list"
			onclick="tapClickFunction('cc');"
			style="width:49%;border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">조기졸업</a>
		<a href="#;" id="dd" class="smu-list"
			onclick="tapClickFunction('dd');"
			style="width:49%;border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">졸업논문
		</a>
	</div>

	<div class="ui-box" id="uiaa">
		<div class="fund">
			<h4>졸업 학점</h4>
			<p>졸업 학점은 140학점 (한의학과 160학점)이상 취득하여야 하며,교과과정 이수구분에 따라 각기 소요 학점을 취득하여야 한다.</p>

			<h4 style="margin-bottom:30px;">등록 및 이수학기</h4>
			
			<h4>등록금을 납부한 학생은 등록금 반환 기준에 의거 등록금을 반환 받을 수 있다.</h4>
			<p>조기졸업을 제외하고는 8학기이상 등록/이수하여야 한다.<br/>
			(편입, 재입학 인정학기 포함)</p>

			<h4>휴이수구분별 졸업학점 확인</h4>
			<p>홈페이지, 포탈시스템 → 학사행정 → 졸업(진급)→ 졸업요구학점조회 → 졸업요건정보조회에서 확인</p>

			<h4>졸업요구 학점 및 교육과정 문의</h4>
			<p>· 소속 학부 (과) 전공 전화번호 : 홈페이지 ＂대학/ 대학원, 대학＂안내를 참조<br/>
			· 교무연구처 학사관리팀 <a class="telephone" href="043-649-1137">☎ (043) 649-1134, 1137</a>
			</p>
		</div>
	</div>

	<div class="ui-box" id="uibb">
		<div class="fund">
			<h4>자격</h4>
			<p>졸업요건을 충족하고, 8학기 이상 이수한 학생<br />
			※ 졸업결격자, 수료자, 조기졸업신청자는 지원불가</p>
			
			<h4>졸업연기 조건</h4>
			<p>· 재학생의 신분을 유지하며, 반드시 1과목 이상 수강신청<br />
			· 졸업연기 기간 동안 휴학 할 수 없음.<br />
			· 졸업연기 기간 동안 취득한 학점은 성적에 반영.<br />
			· 졸업연기 기간 동안 이수한 1과목 이상의 성적이 F(낙제), N(불합격)인 경우,	2차 졸업연기 신청을 제한</p>
			
			<h4>연기 기간</h4>
			<p>학기 단위로 4회 (2년)까지 신청 가능<br />
			※ 2회부터의 신청은 졸업 연기된 학기 다음 학기의 소정 기간내에 신청</p>

			<h4>신청 절차</h4>
			<p>졸업연기 신청서 작성  → 학과사무실 방문 (학과장 및 지도교수 상담) → 학과사무실 제출  → 교무연구처 (학사관리팀) 접수  → 졸업연기 승인</p>
			<a href="http://www.semyung.ac.kr/insite/files/down/deu_delay_new.hwp" class="telephone">졸업연기 신청서 DOWNLOAD</a>
		</div>
	</div>

	<div class="ui-box" id="uicc">
		<div class="fund">
			<h4>조기졸업 대상자 기준</h4>
			<p>6학기까지 취득학점이 120학점 이상으로, 총 성적 평균평점이 4.2 이상인 자</p>
			
			<h4>조기졸업 신청</h4>
			<p>최종학기 수강신청기간(매학기 수강신청기간)에 소정의 조기졸업신청서를 학부(과)장을 경유하여 교무처에 제출하여야 한다.</p>
			
			<h4>조기졸업 통과자</h4>
			<p>7학기 동안 졸업학점(140학점)을 취득하고 총성적 평균평점이 4.2 이상이며,
			소정의 졸업논문을 통과한 자는 소정의 조기졸업확인서를 학과(부)장을 경유하여
			교무처에 제출하여야 한다.</p>
		</div>
	</div>

	<div class="ui-box" id="uidd">
		<div class="fund">
			<h4>계획서 제출자격</h4>
			<p>6학기를 이수하고, 105학점 이상 취득자 중 재학중인 자</p>
			
			<h4>졸업논문 제출자격</h4>
			<p>7학기를 이수하고 120학점 이상 취득자 중 재학중인 학생</p>
			
			<h4>졸업사정시까지 졸업기준에 결격 사유가 없는자</h4>
			<p>단, 9학기 이상의 재수자는 졸업예정 시기의 졸업학점 취득 가능성을 심사하여 졸업논문 작성 및 제출허가 여부를 결정한다.</p>
			
			<h4 style="margin-bottom:30px;">복수전공자도 위의 상항에 의거, 졸업논문을 제출하여야한다.</h4>
			
			<h4>논문 제출시기 및 방법</h4>
			<p>· 논문은 지정된 규격 및 양식에 맞추어 최종 졸업학기의 10월말 또는 5월 말까지 지도교수를 경유하여 소속 학과장(전공주임)에게 제출하여야 한다.<br/>
			· 논문의 분량은 200자 원고지를 기준으로 인문, 사회계는 50매 이상, 자연계는 20매 이상 또는 이 분량에 해당하는 A4 용지에 PC로 작성함을 원칙으로 한다.</p>

			<h4>불합격자의 처리</h4>
			<p>소정의 전과정을 이수하고도 졸업논문심사에 불합격된 자 또는 논문의 미제출자에게는 학사학위를 수여하지 아니하고,
			수료증만을 수여한다.<br/>
			· 논문불합격자는 2년 이내에 2회에 한하여 재 제출의 기회를 부여한다.<br/>
			· 논문을 재 제출하여 합격하였을 때는 논문심사 결과보고 기준에 준하여 처리하되, 학위수여 시기는 재 제출 학기 졸업일로 한다.
			
			<h4>졸업소요학점 미달자에 대한 조치</h4>
			<p>·논문심사에 합격한 자가 학점부족으로 졸업기준에 미달되어 졸업이 불가능할 경우 논문심사에 합격한 자격을 재학년한 이내에 인정한다.</p>
		</div>
	</div>
	
		<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
		<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>