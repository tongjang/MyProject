
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

<title>미드필더인증제</title>
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
			<h4>미드필더인증제</h4>
			<p>모든 학생이 우리 대학의 소정의 과정(학점이수, 졸업논문합격) 이외에 필수 2개영역(인성교육 및 봉사영역, 상담영역)을 인증받고, 선택 3개영역(외국어, IT, 전공자격)중 1개 영역을 선택하여 일정 기준 이상의 자격을 취득하여 인증 받아야 졸업할 수 있도록 하는 제도</p>
			
			<h4>대상</h4>
			<p>· 2011학년도 신입학자(2013학년도 편입학자) 부터<br/>
			· 외국인 및 총장이 특별히 지정한 자 제외</p>
			
			<h4>인증 영역</h4>
			<p>· 필수 영역 : 인성교육 및 봉사, 상담<br/>
			· 선택 1 영역 : 외국어, IT(전산), 전공자격<br/>
			※ 영역별 세부 인증 기준은 첨부 파일을 참고 (PDF파일)</p>

			<h4>인증 절차</h4>
			<h5>필수 영역</h5>
			<p>· 인성교육 및 봉사영역 : 인성교육 8시간 및 봉사활동 22시간 이상의 활동을 하고 그 결과와 증빙서류 사본을 포탈시스템에 등록하고 그 원본을 봉사지원센터에 제출하여 입력 내용을 승인받는다.<br/>
			· 상담영역(2011, 2012학번 제외) : 2~4학년동안 미드필더설계 및 상담 Ⅲ~Ⅷ과목중 3과목 (1.5학점 이상 취득)<br/>
			※ 단 편입생은 2과목(1학점)이상 취득</p>
			<h5>선택(외국어, IT, 전공자격) 영역</h5>
			<p>학생은 선택 영역 중 하나의 영역을 선택하여 기준 이상의 성적 또는 자격을 취득하고 그 결과와 증빙서류 사본을 포탈시스템에
			등록하고 그 원본을 취업지원처에 제출, 입력내용을 승인 받는다.<br/>
			(2011학년도 1학기는 방문 접수만 가능)</p>
			
			<h4>미인증자의 처리</h4>
			<p>· 외국인유학생 【전체 영역 면제】<br/>
			· 편입학생 【봉사 영역 22시간 면제】<br/>
			· 의료보건계열 학과(한의대, 간호학과, 임상병리학과, 작업치료학과) 【상담영역 면제】</p>

			<h4>문의</h4>
			<p>· 인성교육 및 봉사 영역 관련 : 봉사지원센터 ☎ 043)649-7075<br/>
			· 선택(외국어, IT, 전공관련)영역 관련 : 취업지원처 ☎ 043)649-1192, 1191<br/>
			· 졸업 관련 : 교무연구처 학사관리팀 ☎ 043)649-1134, 1137</p>
			<a class="telephone" href="http://www.semyung.ac.kr/files/down/midfielder/midfielde2.pdf">미드필더인증제 영역별 세부인증 기준 DOWNLOAD</a>
		</div>
	</div>

	<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>