
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

</script>
</head>
<body>
	<jsp:include page="/semyungdi/header.jsp"></jsp:include>

	<div class="ui-box" id="uiaa">
		<div class="fund">
			<h4>재입학안내</h4>
			<p>· 자퇴 또는 제적된 자가 재입학을 원할때에는 자퇴 또는 제적된 학부(과) 전공에 여석이 있을 경우
			동일 학년 또는 이하의 학년에 재입학을 허가할 수 있다.<br/>
			· 재입학이 허가된 자는 등록금 이외에 소정의 재입학금을 납부하여야 한다.
			</p>
			
			<h4>재입학 지원자격</h4>
			<h5>자퇴 또는 제적된자 중 학칙 42조 5,6호에 의해 제적된 자를 제외한 제적 학생</h5>
			<p>· 학칙 제42조5호 - 본교에 이미 제출된 서류가 허위 또는 변조된 사실이 발견된 자.<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6호 - 성적이 열등하거나 품행이 불량하여 성업의 가망이 없다고 인정된자.</p>
			<h5>재입학하는 학년은 제적 당시의 재학 학년을 기준으로 한다.</h5>
			<p>단, 이수성적이 현저하게 미달하는 학생은 [학년학기 재이수]를 통하여 재입학 학년을 조정할 수 있다.</p>
			<h5>재입학 희망, 학년ㆍ학기까지의 수료학점의 80%이상을 이수한 경우에만 재입학 지원 가능</h5>
			<p>· 1학년 1학기까지 이수하고 재입학을 희망하는 경우 2학년 1학기 재입학은 불허한다.</p>
			<h5 style="margin-bottom:30px;">유급, 학사경고 누적으로 인한 학사제적자의 경우 제적 처리일로부터 6개월(1개 학 기)이상 경과 전까지는 재입학 지원을 제한 할 수 있다.</h5>
			
			<h4>재입학 제한</h4>
			<p>제적당시 모집단위가 폐지되었을 경우 재입학 할 수 없으며, 명칭변경인 경우에는 재입학 할 수 있다.</p>
			
			<h4>재입학 절차</h4>
			<h5>재입학 원서접수기간</h5>
			<p>연 2회(학사일정 참조)</p>
			<h5>원서교부 및 제출</h5>
			<p>각 학부(과) 전공사무실에서 재입학원 수령, 작성 후 교무연구처 제출<br/>
			· 준비 및 제출서류 : 재입학 원서(전공사무실 비치), 성적증명서, 본인 도장</p>
			<h5>상담 진행</h5>
			<p>포탈시스템 → 학사행정 → 학적관리 재입학 신청(id 문의 : 학사관리팀)<br/>
			- 신청 후 학과에서 유선을 통하여 상담 진행</p>

			<h4>재입학 문의</h4>
			<p>· 소속 학부(과) 전공 전화번호 : 홈페이지 ＂대학 / 대학원, 대학＂안내를 참조<br/>
			교무연구처 학사관리팀<a class="telephone" href="tel:043-649-1137">☎ (043) 649-1134, 1137</a></p>
			<a class="telephone" href="http://www.semyung.ac.kr/files/down/readmission/readmission_document.pdf">학적부기재사항정정 DOWNLOAD</a>
		</div>
	</div>

	<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>