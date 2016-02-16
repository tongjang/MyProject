
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

<title>특별학점</title>
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
			<h4>특별학점 대상과목</h4>
			<p>기초토익(99분반)</p>
			
			<h4>특별학점 인정 범위 (재학중 1회에 한함)</h4>
			<p>· 기초토익 : TOEIC 성적(550점 이상) 2년 이내의 인증서</p>
			
			<h4>특별학점 신청서 제출</h4>
			<p>· 특별학점신청서를 작성하여(TOEIC 성적 인증서) 제출<br/>
			· 인증서 점수에 따라 B0이상 학점부터 차등 부여</p>

			<h4>유의사항</h4>
			<p>· 인증서 및 자격증 제출로 1개 교과목 성적에 적용 : 전학년을 통하여 각1회에 한하여 인정됨<br/>
			· 특별학점을 인정받기 위해서는 해당 학기에 특별학점 적용 교과목을 수강신청 하여야 함<br/>
			· 특별학점 적용 이전에 이미 취득한 교과목의 학점은 특별학점으로 인정받을 수 없음</p>
		</div>
	</div>

	<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>