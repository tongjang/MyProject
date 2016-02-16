
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

<title>자퇴 · 제적</title>
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
			style="width:49%;border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">자퇴</a>
		<a href="#;" id="bb" class="smu-list"
			onclick="tapClickFunction('bb');"
			style="width:49%;border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">제적
		</a>
	</div>

	<div class="ui-box" id="uiaa">
		<div class="fund">
			<h4>자퇴</h4>
			<p>· 부득이한 사유로 인하여 학업을 포기하고자 할 경우 자퇴원을 제출할 수 있다.<br />
			· 양식 교부 및 수령 : 학부(과) 전공 사무실<br />
			· 준비물 : 본인 도장, 보호자 동의여부 확인(보호자 도장) 통장사본(보호자) 및 등록금 납입영수증 (등록금 반환 대상자에 한함)<br />
			· 작성 및 상담 : 자퇴원 작성, 담당 지도교수 면담, 보호자 동의 여부 확인등<br />
			· 자퇴원 제출 : 교무연구처 학사관리팀<br />
			· 유의사항 : 도서관에 미 반납한 도서가 있을 경우 반납 후 자퇴원을 제출하여야 한다</p>

			<h4>자퇴시 등록금 반환</h4>
			<h5>등록금을 납부한 학생은 등록금 반환 기준에 의거 등록금을 반환 받을 수 있다.</h5>
			<p>· 학기 개시일부터 30일 경과전 : 수업료의 6분의 5 해당금액<br />
			· 학기 개시일 30일 경과한 날로부터 60일 경과 전 : 수업료의 3분의 2 해당금액<br />
			· 학기 개시일 60일 경과한 날로부터 90일 경과 전 : 수업료의 2분의 1 해당금액<br />
			· 학기 개시일 90일 경과 후 : 반환하지 않음<br />
			· 공통 : 입학금 제외(반환되지 않음)</p>

			<h4>휴학생이 자퇴하는 경우의 등록금 반환은 등록금 반환 기준에 준하되, 휴학일을 기준으로 한다.</h4>
			<div class="scholar_download">
				<a href="http://www.semyung.ac.kr/insite/files/down/jatae_2012_new.pdf" class="telephone">자퇴원 DOWNLOAD</a><br/>
				<a href="http://www.semyung.ac.kr/insite/files/down/2011_return_new.pdf" class="telephone">납입금반환신청서 DOWNLOAD</a>
			</div>
		</div>
	</div>

	<div class="ui-box" id="uibb">
		<div class="fund">
			<h4>제적</h4>
			<p>· 휴학기간이 만료된 자로 다음 등록기간내에 복학하지 아니한 자 (미복학제적)<br />
			· 등록기간내에 등록을 아니한 자(미등록제적)<br />
			· 타 대학에 입학 (편입학 포함)한 자<br />
			· 재학년한이 수업년한의 2배를 경과하여도 소정의 학점을 취득하지 못한 자<br />
			  ※ 다만 장애로 인하여 장애지원센터(☎ <a class="phone" href="tel:043-649-7119">043-649-7119</a>)의 요청에 의한 경우는 제외
			- 재학년한은 수업년한의 2배를 초과할 수 없다. 다만, 휴학기간은 재학년한에
			포함되지 않는다.<br />
			- 수업년한 : 4년(8학기) [한의학과는 6년(예과 2년, 본과4년)] 및 편입학생의 재학년한은
			본 대학교에서 수업하여야 할 년한의 2배를 초과할 수 없다.<br />
			· 본 대학교에 이미 제출된 서류가 허위 또는 변조된 사실이 발견된 자<br />
			· 성적이 열등하거나 품행이 불량하여 성업의 가망이 없다고 인정된 자<br />
			· 학사경고를 연속 3회 또는 통산 4회를 받은 자</p>
		</div>
	</div>
	
		<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
		<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>