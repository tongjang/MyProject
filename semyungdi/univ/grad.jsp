
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

<title>대학원	</title>
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
		<div class="fund" style="margin-left:8px;">
			<h4 style="margin-top:20px;">대학원</h4>
			<p style="margin-bottom:10px;">독창적인 학문연구와 능력을 함양하고 심오한 학술의 이론과 그 응용방법으로 더욱 심도
			 있게 연구·교수하여 지도자적 인격을 갖춤은 물론, 학술 문화발전에 기여할 인재를 양성
			 하는 과정이다<br/>
			 <a href="http://smugrade.semyung.ac.kr/gnuboard4/main.html" target="_blank" title="대학원 바로가기(새창연결)">
			 <img src="<%=context%>/semyungdi/images/btn_go_01.gif" alt="바로가기" style="margin-top:10px;" />
			 </a>
			 </p>
			 <h5>위치 : 문화간 109호</h5>
			 <h5>원장 : 류필조</h5>
			 <h5>전화 : <a href="tel:043-649-1117" class="telephone">043)649-1117</a></h5>
			 
			 <h4 style="margin-top:40px;">교육대학원</h4>
			 <p style="margin-bottom:10px;">지역사회와 국가발전에 기여할 수 있도록 교육에 관한 이론과 실제를 교수 ·연구 하며,현장교육을 선도할 수 있는 전인적 교사와 교육 전문가를 양성하는 과정이다.<br/>
			 <a href="http://smugrade.semyung.ac.kr/gnuboard4/main.html" target="_blank" title="대학원 바로가기(새창연결)">
			 <img src="<%=context%>/semyungdi/images/btn_go_01.gif" alt="바로가기" style="margin-top:10px;"></a></p>
			 <h5>위치 : 문화간 109호</h5>
			 <h5>원장 : 류필조</h5>
			 <h5>전화 : <a href="tel:043-649-1117" class="telephone">043)649-1117</a></h5>
			 
			 <h4 style="margin-top:40px;">경영행정복지대학원</h4>
			 <p style="margin-bottom:10px;">급변하는 세계화, 지방화시대에 기업경영과 선진행정에 관한 새로운 이론과 기법을 연구·교육함으로써 우수한 경영관리자의 양성과 창의력 지도록을 겸비한 유능한 행정관리자를 육성하는 과정이다.<br/>
			 <a href="http://smugrade.semyung.ac.kr/gnuboard4/main.html" target="_blank" title="대학원 바로가기(새창연결)">
			 <img src="<%=context%>/semyungdi/images/btn_go_01.gif" alt="바로가기" style="margin-top:10px;">
			 </a>
			 </p>
			 <h5>위치 : 문화간 103호</h5>
			 <h5>원장 : 정연우</h5>
			 <h5>전화 :<a href="tel:043-649-1118" class="telephone">043)649-1118</a></h5>
			 
			 <h4 style="margin-top:40px;">저널리즘스쿨/대학원</h4>
			 <p style="margin-bottom:10px;">2008년 3월 개교한 세명저널리즘스쿨은 국내 최초로 철저한 실무중심 교육을 통해 예비언론인을 양성하는 대학원입니다.<br/>
			멀티미디어환경에서 종횡무진할 수 있는 실무능력, 폭넓은 인문 사회학적 소양, 그리고 영어 취재능력을 갖춘 인재를 길러, 언론계로 나가는 문을 활짝 열어줄 것 입니다.<br/>
			<a href="http://journalism.semyung.ac.kr/" target="_blank" title="대학원 바로가기(새창연결)">
			 <img src="<%=context%>/semyungdi/images/btn_go_01.gif" alt="바로가기" style="margin-top:10px;">
			 </a>
			 </p>
			 <h5>위치 : 문화간 404호</h5>
			 <h5>원장 : 이봉수</h5>
			 <h5>전화 : <a href="tel:043-649-1499" class="telephone">043)649-1499</a></h5>
		</div>
		
	</div>

	<jsp:include page="/semyungdi/gnb.jsp" ></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>