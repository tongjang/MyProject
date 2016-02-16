 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>발전기금</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="imagetoolbar" content="no"> 
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="apple-touch-icon-precomposed" href="apple-touch-icon.png">
<link rel="stylesheet" type="text/css" href="<%=context%>/semyungdi/css/mcommon.css" />
<script type="text/javascript" src="<%=context%>/semyungdi/js/iphone.js"></script>
<script type="text/javascript" src="<%=context%>/semyungdi/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=context%>/semyungdi/js/common.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
		<jsp:include page="/semyungdi/header.jsp"></jsp:include>
	
      <div class="ui-box">
		<div class="fund">
			<h4>설립취지</h4>
			<p>
			우리 세명대학교는 민송 권영우 박사께서 ‘세상을 밝게 비추는 인재를 양성한다’는 爲世光明을 건학이념으로 하여 1991년 설립하신 
이래, 다양한 맞춤식 교육프로그램, 산학협동 강의제도, 내실있는 취업프로그램 등과 함께 인성함양을 위한 미드필더쉽 프로그램을 
통하여 실용적 학풍을 진작시켜 왔습니다. 그러나 우리 대학이 명문사학으로 한단계 더 도약하기 위해서는 대학의 자구적인 노력이외에도 세명대학교를 사랑하는 여러분들의 많은 관심과 후원이 필요합니다. 이에 우리 세명대학교를 구성하고 있는 모든 분들을 비롯하여 여러 외부 인사들의 격려와 관심 아래 장기적인 비전 제시와 발전의 초석을 다지고자 “세명대학교 발전기금 조성 위원회”를 설치하여 운영하고 있습니다. 세명대학교를 사랑하는 여러분들의 많은 성원 부탁드립니다.<br/><br/><br/>
			</p>
			<h4>기부사업 및 약정안내</h4>
			<h5>사업내용</h5>
			<p>세명대학교 발전기금 조성 운영위원회 사업 내용은 다음과 같습니다.</p>
			<ul class="fund_box01">
				<li class="one">장학금 확충 </li>
				<li class="two">실험실습 기자재 등 학교 시설 확충</li>
				<li class="three">도서관 장서 확충</li>
				<li class="four">기부자가 기타 지정한 사업 용도</li>
			</ul>
			<br/>
			<h5>약정안내</h5>
			<p>기금조성에 뜻이 있으신 분은 먼저 ‘발전기금 약정서'를 다운받아 작성하시어 사무처 재무팀으로 보내주시기 바랍니다. 기부금은 
원하시는 기간에 일시 또는 분할하여 기부하실 수 있습니다. 약정 신청은 다음 중 편하신 방법을 선택하시면 됩니다.</p>
			<ul class="fund_box01">
				<li class="one">직접 방문 제출 ( 본관 1층 사무처 재무팀 )</li>
				<li class="two">FAX로 등록하기 ( FAX : 043) 649-2111 )</li>
				<li class="three">E-mail로 등록하기 ( hun600@semyung.ac.kr )</li>
			</ul>
			<a href="http://www.semyung.ac.kr/files/down/fund/new_fund.pdf"><img src="<%=context%>/semyungdi/images/btn_download_03.gif" alt="약정서 다운로드"/></a><br/><br/>
			<h5>기부에 참여하시면 각종 혜택을 드립니다.</h5>
			<p>발전기금을 기부해주신 모든 분께 아래와 같은 기부자 예우를 해 드리며, 기부금액에 따라 관련 세법에 의거 소득 공제를 받으실 수 
있습니다.</p><br/>
			
		</div>
		
	</div>
    

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>