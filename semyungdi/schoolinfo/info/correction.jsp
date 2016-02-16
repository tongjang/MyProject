
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
			<h4>학적부 기재사항 정정</h4>
			<p>학적부에 기록되어 있는 사항 【성명(한글,영문), 주민등록번호, 주소 등】중 변경·수정된 사항에 대해서 학적부 기재사항 정정원 제출<br/>
			<img src="<%=context %>/semyungdi/images/correction1.gif"/>
			※ 우편물(성적 및 등록금고지서) 발송 - 보호자 주소 및 연락처
			</p>
			
			<h4>학적부 기재사항 정정원 처리절차 및 확인</h4>
			<p>· 기초토익 : TOEIC 성적(550점 이상) 2년 이내의 인증서</p>
			
			<h4>특별학점 신청서 제출</h4>
			<p>· 학교 방문시 : 해당 학부(과) 전공사무실에서 원서수령(작성),첨부서류 교무연구처 제출<br/>
			· 인터넷신청시 : 포탈시스템(로그인)다음학사행정다음학적사항다음학적정보 변경 신청 및 제출서류 첨부<br/>
			※ 제출서류 : 정정할 사항을 증명할 수 있는 서류(주민등록 등본 등)<br/>
			※ 팩스 전송번호 : 043-644-6966<br/>
			※ 변경된 내용을 확인할 수 있는 서류 미제출(미첨부)시 처리 불가능<br/>
			<img src="<%=context %>/semyungdi/images/correction2.gif"/>
			</p>

			<h4>학적부 기재사항 정정 문의</h4>
			<p>· 소속 학부(과) 전공 전화번호 : 홈페이지 ＂대학 / 대학원, 대학＂안내를 참조<br/>
			· 교무연구처 학사관리팀 ☎ (043) 649-1134, 1137, 1140</p>
			<a class="telephone" href="http://www.semyung.ac.kr/files/down/correction/paper_09.pdf">학적부기재사항정정 DOWNLOAD</a>
		</div>
	</div>

	<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>